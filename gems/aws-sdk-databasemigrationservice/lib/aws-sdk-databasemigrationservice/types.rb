# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DatabaseMigrationService
  module Types

    # <p>DMS was denied access to the endpoint. Check that the
    #             role is correctly configured.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    AccessDeniedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a quota for an Amazon Web Services account, for example the number of replication instances
    #          allowed.</p>
    #
    # @!attribute account_quota_name
    #   <p>The name of the DMS quota for this Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute used
    #   <p>The amount currently used toward the quota maximum.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum allowed value for the quota.</p>
    #
    #   @return [Integer]
    #
    AccountQuota = ::Struct.new(
      :account_quota_name,
      :used,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.used ||= 0
        self.max ||= 0
      end

    end

    # <p>Associates a set of tags with an DMS resource.</p>
    #
    # @!attribute resource_arn
    #   <p>Identifies the DMS resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN).</p>
    #            <p>For DMS, you can tag a replication instance, an endpoint, or a replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsToResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    AddTagsToResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance
    #            action applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>os-upgrade</code>, <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. You can't undo an
    #            opt-in request of type <code>immediate</code>.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #                  maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #                  requests.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ApplyPendingMaintenanceActionInput = ::Struct.new(
      :replication_instance_arn,
      :apply_action,
      :opt_in_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_pending_maintenance_actions
    #   <p>The DMS resource that the pending maintenance action will be applied to.</p>
    #
    #   @return [ResourcePendingMaintenanceActions]
    #
    ApplyPendingMaintenanceActionOutput = ::Struct.new(
      :resource_pending_maintenance_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthMechanismValue
    #
    module AuthMechanismValue
      # No documentation available.
      #
      DEFAULT = "default"

      # No documentation available.
      #
      MONGODB_CR = "mongodb_cr"

      # No documentation available.
      #
      SCRAM_SHA_1 = "scram_sha_1"
    end

    # Includes enum constants for AuthTypeValue
    #
    module AuthTypeValue
      # No documentation available.
      #
      NO = "no"

      # No documentation available.
      #
      PASSWORD = "password"
    end

    # <p>The name of an Availability Zone for use during database migration.
    #             <code>AvailabilityZone</code> is an optional parameter to the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationInstance.html">
    #                <code>CreateReplicationInstance</code>
    #             </a> operation, and it’s value relates to
    #          the Amazon Web Services Region of an endpoint. For example, the availability zone of an endpoint in the
    #          us-east-1 region might be us-east-1a, us-east-1b, us-east-1c, or us-east-1d.</p>
    #
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #
    #   @return [String]
    #
    AvailabilityZone = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be canceled.</p>
    #
    #   @return [String]
    #
    CancelReplicationTaskAssessmentRunInput = ::Struct.new(
      :replication_task_assessment_run_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_assessment_run
    #   <p>The <code>ReplicationTaskAssessmentRun</code> object for the canceled assessment
    #            run.</p>
    #
    #   @return [ReplicationTaskAssessmentRun]
    #
    CancelReplicationTaskAssessmentRunOutput = ::Struct.new(
      :replication_task_assessment_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CannedAclForObjectsValue
    #
    module CannedAclForObjectsValue
      # No documentation available.
      #
      NONE = "none"

      # No documentation available.
      #
      PRIVATE = "private"

      # No documentation available.
      #
      PUBLIC_READ = "public-read"

      # No documentation available.
      #
      PUBLIC_READ_WRITE = "public-read-write"

      # No documentation available.
      #
      AUTHENTICATED_READ = "authenticated-read"

      # No documentation available.
      #
      AWS_EXEC_READ = "aws-exec-read"

      # No documentation available.
      #
      BUCKET_OWNER_READ = "bucket-owner-read"

      # No documentation available.
      #
      BUCKET_OWNER_FULL_CONTROL = "bucket-owner-full-control"
    end

    # <p>The SSL certificate that can be used to encrypt connections between the endpoints and
    #          the replication instance.</p>
    #
    # @!attribute certificate_identifier
    #   <p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
    #            must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
    #            contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_creation_date
    #   <p>The date that the certificate was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute certificate_pem
    #   <p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_wallet
    #   <p>The location of an imported Oracle Wallet certificate for use with SSL. Example: <code>filebase64("${path.root}/rds-ca-2019-root.sso")</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_owner
    #   <p>The owner of the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute valid_from_date
    #   <p>The beginning date that the certificate is valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute valid_to_date
    #   <p>The final date that the certificate is valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute signing_algorithm
    #   <p>The signing algorithm for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute key_length
    #   <p>The key length of the cryptographic algorithm being used.</p>
    #
    #   @return [Integer]
    #
    Certificate = ::Struct.new(
      :certificate_identifier,
      :certificate_creation_date,
      :certificate_pem,
      :certificate_wallet,
      :certificate_arn,
      :certificate_owner,
      :valid_from_date,
      :valid_to_date,
      :signing_algorithm,
      :key_length,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CharLengthSemantics
    #
    module CharLengthSemantics
      # No documentation available.
      #
      DEFAULT = "default"

      # No documentation available.
      #
      CHAR = "char"

      # No documentation available.
      #
      BYTE = "byte"
    end

    # <p>Describes the last Fleet Advisor collector health check.</p>
    #
    # @!attribute collector_status
    #   <p>The status of the Fleet Advisor collector.</p>
    #
    #   Enum, one of: ["UNREGISTERED", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute local_collector_s3_access
    #   <p>Whether the local collector can access its Amazon S3 bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute web_collector_s3_access
    #   <p>Whether the web collector can access its Amazon S3 bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute web_collector_granted_role_based_access
    #   <p>Whether the role that you provided when creating the Fleet Advisor collector has sufficient permissions
    #               to access the Fleet Advisor web collector.</p>
    #
    #   @return [Boolean]
    #
    CollectorHealthCheck = ::Struct.new(
      :collector_status,
      :local_collector_s3_access,
      :web_collector_s3_access,
      :web_collector_granted_role_based_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified collector doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CollectorNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Fleet Advisor collector.</p>
    #
    # @!attribute collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute collector_name
    #   <p>The name of the Fleet Advisor collector .</p>
    #
    #   @return [String]
    #
    # @!attribute collector_version
    #   <p>The version of your Fleet Advisor collector, in semantic versioning format, for example
    #                   <code>1.0.2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute version_status
    #   <p>Whether the collector version is up to date.</p>
    #
    #   Enum, one of: ["UP_TO_DATE", "OUTDATED", "UNSUPPORTED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A summary description of the Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket that the Fleet Advisor collector uses to store inventory metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute collector_health_check
    #   <p>Describes the last Fleet Advisor collector health check.</p>
    #
    #   @return [CollectorHealthCheck]
    #
    # @!attribute last_data_received
    #   <p>The timestamp of the last time the collector received data, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute registered_date
    #   <p>The timestamp when DMS registered the collector, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The timestamp when you created the collector, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute modified_date
    #   <p>The timestamp when DMS last modified the collector, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute inventory_data
    #   <p>Describes a Fleet Advisor collector inventory.</p>
    #
    #   @return [InventoryData]
    #
    CollectorResponse = ::Struct.new(
      :collector_referenced_id,
      :collector_name,
      :collector_version,
      :version_status,
      :description,
      :s3_bucket_name,
      :service_access_role_arn,
      :collector_health_check,
      :last_data_received,
      :registered_date,
      :created_date,
      :modified_date,
      :inventory_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Briefly describes a Fleet Advisor collector.</p>
    #
    # @!attribute collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute collector_name
    #   <p>The name of the Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    CollectorShortInfoResponse = ::Struct.new(
      :collector_referenced_id,
      :collector_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CollectorStatus
    #
    module CollectorStatus
      # No documentation available.
      #
      UNREGISTERED = "UNREGISTERED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # Includes enum constants for CompressionTypeValue
    #
    module CompressionTypeValue
      # No documentation available.
      #
      NONE = "none"

      # No documentation available.
      #
      GZIP = "gzip"
    end

    # <p>Status of the connection between an endpoint and a replication instance, including
    #          Amazon Resource Names (ARNs) and the last error message issued.</p>
    #
    # @!attribute replication_instance_arn
    #   <p>The ARN of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_arn
    #   <p>The ARN string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The connection status. This parameter can return one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"successful"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"testing"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute last_failure_message
    #   <p>The error message when the connection last failed.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_identifier
    #   <p>The identifier of the endpoint. Identifiers must begin with a letter and must contain only
    #            ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #
    #   @return [String]
    #
    Connection = ::Struct.new(
      :replication_instance_arn,
      :endpoint_arn,
      :status,
      :last_failure_message,
      :endpoint_identifier,
      :replication_instance_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two
    #            consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    #   Enum, one of: ["source", "target"]
    #
    #   @return [String]
    #
    # @!attribute engine_name
    #   <p>The type of engine for the endpoint. Valid values, depending on the
    #            <code>EndpointType</code> value, include <code>"mysql"</code>, <code>"oracle"</code>,
    #             <code>"postgres"</code>, <code>"mariadb"</code>, <code>"aurora"</code>,
    #             <code>"aurora-postgresql"</code>, <code>"opensearch"</code>, <code>"redshift"</code>, <code>"s3"</code>,
    #            <code>"db2"</code>, <code>"azuredb"</code>, <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #            <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>, <code>"docdb"</code>,
    #            <code>"sqlserver"</code>, and <code>"neptune"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name to be used to log in to the endpoint database.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password to be used to log in to the endpoint database.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port used by the endpoint database.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify DatabaseName.
    #         To migrate to a specific database, use this setting and <code>targetDbType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_connection_attributes
    #   <p>Additional attributes associated with the connection. Each attribute is specified as a
    #            name-value pair associated by an equal sign (=). Multiple attributes are separated by a
    #            semicolon (;) with no additional white space. For information on the attributes available
    #            for connecting your source or target endpoint, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html">Working with
    #               DMS Endpoints</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #              DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the endpoint.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_mode
    #   <p>The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is <code>none</code>
    #            </p>
    #
    #   Enum, one of: ["none", "require", "verify-ca", "verify-full"]
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the service access role that you want to use to
    #             create the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute external_table_definition
    #   <p>The external table definition. </p>
    #
    #   @return [String]
    #
    # @!attribute dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other
    #               available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate
    #                   Data to DynamoDB</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    #   @return [DynamoDbSettings]
    #
    # @!attribute s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [S3Settings]
    #
    # @!attribute dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Possible settings include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ServiceAccessRoleArn</code> - The Amazon Resource Name (ARN) used by the service access IAM role.
    #                    The role must allow the <code>iam:PassRole</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BucketName</code> - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows:
    #               <code>ServiceAccessRoleArn=string,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn":
    #               "string", "BucketName": "string", } </code>
    #            </p>
    #
    #   @return [DmsTransferSettings]
    #
    # @!attribute mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html CHAP_Source.MongoDB.Configuration">Endpoint configuration settings
    #               when using MongoDB as a source for Database Migration Service</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [MongoDbSettings]
    #
    # @!attribute kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html CHAP_Target.Kinesis.ObjectMapping">Using object mapping to
    #               migrate data to a Kinesis data stream</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [KinesisSettings]
    #
    # @!attribute kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html CHAP_Target.Kafka.ObjectMapping">Using object mapping
    #               to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    #   @return [KafkaSettings]
    #
    # @!attribute elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for DMS</a> in
    #             the <i>Database Migration Service User Guide</i>.</p>
    #
    #   @return [ElasticsearchSettings]
    #
    # @!attribute neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint.
    #            For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target</a>
    #               in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [NeptuneSettings]
    #
    # @!attribute redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #
    #   @return [RedshiftSettings]
    #
    # @!attribute postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection
    #               attributes when using PostgreSQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html CHAP_Target.PostgreSQL.ConnectionAttrib">
    #                  Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #             <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [PostgreSQLSettings]
    #
    # @!attribute my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html CHAP_Source.MySQL.ConnectionAttrib">Extra connection attributes
    #               when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html CHAP_Target.MySQL.ConnectionAttrib">Extra connection attributes when using a MySQL-compatible database as a target for DMS</a> in
    #             the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [MySQLSettings]
    #
    # @!attribute oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.ConnectionAttrib">Extra connection attributes
    #               when using Oracle as a source for DMS</a> and
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a>
    #             in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [OracleSettings]
    #
    # @!attribute sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html CHAP_Source.SAP.ConnectionAttrib">Extra connection attributes
    #               when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html CHAP_Target.SAP.ConnectionAttrib">Extra connection attributes
    #                   when using SAP ASE as a target for DMS</a> in the <i>Database Migration Service
    #                       User Guide.</i>
    #            </p>
    #
    #   @return [SybaseSettings]
    #
    # @!attribute microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html CHAP_Source.SQLServer.ConnectionAttrib">Extra connection
    #               attributes when using SQL Server as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html CHAP_Target.SQLServer.ConnectionAttrib">
    #               Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [MicrosoftSQLServerSettings]
    #
    # @!attribute ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html CHAP_Source.DB2.ConnectionAttrib">Extra connection attributes
    #               when using Db2 LUW as a source for DMS</a> in the <i>Database Migration Service
    #                   User Guide.</i>
    #            </p>
    #
    #   @return [IBMDb2Settings]
    #
    # @!attribute resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
    #            value for the end of <code>EndpointArn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute doc_db_settings
    #   <p>Provides information that defines a DocumentDB endpoint.</p>
    #
    #   @return [DocDbSettings]
    #
    # @!attribute redis_settings
    #   <p>Settings in JSON format for the target Redis endpoint.</p>
    #
    #   @return [RedisSettings]
    #
    # @!attribute gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #
    #   @return [GcpMySQLSettings]
    #
    CreateEndpointInput = ::Struct.new(
      :endpoint_identifier,
      :endpoint_type,
      :engine_name,
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :extra_connection_attributes,
      :kms_key_id,
      :tags,
      :certificate_arn,
      :ssl_mode,
      :service_access_role_arn,
      :external_table_definition,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings,
      :kinesis_settings,
      :kafka_settings,
      :elasticsearch_settings,
      :neptune_settings,
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_settings,
      :microsoft_sql_server_settings,
      :ibm_db2_settings,
      :resource_identifier,
      :doc_db_settings,
      :redis_settings,
      :gcp_my_sql_settings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::CreateEndpointInput "\
          "endpoint_identifier=#{endpoint_identifier || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "engine_name=#{engine_name || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "server_name=#{server_name || 'nil'}, "\
          "port=#{port || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "extra_connection_attributes=#{extra_connection_attributes || 'nil'}, "\
          "kms_key_id=#{kms_key_id || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "certificate_arn=#{certificate_arn || 'nil'}, "\
          "ssl_mode=#{ssl_mode || 'nil'}, "\
          "service_access_role_arn=#{service_access_role_arn || 'nil'}, "\
          "external_table_definition=#{external_table_definition || 'nil'}, "\
          "dynamo_db_settings=#{dynamo_db_settings || 'nil'}, "\
          "s3_settings=#{s3_settings || 'nil'}, "\
          "dms_transfer_settings=#{dms_transfer_settings || 'nil'}, "\
          "mongo_db_settings=#{mongo_db_settings || 'nil'}, "\
          "kinesis_settings=#{kinesis_settings || 'nil'}, "\
          "kafka_settings=#{kafka_settings || 'nil'}, "\
          "elasticsearch_settings=#{elasticsearch_settings || 'nil'}, "\
          "neptune_settings=#{neptune_settings || 'nil'}, "\
          "redshift_settings=#{redshift_settings || 'nil'}, "\
          "postgre_sql_settings=#{postgre_sql_settings || 'nil'}, "\
          "my_sql_settings=#{my_sql_settings || 'nil'}, "\
          "oracle_settings=#{oracle_settings || 'nil'}, "\
          "sybase_settings=#{sybase_settings || 'nil'}, "\
          "microsoft_sql_server_settings=#{microsoft_sql_server_settings || 'nil'}, "\
          "ibm_db2_settings=#{ibm_db2_settings || 'nil'}, "\
          "resource_identifier=#{resource_identifier || 'nil'}, "\
          "doc_db_settings=#{doc_db_settings || 'nil'}, "\
          "redis_settings=#{redis_settings || 'nil'}, "\
          "gcp_my_sql_settings=#{gcp_my_sql_settings || 'nil'}>"
      end
    end

    # <p></p>
    #
    # @!attribute endpoint
    #   <p>The endpoint that was created.</p>
    #
    #   @return [Endpoint]
    #
    CreateEndpointOutput = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the DMS event notification subscription. This name must be less than 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p> The type of DMS resource that generates the events. For example, if you want to be
    #            notified of events generated by a replication instance, you set this parameter to
    #               <code>replication-instance</code>. If this value isn't specified, all events are
    #            returned. </p>
    #            <p>Valid values: <code>replication-instance</code> | <code>replication-task</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>A list of event categories for a source type that you want to subscribe to. For more
    #              information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and
    #                  Notifications</a> in the <i>Database Migration Service User
    #                      Guide.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_ids
    #   <p>A list of identifiers for which DMS provides notification events.</p>
    #            <p>If you don't specify a value, notifications are provided for all sources.</p>
    #           <p>If you specify multiple values, they must be of the same type. For example, if you
    #               specify a database instance ID, then all of the other values must be database instance
    #               IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, or set to
    #               <code>false</code> to create the subscription but not activate it. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the event subscription.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute event_subscription
    #   <p>The event subscription that was created.</p>
    #
    #   @return [EventSubscription]
    #
    CreateEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collector_name
    #   <p>The name of your Fleet Advisor collector (for example, <code>sample-collector</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A summary description of your Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket that the Fleet Advisor collector uses to store inventory metadata.</p>
    #
    #   @return [String]
    #
    CreateFleetAdvisorCollectorInput = ::Struct.new(
      :collector_name,
      :description,
      :service_access_role_arn,
      :s3_bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collector_referenced_id
    #   <p>The unique ID of the new Fleet Advisor collector, for example:
    #                   <code>22fda70c-40d5-4acf-b233-a495bd8eb7f5</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute collector_name
    #   <p>The name of the new Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A summary description of the Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket that the collector uses to store inventory metadata.</p>
    #
    #   @return [String]
    #
    CreateFleetAdvisorCollectorOutput = ::Struct.new(
      :collector_referenced_id,
      :collector_name,
      :description,
      :service_access_role_arn,
      :s3_bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myrepinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to be initially allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone where the replication instance will be created. The default
    #            value is a random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region, for
    #            example: <code>us-east-1d</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute replication_subnet_group_identifier
    #   <p>A subnet group to associate with the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #            Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>Default: A 30-minute window selected at random from an 8-hour block of time per Amazon Web Services Region,
    #             occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
    #               <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>If an engine version number is not specified when a replication
    #            instance is created, the default is the latest engine version available.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the
    #            replication instance during the maintenance window. This parameter defaults to
    #               <code>true</code>.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the replication instance.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the data on the replication
    #              instance.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #              DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p> Specifies the accessibility options for the replication instance. A value of
    #               <code>true</code> represents an instance with a public IP address. A value of
    #               <code>false</code> represents an instance with a private IP address. The default value
    #            is <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute dns_name_servers
    #   <p>A list of custom DNS name servers supported for the replication instance to access your
    #            on-premise source or target database. This list overrides the default name servers
    #            supported by the replication instance. You can specify a comma-separated list of internet
    #            addresses for up to four on-premise DNS name servers. For example:
    #               <code>"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #            <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
    #            value for the end of <code>EndpointArn</code>.</p>
    #
    #   @return [String]
    #
    CreateReplicationInstanceInput = ::Struct.new(
      :replication_instance_identifier,
      :allocated_storage,
      :replication_instance_class,
      :vpc_security_group_ids,
      :availability_zone,
      :replication_subnet_group_identifier,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :tags,
      :kms_key_id,
      :publicly_accessible,
      :dns_name_servers,
      :resource_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance
    #   <p>The replication instance that was created.</p>
    #
    #   @return [ReplicationInstance]
    #
    CreateReplicationInstanceOutput = ::Struct.new(
      :replication_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_subnet_group_identifier
    #   <p>The name for the replication subnet group. This value is stored as a lowercase
    #            string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces,
    #            underscores, or hyphens. Must not be "default".</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute replication_subnet_group_description
    #   <p>The description for the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>One or more subnet IDs to be assigned to the subnet group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the subnet group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateReplicationSubnetGroupInput = ::Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_subnet_group
    #   <p>The replication subnet group that was created.</p>
    #
    #   @return [ReplicationSubnetGroup]
    #
    CreateReplicationSubnetGroupOutput = ::Struct.new(
      :replication_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_identifier
    #   <p>An identifier for the replication task.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute target_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of a replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
    #            </p>
    #
    #   Enum, one of: ["full-load", "cdc", "full-load-and-cdc"]
    #
    #   @return [String]
    #
    # @!attribute table_mappings
    #   <p>The table mappings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html">Using Table
    #               Mapping to Specify Task Settings</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_settings
    #   <p>Overall settings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Specifying Task
    #               Settings for Database Migration Service Tasks</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #
    #   @return [Time]
    #
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1 27 mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876 0 0 * 0 93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the replication task.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #            <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
    #            value for the end of <code>EndpointArn</code>.</p>
    #
    #   @return [String]
    #
    CreateReplicationTaskInput = ::Struct.new(
      :replication_task_identifier,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :replication_instance_arn,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      :tags,
      :task_data,
      :resource_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p>The replication task that was created.</p>
    #
    #   @return [ReplicationTask]
    #
    CreateReplicationTaskOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataFormatValue
    #
    module DataFormatValue
      # No documentation available.
      #
      CSV = "csv"

      # No documentation available.
      #
      PARQUET = "parquet"
    end

    # <p>Describes an inventory database instance for a Fleet Advisor collector.</p>
    #
    # @!attribute engine
    #   <p>The database engine of a database in a Fleet Advisor collector inventory, for example <code>Microsoft
    #                   SQL Server</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The database engine version of a database in a Fleet Advisor collector inventory, for example
    #                   <code>2019</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_edition
    #   <p>The database engine edition of a database in a Fleet Advisor collector inventory, for example
    #                   <code>Express</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_pack
    #   <p>The service pack level of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute support_level
    #   <p>The support level of the database, for example <code>Mainstream support</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute os_architecture
    #   <p>The operating system architecture of the database.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tooltip
    #   <p>Information about the database engine software, for example <code>Mainstream support
    #                   ends on November 14th, 2024</code>.</p>
    #
    #   @return [String]
    #
    DatabaseInstanceSoftwareDetailsResponse = ::Struct.new(
      :engine,
      :engine_version,
      :engine_edition,
      :service_pack,
      :support_level,
      :os_architecture,
      :tooltip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a database in a Fleet Advisor collector inventory.</p>
    #
    # @!attribute database_id
    #   <p>The ID of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of a database in a Fleet Advisor collector inventory. </p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of a database in a Fleet Advisor collector inventory. </p>
    #
    #   @return [String]
    #
    # @!attribute number_of_schemas
    #   <p>The number of schemas in a Fleet Advisor collector inventory database. </p>
    #
    #   @return [Integer]
    #
    # @!attribute server
    #   <p>The server name of a database in a Fleet Advisor collector inventory. </p>
    #
    #   @return [ServerShortInfoResponse]
    #
    # @!attribute software_details
    #   <p>The software details of a database in a Fleet Advisor collector inventory, such as database engine and version.</p>
    #
    #   @return [DatabaseInstanceSoftwareDetailsResponse]
    #
    # @!attribute collectors
    #   <p>A list of collectors associated with the database.</p>
    #
    #   @return [Array<CollectorShortInfoResponse>]
    #
    DatabaseResponse = ::Struct.new(
      :database_id,
      :database_name,
      :ip_address,
      :number_of_schemas,
      :server,
      :software_details,
      :collectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a database in a Fleet Advisor collector inventory.</p>
    #
    # @!attribute database_id
    #   <p>The ID of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_ip_address
    #   <p>The IP address of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_engine
    #   <p>The database engine of a database in a Fleet Advisor collector inventory, for example
    #                   <code>PostgreSQL</code>.</p>
    #
    #   @return [String]
    #
    DatabaseShortInfoResponse = ::Struct.new(
      :database_id,
      :database_name,
      :database_ip_address,
      :database_engine,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatePartitionDelimiterValue
    #
    module DatePartitionDelimiterValue
      # No documentation available.
      #
      SLASH = "SLASH"

      # No documentation available.
      #
      UNDERSCORE = "UNDERSCORE"

      # No documentation available.
      #
      DASH = "DASH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for DatePartitionSequenceValue
    #
    module DatePartitionSequenceValue
      # No documentation available.
      #
      YYYYMMDD = "YYYYMMDD"

      # No documentation available.
      #
      YYYYMMDDHH = "YYYYMMDDHH"

      # No documentation available.
      #
      YYYYMM = "YYYYMM"

      # No documentation available.
      #
      MMYYYYDD = "MMYYYYDD"

      # No documentation available.
      #
      DDMMYYYY = "DDMMYYYY"
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #
    #   @return [String]
    #
    DeleteCertificateInput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>The Secure Sockets Layer (SSL) certificate.</p>
    #
    #   @return [Certificate]
    #
    DeleteCertificateOutput = ::Struct.new(
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute connection
    #   <p>The connection that is being deleted.</p>
    #
    #   @return [Connection]
    #
    DeleteConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    DeleteEndpointInput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute endpoint
    #   <p>The endpoint that was deleted.</p>
    #
    #   @return [Endpoint]
    #
    DeleteEndpointOutput = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the DMS event notification subscription to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute event_subscription
    #   <p>The event subscription that was deleted.</p>
    #
    #   @return [EventSubscription]
    #
    DeleteEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector to delete.</p>
    #
    #   @return [String]
    #
    DeleteFleetAdvisorCollectorInput = ::Struct.new(
      :collector_referenced_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFleetAdvisorCollectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_ids
    #   <p>The IDs of the Fleet Advisor collector databases to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteFleetAdvisorDatabasesInput = ::Struct.new(
      :database_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_ids
    #   <p>The IDs of the databases that the operation deleted.</p>
    #
    #   @return [Array<String>]
    #
    DeleteFleetAdvisorDatabasesOutput = ::Struct.new(
      :database_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteReplicationInstanceInput = ::Struct.new(
      :replication_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance
    #   <p>The replication instance that was deleted.</p>
    #
    #   @return [ReplicationInstance]
    #
    DeleteReplicationInstanceOutput = ::Struct.new(
      :replication_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_subnet_group_identifier
    #   <p>The subnet group name of the replication instance.</p>
    #
    #   @return [String]
    #
    DeleteReplicationSubnetGroupInput = ::Struct.new(
      :replication_subnet_group_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    DeleteReplicationSubnetGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteReplicationTaskAssessmentRunInput = ::Struct.new(
      :replication_task_assessment_run_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_assessment_run
    #   <p>The <code>ReplicationTaskAssessmentRun</code> object for the deleted assessment
    #            run.</p>
    #
    #   @return [ReplicationTaskAssessmentRun]
    #
    DeleteReplicationTaskAssessmentRunOutput = ::Struct.new(
      :replication_task_assessment_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteReplicationTaskInput = ::Struct.new(
      :replication_task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p>The deleted replication task.</p>
    #
    #   @return [ReplicationTask]
    #
    DeleteReplicationTaskOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    DescribeAccountAttributesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute account_quotas
    #   <p>Account quota information.</p>
    #
    #   @return [Array<AccountQuota>]
    #
    # @!attribute unique_account_identifier
    #   <p>A unique DMS identifier for an account in a particular Amazon Web Services Region. The value of this
    #            identifier has the following format: <code>c99999999999</code>. DMS uses this identifier to
    #            name artifacts. For example, DMS uses this identifier to name the default Amazon S3 bucket
    #            for storing task assessment reports in a given Amazon Web Services Region. The format of this S3 bucket
    #            name is the following:
    #                  <code>dms-<i>AccountNumber</i>-<i>UniqueAccountIdentifier</i>.</code>
    #            Here is an example name for this default S3 bucket:
    #               <code>dms-111122223333-c44445555666</code>.</p>
    #            <note>
    #               <p>DMS supports the <code>UniqueAccountIdentifier</code> parameter in
    #               versions 3.1.4 and later.</p>
    #            </note>
    #
    #   @return [String]
    #
    DescribeAccountAttributesOutput = ::Struct.new(
      :account_quotas,
      :unique_account_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>Amazon Resource Name (ARN) of a migration task on which you want to base
    #            the default list of individual assessments.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>ARN of a replication instance on which you want to base the default list of individual
    #            assessments.</p>
    #
    #   @return [String]
    #
    # @!attribute source_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a source.</p>
    #
    #   @return [String]
    #
    # @!attribute target_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a target.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_type
    #   <p>Name of the migration type that each provided individual assessment must support.</p>
    #
    #   Enum, one of: ["full-load", "cdc", "full-load-and-cdc"]
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>Maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>Optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeApplicableIndividualAssessmentsInput = ::Struct.new(
      :replication_task_arn,
      :replication_instance_arn,
      :source_engine_name,
      :target_engine_name,
      :migration_type,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute individual_assessment_names
    #   <p>List of names for the individual assessments supported by the premigration assessment
    #            run that you start based on the specified request parameters. For more information on the
    #            available individual assessments, including compatibility with different migration task
    #            configurations, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html">Working with premigration assessment runs</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>Pagination token returned for you to pass to a subsequent request. If you pass this
    #            token as the <code>Marker</code> value in a subsequent request, the response includes only
    #            records beyond the marker, up to the value specified in the request by
    #               <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeApplicableIndividualAssessmentsOutput = ::Struct.new(
      :individual_assessment_names,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the certificates described in the form of key-value pairs.
    #             Valid values are <code>certificate-arn</code> and <code>certificate-id</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 10</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeCertificatesInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>The Secure Sockets Layer (SSL) certificates associated with the replication
    #            instance.</p>
    #
    #   @return [Array<Certificate>]
    #
    DescribeCertificatesOutput = ::Struct.new(
      :marker,
      :certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>The filters applied to the connection.</p>
    #            <p>Valid filter names: endpoint-arn | replication-instance-arn</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeConnectionsInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute connections
    #   <p>A description of the connections.</p>
    #
    #   @return [Array<Connection>]
    #
    DescribeConnectionsOutput = ::Struct.new(
      :marker,
      :connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_name
    #   <p>The databse engine used for your source or target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response
    #            so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #            the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeEndpointSettingsInput = ::Struct.new(
      :engine_name,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #            the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_settings
    #   <p>Descriptions of the endpoint settings available for your source or target database engine.</p>
    #
    #   @return [Array<EndpointSetting>]
    #
    DescribeEndpointSettingsOutput = ::Struct.new(
      :marker,
      :endpoint_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to the endpoint types.</p>
    #            <p>Valid filter names: engine-name | endpoint-type</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeEndpointTypesInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute supported_endpoint_types
    #   <p>The types of endpoints that are supported.</p>
    #
    #   @return [Array<SupportedEndpointType>]
    #
    DescribeEndpointTypesOutput = ::Struct.new(
      :marker,
      :supported_endpoint_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to the endpoints.</p>
    #            <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeEndpointsInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>Endpoint description.</p>
    #
    #   @return [Array<Endpoint>]
    #
    DescribeEndpointsOutput = ::Struct.new(
      :marker,
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters applied to the event categories.</p>
    #
    #   @return [Array<Filter>]
    #
    DescribeEventCategoriesInput = ::Struct.new(
      :source_type,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute event_category_group_list
    #   <p>A list of event categories.</p>
    #
    #   @return [Array<EventCategoryGroup>]
    #
    DescribeEventCategoriesOutput = ::Struct.new(
      :event_category_group_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the DMS event subscription to be described.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters applied to event subscriptions.</p>
    #            <p>Valid filter names: event-subscription-arn |  event-subscription-id </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeEventSubscriptionsInput = ::Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute event_subscriptions_list
    #   <p>A list of event subscriptions.</p>
    #
    #   @return [Array<EventSubscription>]
    #
    DescribeEventSubscriptionsOutput = ::Struct.new(
      :marker,
      :event_subscriptions_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_identifier
    #   <p> The identifier of an event source.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of DMS resource that generates events.</p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #
    #   Enum, one of: ["replication-instance"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time for the events to be listed.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time for the events to be listed.</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The duration of the events to be listed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_categories
    #   <p>A list of event categories for the source type that you've chosen.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Filters applied to events. The only valid filter is <code>replication-instance-id</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeEventsInput = ::Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The events described.</p>
    #
    #   @return [Array<Event>]
    #
    DescribeEventsOutput = ::Struct.new(
      :marker,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those collectors that meet the filter criteria:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>collector-referenced-id</code> – The ID of the collector agent, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the collector agent.</p>
    #               </li>
    #            </ul>
    #
    #           <p>An example is: <code>describe-fleet-advisor-collectors --filter
    #                   Name="collector-referenced-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorCollectorsInput = ::Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collectors
    #   <p>Provides descriptions of the Fleet Advisor collectors, including the collectors' name
    #               and ID, and the latest inventory data. </p>
    #
    #   @return [Array<CollectorResponse>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorCollectorsOutput = ::Struct.new(
      :collectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those databases that meet the filter criteria: </p>
    #
    #               <ul>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the database, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the database engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the database server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the associated Fleet Advisor collector.</p>
    #               </li>
    #            </ul>
    #
    #               <p>An example is: <code>describe-fleet-advisor-databases --filter
    #                   Name="database-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorDatabasesInput = ::Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute databases
    #   <p>Provides descriptions of the Fleet Advisor collector databases, including the database's collector, ID, and name.</p>
    #
    #   @return [Array<DatabaseResponse>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorDatabasesOutput = ::Struct.new(
      :databases,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorLsaAnalysisInput = ::Struct.new(
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analysis
    #   <p>A list of <code>FleetAdvisorLsaAnalysisResponse</code> objects.</p>
    #
    #   @return [Array<FleetAdvisorLsaAnalysisResponse>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorLsaAnalysisOutput = ::Struct.new(
      :analysis,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schema objects that meet the filter criteria:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #            </ul>
    #
    #           <p>Example: <code>describe-fleet-advisor-schema-object-summary --filter Name="schema-id",Values="50"</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorSchemaObjectSummaryInput = ::Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_advisor_schema_objects
    #   <p>A collection of <code>FleetAdvisorSchemaObjectResponse</code> objects.</p>
    #
    #   @return [Array<FleetAdvisorSchemaObjectResponse>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorSchemaObjectSummaryOutput = ::Struct.new(
      :fleet_advisor_schema_objects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schemas that meet the filter criteria:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>complexity</code> – The schema's complexity, for example
    #                       <code>Simple</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the schema database's engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>original-schema-name</code> – The name of the schema's database's main schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example <code>15</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-name</code> – The name of the schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the schema database's server.</p>
    #               </li>
    #            </ul>
    #
    #           <p>An example is: <code>describe-fleet-advisor-schemas --filter
    #                   Name="schema-id",Values="50"</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorSchemasInput = ::Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_advisor_schemas
    #   <p>A collection of <code>SchemaResponse</code> objects.</p>
    #
    #   @return [Array<SchemaResponse>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeFleetAdvisorSchemasOutput = ::Struct.new(
      :fleet_advisor_schemas,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeOrderableReplicationInstancesInput = ::Struct.new(
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute orderable_replication_instances
    #   <p>The order-able replication instances available.</p>
    #
    #   @return [Array<OrderableReplicationInstance>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeOrderableReplicationInstancesOutput = ::Struct.new(
      :orderable_replication_instances,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p></p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribePendingMaintenanceActionsInput = ::Struct.new(
      :replication_instance_arn,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute pending_maintenance_actions
    #   <p>The pending maintenance action.</p>
    #
    #   @return [Array<ResourcePendingMaintenanceActions>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribePendingMaintenanceActionsOutput = ::Struct.new(
      :pending_maintenance_actions,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    DescribeRefreshSchemasStatusInput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute refresh_schemas_status
    #   <p>The status of the schema.</p>
    #
    #   @return [RefreshSchemasStatus]
    #
    DescribeRefreshSchemasStatusOutput = ::Struct.new(
      :refresh_schemas_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeReplicationInstanceTaskLogsInput = ::Struct.new(
      :replication_instance_arn,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_task_logs
    #   <p>An array of replication task log metadata. Each member of the array contains the
    #            replication task name, ARN, and task log size (in bytes). </p>
    #
    #   @return [Array<ReplicationInstanceTaskLog>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeReplicationInstanceTaskLogsOutput = ::Struct.new(
      :replication_instance_arn,
      :replication_instance_task_logs,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to replication instances.</p>
    #            <p>Valid filter names: replication-instance-arn | replication-instance-id |
    #            replication-instance-class | engine-version</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeReplicationInstancesInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute replication_instances
    #   <p>The replication instances described.</p>
    #
    #   @return [Array<ReplicationInstance>]
    #
    DescribeReplicationInstancesOutput = ::Struct.new(
      :marker,
      :replication_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to replication subnet groups.</p>
    #            <p>Valid filter names: replication-subnet-group-id</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeReplicationSubnetGroupsInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute replication_subnet_groups
    #   <p>A description of the replication subnet groups.</p>
    #
    #   @return [Array<ReplicationSubnetGroup>]
    #
    DescribeReplicationSubnetGroupsOutput = ::Struct.new(
      :marker,
      :replication_subnet_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input
    #            parameter is specified, the API returns only one result and ignore the values of the
    #               <code>MaxRecords</code> and <code>Marker</code> parameters. </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeReplicationTaskAssessmentResultsInput = ::Struct.new(
      :replication_task_arn,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>- The Amazon S3 bucket where the task assessment report is located. </p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_assessment_results
    #   <p> The task assessment report. </p>
    #
    #   @return [Array<ReplicationTaskAssessmentResult>]
    #
    DescribeReplicationTaskAssessmentResultsOutput = ::Struct.new(
      :marker,
      :bucket_name,
      :replication_task_assessment_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to the premigration assessment runs described in the form of key-value pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>, <code>replication-task-arn</code>,
    #            <code>replication-instance-arn</code>, <code>status</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeReplicationTaskAssessmentRunsInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A pagination token returned for you to pass to a subsequent request. If you pass this
    #            token as the <code>Marker</code> value in a subsequent request, the response includes only
    #            records beyond the marker, up to the value specified in the request by
    #               <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_assessment_runs
    #   <p>One or more premigration assessment runs as specified by <code>Filters</code>.</p>
    #
    #   @return [Array<ReplicationTaskAssessmentRun>]
    #
    DescribeReplicationTaskAssessmentRunsOutput = ::Struct.new(
      :marker,
      :replication_task_assessment_runs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to the individual assessments described in the form of key-value
    #            pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
    #               <code>replication-task-arn</code>, <code>status</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeReplicationTaskIndividualAssessmentsInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A pagination token returned for you to pass to a subsequent request. If you pass this
    #            token as the <code>Marker</code> value in a subsequent request, the response includes only
    #            records beyond the marker, up to the value specified in the request by
    #               <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_individual_assessments
    #   <p>One or more individual assessments as specified by <code>Filters</code>.</p>
    #
    #   @return [Array<ReplicationTaskIndividualAssessment>]
    #
    DescribeReplicationTaskIndividualAssessmentsOutput = ::Struct.new(
      :marker,
      :replication_task_individual_assessments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute filters
    #   <p>Filters applied to replication tasks.</p>
    #            <p>Valid filter names: replication-task-arn | replication-task-id | migration-type |
    #            endpoint-arn | replication-instance-arn</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute without_settings
    #   <p>An option to set to avoid returning information about settings. Use this to reduce
    #            overhead when setting information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    #
    #   @return [Boolean]
    #
    DescribeReplicationTasksInput = ::Struct.new(
      :filters,
      :max_records,
      :marker,
      :without_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute replication_tasks
    #   <p>A description of the replication tasks.</p>
    #
    #   @return [Array<ReplicationTask>]
    #
    DescribeReplicationTasksOutput = ::Struct.new(
      :marker,
      :replication_tasks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeSchemasInput = ::Struct.new(
      :endpoint_arn,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute schemas
    #   <p>The described schema.</p>
    #
    #   @return [Array<String>]
    #
    DescribeSchemasOutput = ::Struct.new(
      :marker,
      :schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters applied to table statistics.</p>
    #            <p>Valid filter names: schema-name | table-name | table-state</p>
    #            <p>A combination of filters creates an AND condition where each record matches all
    #            specified filters.</p>
    #
    #   @return [Array<Filter>]
    #
    DescribeTableStatisticsInput = ::Struct.new(
      :replication_task_arn,
      :max_records,
      :marker,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute table_statistics
    #   <p>The table statistics.</p>
    #
    #   @return [Array<TableStatistics>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    #   @return [String]
    #
    DescribeTableStatisticsOutput = ::Struct.new(
      :replication_task_arn,
      :table_statistics,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DmsSslModeValue
    #
    module DmsSslModeValue
      # No documentation available.
      #
      NONE = "none"

      # No documentation available.
      #
      REQUIRE = "require"

      # No documentation available.
      #
      VERIFY_CA = "verify-ca"

      # No documentation available.
      #
      VERIFY_FULL = "verify-full"
    end

    # <p> The settings in JSON format for the DMS Transfer type source endpoint. </p>
    #
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used by the service access IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p> The name of the S3 bucket to use. </p>
    #
    #   @return [String]
    #
    DmsTransferSettings = ::Struct.new(
      :service_access_role_arn,
      :bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that defines a DocumentDB endpoint.</p>
    #
    # @!attribute username
    #   <p>The user name you use to access the DocumentDB source endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password for the user account you use to access the DocumentDB source endpoint.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p> The name of the server on the DocumentDB source endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p> The port value for the DocumentDB source endpoint. </p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p> The database name on the DocumentDB source endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute nesting_level
    #   <p> Specifies either document or table mode. </p>
    #            <p>Default value is <code>"none"</code>. Specify <code>"none"</code> to use document mode.
    #            Specify <code>"one"</code> to use table mode.</p>
    #
    #   Enum, one of: ["none", "one"]
    #
    #   @return [String]
    #
    # @!attribute extract_doc_id
    #   <p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to
    #            <code>"none"</code>. </p>
    #            <p>Default value is <code>"false"</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute docs_to_investigate
    #   <p> Indicates the number of documents to preview to determine the document organization.
    #            Use this setting when <code>NestingLevel</code> is set to <code>"one"</code>. </p>
    #            <p>Must be a positive value greater than <code>0</code>. Default value is
    #            <code>1000</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key identifier that is used to encrypt the content on the replication
    #            instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #            DMS uses your default encryption key. KMS creates the default encryption key for
    #            your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that allows access to the DocumentDB endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                     Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the DocumentDB endpoint connection details.</p>
    #
    #   @return [String]
    #
    DocDbSettings = ::Struct.new(
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :nesting_level,
      :extract_doc_id,
      :docs_to_investigate,
      :kms_key_id,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::DocDbSettings "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "server_name=#{server_name || 'nil'}, "\
          "port=#{port || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "nesting_level=#{nesting_level || 'nil'}, "\
          "extract_doc_id=#{extract_doc_id || 'nil'}, "\
          "docs_to_investigate=#{docs_to_investigate || 'nil'}, "\
          "kms_key_id=#{kms_key_id || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # <p>Provides the Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
    #          role used to define an Amazon DynamoDB target endpoint.</p>
    #
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) used by the service to access the IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    DynamoDbSettings = ::Struct.new(
      :service_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that defines an OpenSearch endpoint.</p>
    #
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used by the service to access the IAM role.
    #            The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_uri
    #   <p>The endpoint for the OpenSearch cluster. DMS uses HTTPS if a transport
    #            protocol (http/https) is not specified.</p>
    #
    #   @return [String]
    #
    # @!attribute full_load_error_percentage
    #   <p>The maximum percentage of records that can fail to be written before a full load
    #               operation stops.</p>
    #            <p>To avoid early failure, this counter is only effective after 1000 records
    #            are transferred. OpenSearch also has the concept of error monitoring during the
    #            last 10 minutes of an Observation Window. If transfer of all records fail in the
    #            last 10 minutes, the full load operation stops. </p>
    #
    #   @return [Integer]
    #
    # @!attribute error_retry_duration
    #   <p>The maximum number of seconds for which DMS retries failed API requests to the
    #            OpenSearch cluster.</p>
    #
    #   @return [Integer]
    #
    ElasticsearchSettings = ::Struct.new(
      :service_access_role_arn,
      :endpoint_uri,
      :full_load_error_percentage,
      :error_retry_duration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncodingTypeValue
    #
    module EncodingTypeValue
      # No documentation available.
      #
      PLAIN = "plain"

      # No documentation available.
      #
      PLAIN_DICTIONARY = "plain-dictionary"

      # No documentation available.
      #
      RLE_DICTIONARY = "rle-dictionary"
    end

    # Includes enum constants for EncryptionModeValue
    #
    module EncryptionModeValue
      # No documentation available.
      #
      SSE_S3 = "sse-s3"

      # No documentation available.
      #
      SSE_KMS = "sse-kms"
    end

    # <p>Describes an endpoint of a database instance in response to operations such as the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    #   Enum, one of: ["source", "target"]
    #
    #   @return [String]
    #
    # @!attribute engine_name
    #   <p>The database engine name. Valid values, depending on the EndpointType, include
    #               <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #               <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>, <code>"opensearch"</code>,
    #               <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"azuredb"</code>,
    #               <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #               <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #               <code>"documentdb"</code>, <code>"sqlserver"</code>, and <code>"neptune"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_display_name
    #   <p>The expanded name for the engine name. For example, if the <code>EngineName</code>
    #            parameter is "aurora," this value would be "Amazon Aurora MySQL."</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name used to connect to the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>The name of the server at the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port value used to access the endpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>The name of the database at the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_connection_attributes
    #   <p>Additional connection attributes used to connect to the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #              DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) used for SSL connection to the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the endpoint. The default value is <code>none</code>.</p>
    #
    #   Enum, one of: ["none", "require", "verify-ca", "verify-full"]
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used by the service to access the IAM role.
    #            The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute external_table_definition
    #   <p>The external table definition.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p> Value returned by a call to CreateEndpoint that can be used for cross-account
    #            validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a
    #            cross-account. </p>
    #
    #   @return [String]
    #
    # @!attribute dynamo_db_settings
    #   <p>The settings for the DynamoDB target endpoint. For more information, see the
    #               <code>DynamoDBSettings</code> structure.</p>
    #
    #   @return [DynamoDbSettings]
    #
    # @!attribute s3_settings
    #   <p>The settings for the S3 target endpoint. For more information, see the
    #               <code>S3Settings</code> structure.</p>
    #
    #   @return [S3Settings]
    #
    # @!attribute dms_transfer_settings
    #   <p>The settings for the DMS Transfer type source. For more information, see the DmsTransferSettings structure.  </p>
    #
    #   @return [DmsTransferSettings]
    #
    # @!attribute mongo_db_settings
    #   <p>The settings for the MongoDB source endpoint. For more information, see the
    #               <code>MongoDbSettings</code> structure.</p>
    #
    #   @return [MongoDbSettings]
    #
    # @!attribute kinesis_settings
    #   <p>The settings for the Amazon Kinesis target endpoint. For more information, see the
    #               <code>KinesisSettings</code> structure.</p>
    #
    #   @return [KinesisSettings]
    #
    # @!attribute kafka_settings
    #   <p>The settings for the Apache Kafka target endpoint. For more information, see the
    #            <code>KafkaSettings</code> structure.</p>
    #
    #   @return [KafkaSettings]
    #
    # @!attribute elasticsearch_settings
    #   <p>The settings for the OpenSearch source endpoint. For more information, see the
    #               <code>ElasticsearchSettings</code> structure.</p>
    #
    #   @return [ElasticsearchSettings]
    #
    # @!attribute neptune_settings
    #   <p>The settings for the Amazon Neptune target endpoint. For more information, see the
    #            <code>NeptuneSettings</code> structure.</p>
    #
    #   @return [NeptuneSettings]
    #
    # @!attribute redshift_settings
    #   <p>Settings for the Amazon Redshift endpoint.</p>
    #
    #   @return [RedshiftSettings]
    #
    # @!attribute postgre_sql_settings
    #   <p>The settings for the PostgreSQL source and target endpoint. For more information, see
    #            the <code>PostgreSQLSettings</code> structure.</p>
    #
    #   @return [PostgreSQLSettings]
    #
    # @!attribute my_sql_settings
    #   <p>The settings for the MySQL source and target endpoint. For more information, see the
    #               <code>MySQLSettings</code> structure.</p>
    #
    #   @return [MySQLSettings]
    #
    # @!attribute oracle_settings
    #   <p>The settings for the Oracle source and target endpoint. For more information, see the
    #               <code>OracleSettings</code> structure.</p>
    #
    #   @return [OracleSettings]
    #
    # @!attribute sybase_settings
    #   <p>The settings for the SAP ASE source and target endpoint. For more information, see the
    #               <code>SybaseSettings</code> structure.</p>
    #
    #   @return [SybaseSettings]
    #
    # @!attribute microsoft_sql_server_settings
    #   <p>The settings for the Microsoft SQL Server source and target endpoint. For more
    #            information, see the <code>MicrosoftSQLServerSettings</code> structure.</p>
    #
    #   @return [MicrosoftSQLServerSettings]
    #
    # @!attribute ibm_db2_settings
    #   <p>The settings for the IBM Db2 LUW source endpoint. For more information, see the
    #               <code>IBMDb2Settings</code> structure.
    #         </p>
    #
    #   @return [IBMDb2Settings]
    #
    # @!attribute doc_db_settings
    #   <p>Provides information that defines a DocumentDB endpoint.</p>
    #
    #   @return [DocDbSettings]
    #
    # @!attribute redis_settings
    #   <p>The settings for the Redis target endpoint. For more information, see the
    #            <code>RedisSettings</code> structure.</p>
    #
    #   @return [RedisSettings]
    #
    # @!attribute gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #
    #   @return [GcpMySQLSettings]
    #
    Endpoint = ::Struct.new(
      :endpoint_identifier,
      :endpoint_type,
      :engine_name,
      :engine_display_name,
      :username,
      :server_name,
      :port,
      :database_name,
      :extra_connection_attributes,
      :status,
      :kms_key_id,
      :endpoint_arn,
      :certificate_arn,
      :ssl_mode,
      :service_access_role_arn,
      :external_table_definition,
      :external_id,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings,
      :kinesis_settings,
      :kafka_settings,
      :elasticsearch_settings,
      :neptune_settings,
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_settings,
      :microsoft_sql_server_settings,
      :ibm_db2_settings,
      :doc_db_settings,
      :redis_settings,
      :gcp_my_sql_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Endpoint settings.</p>
    #
    # @!attribute name
    #   <p>The name that you want to give the endpoint settings.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    #   Enum, one of: ["string", "boolean", "integer", "enum"]
    #
    #   @return [String]
    #
    # @!attribute enum_values
    #   <p>Enumerated values to use for this endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sensitive
    #   <p>A value that marks this endpoint setting as sensitive.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute units
    #   <p>The unit of measure for this endpoint setting.</p>
    #
    #   @return [String]
    #
    # @!attribute applicability
    #   <p>The relevance or validity of an endpoint setting for an engine name and its endpoint type.</p>
    #
    #   @return [String]
    #
    # @!attribute int_value_min
    #   <p>The minimum value of an endpoint setting that is of type <code>int</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute int_value_max
    #   <p>The maximum value of an endpoint setting that is of type <code>int</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_value
    #   <p>The default value of the endpoint setting if no value is specified using <code>CreateEndpoint</code> or <code>ModifyEndpoint</code>.</p>
    #
    #   @return [String]
    #
    EndpointSetting = ::Struct.new(
      :name,
      :type,
      :enum_values,
      :sensitive,
      :units,
      :applicability,
      :int_value_min,
      :int_value_max,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointSettingTypeValue
    #
    module EndpointSettingTypeValue
      # No documentation available.
      #
      STRING = "string"

      # No documentation available.
      #
      BOOLEAN = "boolean"

      # No documentation available.
      #
      INTEGER = "integer"

      # No documentation available.
      #
      ENUM = "enum"
    end

    # <p>Describes an identifiable significant activity that affects a replication instance or
    #          task. This object can provide the message, the available event categories, the date and
    #          source of the event, and the DMS resource type.</p>
    #
    # @!attribute source_identifier
    #   <p> The identifier of an event source.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | endpoint | replication-task</p>
    #
    #   Enum, one of: ["replication-instance"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The event message.</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>The event categories available for the specified source type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute date
    #   <p>The date of the event.</p>
    #
    #   @return [Time]
    #
    Event = ::Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists categories of events subscribed to, and generated by, the applicable DMS
    #          resource type. This data type appears in response to the
    #          <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html">
    #                <code>DescribeEventCategories</code>
    #             </a>
    #          action.</p>
    #
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-server | security-group |
    #            replication-task</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p> A list of event categories from a source type that you've chosen.</p>
    #
    #   @return [Array<String>]
    #
    EventCategoryGroup = ::Struct.new(
      :source_type,
      :event_categories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an event notification subscription created by the <code>CreateEventSubscription</code>
    #          operation.</p>
    #
    # @!attribute customer_aws_id
    #   <p>The Amazon Web Services customer account associated with the DMS event notification
    #            subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute cust_subscription_id
    #   <p>The DMS event notification subscription Id.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The topic ARN of the DMS event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the DMS event notification subscription.</p>
    #            <p>Constraints:</p>
    #            <p>Can be one of the following: creating | modifying | deleting | active | no-permission |
    #            topic-not-exist</p>
    #            <p>The status "no-permission" indicates that DMS no longer has permission to post to
    #            the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the
    #            subscription was created.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_creation_time
    #   <p>The time the DMS event notification subscription was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-server | security-group |
    #            replication-task</p>
    #
    #   @return [String]
    #
    # @!attribute source_ids_list
    #   <p>A list of source Ids for the event subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_categories_list
    #   <p>A lists of event categories.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>Boolean value that indicates if the event subscription is enabled.</p>
    #
    #   @return [Boolean]
    #
    EventSubscription = ::Struct.new(
      :customer_aws_id,
      :cust_subscription_id,
      :sns_topic_arn,
      :status,
      :subscription_creation_time,
      :source_type,
      :source_ids_list,
      :event_categories_list,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Identifies the name and value of a filter object. This filter is used to limit the
    #          number and type of DMS objects that are returned for a particular
    #             <code>Describe*</code> call or similar operation. Filters are used as an optional
    #          parameter for certain API operations. </p>
    #
    # @!attribute name
    #   <p>The name of the filter as specified for a <code>Describe*</code> or similar
    #            operation.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter value, which can specify one or more values used to narrow the returned results.</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a large-scale assessment (LSA) analysis run by a Fleet Advisor collector.</p>
    #
    # @!attribute lsa_analysis_id
    #   <p>The ID of an LSA analysis run by a Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of an LSA analysis run by a Fleet Advisor collector.</p>
    #
    #   @return [String]
    #
    FleetAdvisorLsaAnalysisResponse = ::Struct.new(
      :lsa_analysis_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a schema object in a Fleet Advisor collector inventory.</p>
    #
    # @!attribute schema_id
    #   <p>The ID of a schema object in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type
    #   <p>The type of the schema object, as reported by the database engine. Examples include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>function</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>trigger</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM_TABLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute number_of_objects
    #   <p>The number of objects in a schema object in a Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    # @!attribute code_line_count
    #   <p>The number of lines of code in a schema object in a Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    # @!attribute code_size
    #   <p>The size level of the code in a schema object in a Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    FleetAdvisorSchemaObjectResponse = ::Struct.new(
      :schema_id,
      :object_type,
      :number_of_objects,
      :code_line_count,
      :code_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #
    # @!attribute after_connect_script
    #   <p>Specifies a script to run immediately after DMS connects to the endpoint.
    #            The migration task continues running regardless if the SQL statement succeeds or fails.</p>
    #
    #            <p>For this parameter, provide the code of the script itself, not the name of a file containing the script. </p>
    #
    #   @return [String]
    #
    # @!attribute clean_source_metadata_on_mismatch
    #   <p>Adjusts the behavior of DMS when migrating from an SQL Server source database
    #            that is hosted as part of an Always On availability group cluster. If you need DMS
    #            to poll all the nodes in the Always On cluster for transaction backups, set this attribute to <code>false</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint. For a MySQL source or target endpoint, don't explicitly specify
    #            the database using the <code>DatabaseName</code> request parameter on either the <code>CreateEndpoint</code>
    #            or <code>ModifyEndpoint</code> API call. Specifying <code>DatabaseName</code> when you create or modify a
    #            MySQL endpoint replicates all the task tables to this single database. For MySQL endpoints, you specify
    #            the database only when you specify the schema in the table-mapping rules of the DMS task. </p>
    #
    #   @return [String]
    #
    # @!attribute events_poll_interval
    #   <p>Specifies how often to check the binary log for new changes/events when the database is idle. The default is five seconds.</p>
    #            <p>Example: <code>eventsPollInterval=5;</code>
    #            </p>
    #            <p>In the example, DMS checks for changes in the binary logs every five seconds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute target_db_type
    #   <p>Specifies where to migrate source tables on the target, either to a single database or multiple databases.</p>
    #            <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code>
    #            </p>
    #
    #   Enum, one of: ["specific-database", "multiple-databases"]
    #
    #   @return [String]
    #
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database.</p>
    #            <p>Example: <code>maxFileSize=512</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute parallel_load_threads
    #   <p>Improves performance when loading data into the MySQL-compatible target database. Specifies how many
    #            threads to use to load the data into the MySQL-compatible target database. Setting a large number of
    #            threads can have an adverse effect on database performance, because a separate connection is required
    #            for each thread. The default is one.</p>
    #
    #            <p>Example: <code>parallelLoadThreads=1</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute server_name
    #   <p>Endpoint TCP port.</p>
    #
    #   @return [String]
    #
    # @!attribute server_timezone
    #   <p>Specifies the time zone for the source MySQL database.</p>
    #
    #            <p>Example: <code>serverTimezone=US/Pacific;</code>
    #            </p>
    #
    #            <p>Note: Do not enclose time zones in single quotes.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS
    #            as the trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret.</code> The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret
    #            that allows access to the MySQL endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify
    #            the values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify clear-text
    #            values for <code>UserName</code>, <code>Password</code>, <code>ServerName</code>, and <code>Port</code>.
    #            You can't specify both. For more information on creating this <code>SecretsManagerSecret</code>
    #            and the <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code> required to
    #            access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #            Database Migration Service User Guide.
    #
    #         </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the MySQL endpoint connection details. </p>
    #
    #   @return [String]
    #
    GcpMySQLSettings = ::Struct.new(
      :after_connect_script,
      :clean_source_metadata_on_mismatch,
      :database_name,
      :events_poll_interval,
      :target_db_type,
      :max_file_size,
      :parallel_load_threads,
      :password,
      :port,
      :server_name,
      :server_timezone,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::GcpMySQLSettings "\
          "after_connect_script=#{after_connect_script || 'nil'}, "\
          "clean_source_metadata_on_mismatch=#{clean_source_metadata_on_mismatch || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "events_poll_interval=#{events_poll_interval || 'nil'}, "\
          "target_db_type=#{target_db_type || 'nil'}, "\
          "max_file_size=#{max_file_size || 'nil'}, "\
          "parallel_load_threads=#{parallel_load_threads || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "server_timezone=#{server_timezone || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # <p>Provides information that defines an IBM Db2 LUW endpoint.</p>
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Endpoint TCP port. The default value is 50000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute set_data_capture_changes
    #   <p>Enables ongoing replication (CDC) as a BOOLEAN value. The
    #            default is true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute current_lsn
    #   <p>For ongoing replication (CDC), use CurrentLSN to specify a
    #            log sequence number (LSN) where you want the replication
    #            to start.</p>
    #
    #   @return [String]
    #
    # @!attribute max_k_bytes_per_read
    #   <p>Maximum number of bytes per read, as a NUMBER value.
    #            The default is 64 KB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of
    #            the Amazon Web Services Secrets Manager secret that allows access to the Db2 LUW endpoint. </p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the Db2 LUW endpoint connection details.</p>
    #
    #   @return [String]
    #
    IBMDb2Settings = ::Struct.new(
      :database_name,
      :password,
      :port,
      :server_name,
      :set_data_capture_changes,
      :current_lsn,
      :max_k_bytes_per_read,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::IBMDb2Settings "\
          "database_name=#{database_name || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "set_data_capture_changes=#{set_data_capture_changes || 'nil'}, "\
          "current_lsn=#{current_lsn || 'nil'}, "\
          "max_k_bytes_per_read=#{max_k_bytes_per_read || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # @!attribute certificate_identifier
    #   <p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
    #            must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
    #            contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_pem
    #   <p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_wallet
    #   <p>The location of an imported Oracle Wallet certificate for use with SSL. Provide the name of a <code>.sso</code> file
    #             using the <code>fileb://</code> prefix. You can't provide the certificate inline.</p>
    #             <p>Example: <code>filebase64("${path.root}/rds-ca-2019-root.sso")</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the certificate.</p>
    #
    #   @return [Array<Tag>]
    #
    ImportCertificateInput = ::Struct.new(
      :certificate_identifier,
      :certificate_pem,
      :certificate_wallet,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::ImportCertificateInput "\
          "certificate_identifier=#{certificate_identifier || 'nil'}, "\
          "certificate_pem=\"[SENSITIVE]\", "\
          "certificate_wallet=#{certificate_wallet || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute certificate
    #   <p>The certificate to be uploaded.</p>
    #
    #   @return [Certificate]
    #
    ImportCertificateOutput = ::Struct.new(
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There are not enough resources allocated to the database migration.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    InsufficientResourceCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The certificate was not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCertificateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action or operation requested isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOperationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is in a state that prevents it from being used for database migration.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    InvalidResourceStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The subnet provided is invalid.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    InvalidSubnet = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Fleet Advisor collector inventory.</p>
    #
    # @!attribute number_of_databases
    #   <p>The number of databases in the Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_schemas
    #   <p>The number of schemas in the Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    InventoryData = ::Struct.new(
      :number_of_databases,
      :number_of_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ciphertext references a key that doesn't exist or that the DMS account doesn't have access to.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSAccessDeniedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified KMS key isn't enabled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSDisabledFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Key Management Service (KMS) error is preventing access to KMS.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the specified KMS resource isn't valid for this request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSInvalidStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DMS cannot access the KMS key.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    KMSKeyNotAccessibleFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified KMS entity or resource can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This request triggered KMS request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSThrottlingFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KafkaSecurityProtocol
    #
    module KafkaSecurityProtocol
      # No documentation available.
      #
      PLAINTEXT = "plaintext"

      # No documentation available.
      #
      SSL_AUTHENTICATION = "ssl-authentication"

      # No documentation available.
      #
      SSL_ENCRYPTION = "ssl-encryption"

      # No documentation available.
      #
      SASL_SSL = "sasl-ssl"
    end

    # <p>Provides information that describes an Apache Kafka endpoint. This
    #          information includes the output format of records applied to the endpoint and details of
    #          transaction and control table data information.</p>
    #
    # @!attribute broker
    #   <p>A comma-separated list of one or more broker locations in your Kafka cluster that host your Kafka instance. Specify each broker location
    #            in the form <code>
    #                  <i>broker-hostname-or-ip</i>:<i>port</i>
    #               </code>. For example, <code>"ec2-12-345-678-901.compute-1.amazonaws.com:2345"</code>.
    #            For more information and examples of specifying a list of broker locations,
    #            see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html">Using Apache Kafka as a target for Database Migration Service</a>
    #            in the <i>Database Migration Service User Guide</i>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute topic
    #   <p>The topic to which you migrate the data. If you don't specify a topic, DMS
    #            specifies <code>"kafka-default-topic"</code> as the migration topic.</p>
    #
    #   @return [String]
    #
    # @!attribute message_format
    #   <p>The output format for the records created on the endpoint. The message format is
    #               <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no
    #            tab).</p>
    #
    #   Enum, one of: ["json", "json-unformatted"]
    #
    #   @return [String]
    #
    # @!attribute include_transaction_details
    #   <p>Provides detailed transaction information from the source database. This information
    #            includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
    #            previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
    #            offset within a transaction). The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_partition_value
    #   <p>Shows the partition value within the Kafka message output unless the partition type is
    #               <code>schema-table-type</code>. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute partition_include_schema_table
    #   <p>Prefixes schema and table names to partition values, when the partition type is
    #               <code>primary-key-type</code>. Doing this increases data distribution among Kafka
    #            partitions. For example, suppose that a SysBench schema has thousands of tables and each
    #            table has only limited range for a primary key. In this case, the same primary key is sent
    #            from thousands of tables to the same partition, which causes throttling. The default is
    #               <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_table_alter_operations
    #   <p>Includes any data definition language (DDL) operations that change the table in the
    #            control data, such as <code>rename-table</code>, <code>drop-table</code>,
    #               <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
    #            default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_control_details
    #   <p>Shows detailed control information for table definition, column definition, and table
    #            and column changes in the Kafka message output. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute message_max_bytes
    #   <p>The maximum size in bytes for records created on the endpoint The default is 1,000,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_null_and_empty
    #   <p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute security_protocol
    #   <p>Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include
    #            <code>ssl-encryption</code>, <code>ssl-authentication</code>, and <code>sasl-ssl</code>.
    #            <code>sasl-ssl</code> requires <code>SaslUsername</code> and <code>SaslPassword</code>.</p>
    #
    #   Enum, one of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #
    #   @return [String]
    #
    # @!attribute ssl_client_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the client certificate used to securely connect to a Kafka target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_client_key_arn
    #   <p>The Amazon Resource Name (ARN) for the client private key used to securely connect to a Kafka target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_client_key_password
    #   <p> The password for the client private key used to securely connect to a Kafka target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_ca_certificate_arn
    #   <p> The Amazon Resource Name (ARN) for the private certificate authority (CA) cert that DMS uses
    #            to securely connect to your Kafka target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute sasl_username
    #   <p> The secure user name you created when you first set up your MSK cluster to validate a
    #            client identity and make an encrypted connection between server and client using SASL-SSL
    #            authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute sasl_password
    #   <p>The secure password you created when you first set up your MSK cluster to validate a client identity and
    #            make an encrypted connection between server and client using SASL-SSL authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute no_hex_prefix
    #   <p>Set this optional parameter to <code>true</code> to avoid adding a '0x' prefix
    #            to raw data in hexadecimal format. For example, by default, DMS adds a '0x'
    #            prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka
    #            target. Use the <code>NoHexPrefix</code> endpoint setting to enable migration of RAW data
    #            type columns without adding the '0x' prefix.</p>
    #
    #   @return [Boolean]
    #
    KafkaSettings = ::Struct.new(
      :broker,
      :topic,
      :message_format,
      :include_transaction_details,
      :include_partition_value,
      :partition_include_schema_table,
      :include_table_alter_operations,
      :include_control_details,
      :message_max_bytes,
      :include_null_and_empty,
      :security_protocol,
      :ssl_client_certificate_arn,
      :ssl_client_key_arn,
      :ssl_client_key_password,
      :ssl_ca_certificate_arn,
      :sasl_username,
      :sasl_password,
      :no_hex_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::KafkaSettings "\
          "broker=#{broker || 'nil'}, "\
          "topic=#{topic || 'nil'}, "\
          "message_format=#{message_format || 'nil'}, "\
          "include_transaction_details=#{include_transaction_details || 'nil'}, "\
          "include_partition_value=#{include_partition_value || 'nil'}, "\
          "partition_include_schema_table=#{partition_include_schema_table || 'nil'}, "\
          "include_table_alter_operations=#{include_table_alter_operations || 'nil'}, "\
          "include_control_details=#{include_control_details || 'nil'}, "\
          "message_max_bytes=#{message_max_bytes || 'nil'}, "\
          "include_null_and_empty=#{include_null_and_empty || 'nil'}, "\
          "security_protocol=#{security_protocol || 'nil'}, "\
          "ssl_client_certificate_arn=#{ssl_client_certificate_arn || 'nil'}, "\
          "ssl_client_key_arn=#{ssl_client_key_arn || 'nil'}, "\
          "ssl_client_key_password=\"[SENSITIVE]\", "\
          "ssl_ca_certificate_arn=#{ssl_ca_certificate_arn || 'nil'}, "\
          "sasl_username=#{sasl_username || 'nil'}, "\
          "sasl_password=\"[SENSITIVE]\", "\
          "no_hex_prefix=#{no_hex_prefix || 'nil'}>"
      end
    end

    # <p>Provides information that describes an Amazon Kinesis Data Stream endpoint. This
    #          information includes the output format of records applied to the endpoint and details of
    #          transaction and control table data information.</p>
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute message_format
    #   <p>The output format for the records created on the endpoint. The message format is
    #            <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no tab).</p>
    #
    #   Enum, one of: ["json", "json-unformatted"]
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role
    #            that DMS uses to write to the Kinesis data stream.
    #            The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute include_transaction_details
    #   <p>Provides detailed transaction information from the source database. This information
    #            includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
    #            previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
    #            offset within a transaction). The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_partition_value
    #   <p>Shows the partition value within the Kinesis message output, unless the partition type
    #            is <code>schema-table-type</code>. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute partition_include_schema_table
    #   <p>Prefixes schema and table names to partition values, when the partition type is
    #               <code>primary-key-type</code>. Doing this increases data distribution among Kinesis
    #            shards. For example, suppose that a SysBench schema has thousands of tables and each table
    #            has only limited range for a primary key. In this case, the same primary key is sent from
    #            thousands of tables to the same shard, which causes throttling. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_table_alter_operations
    #   <p>Includes any data definition language (DDL) operations that change the table in the
    #            control data, such as <code>rename-table</code>, <code>drop-table</code>,
    #               <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
    #            default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_control_details
    #   <p>Shows detailed control information for table definition, column definition, and table
    #            and column changes in the Kinesis message output. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_null_and_empty
    #   <p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute no_hex_prefix
    #   <p>Set this optional parameter to <code>true</code> to avoid adding a '0x' prefix
    #            to raw data in hexadecimal format. For example, by default, DMS adds a '0x'
    #            prefix to the LOB column type in hexadecimal format moving from an Oracle source to an
    #            Amazon Kinesis target. Use the <code>NoHexPrefix</code> endpoint setting to enable
    #            migration of RAW data type columns without adding the '0x' prefix.</p>
    #
    #   @return [Boolean]
    #
    KinesisSettings = ::Struct.new(
      :stream_arn,
      :message_format,
      :service_access_role_arn,
      :include_transaction_details,
      :include_partition_value,
      :partition_include_schema_table,
      :include_table_alter_operations,
      :include_control_details,
      :include_null_and_empty,
      :no_hex_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DMS resource to
    #            list tags for. This returns a list of keys (names of tags) created for the resource and
    #            their associated tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn_list
    #   <p>List of ARNs that identify multiple DMS resources that you want to list tags for. This
    #            returns a list of keys (tag names) and their associated tag values. It also returns each
    #            tag's associated <code>ResourceArn</code> value, which is the ARN of the resource for which
    #            each listed tag is created. </p>
    #
    #   @return [Array<String>]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :resource_arn_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute tag_list
    #   <p>A list of tags for the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageFormatValue
    #
    module MessageFormatValue
      # No documentation available.
      #
      JSON = "json"

      # No documentation available.
      #
      JSON_UNFORMATTED = "json-unformatted"
    end

    # <p>Provides information that defines a Microsoft SQL Server endpoint.</p>
    #
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bcp_packet_size
    #   <p>The maximum size of the packets (in bytes) used to transfer
    #            data using BCP.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute control_tables_file_group
    #   <p>Specifies a file group for the DMS internal tables. When the replication task
    #            starts, all the internal DMS control tables (awsdms_ apply_exception, awsdms_apply,
    #            awsdms_changes) are created for the specified file group.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute query_single_always_on_node
    #   <p>Cleans and recreates table metadata information on the replication instance when
    #            a mismatch occurs. An example is a situation where running an alter DDL statement on
    #            a table might result in different information about the table cached in the replication
    #            instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute read_backup_only
    #   <p>When this attribute is set to <code>Y</code>, DMS only reads changes
    #            from transaction log backups and doesn't read from the
    #            active transaction log file during ongoing replication. Setting
    #            this parameter to <code>Y</code> enables you to control active transaction
    #            log file growth during full load and ongoing replication
    #            tasks. However, it can add some source latency to ongoing
    #            replication.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute safeguard_policy
    #   <p>Use this attribute to minimize the need to access the
    #            backup log and enable DMS to prevent truncation using one of the
    #            following two methods.</p>
    #            <p>
    #               <i>Start transactions in the database:</i> This is the default
    #            method. When this method is used, DMS prevents
    #            TLOG truncation by mimicking a transaction in the database.
    #            As long as such a transaction is open, changes that appear
    #            after the transaction started aren't truncated. If you need
    #            Microsoft Replication to be enabled in your database, then
    #            you must choose this method.</p>
    #            <p>
    #               <i>Exclusively use sp_repldone within a single task</i>: When
    #            this method is used, DMS reads the changes and then
    #            uses sp_repldone to mark the TLOG transactions as ready
    #            for truncation. Although this method doesn't involve any
    #            transactional activities, it can only be used when Microsoft
    #            Replication isn't running. Also, when using this method, only
    #            one DMS task can access the database at any given
    #            time. Therefore, if you need to run parallel DMS tasks
    #            against the same database, use the default method.</p>
    #
    #   Enum, one of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute use_bcp_full_load
    #   <p>Use this to attribute to transfer data for full-load operations
    #            using BCP. When the target table contains an identity
    #            column that does not exist in the source table, you must
    #            disable the use BCP for loading table option.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_third_party_backup_device
    #   <p>When this attribute is set to <code>Y</code>, DMS processes third-party
    #            transaction log backups if they are created in native format.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
    #             secret that allows access to the SQL Server endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the SQL Server endpoint connection details.</p>
    #
    #   @return [String]
    #
    MicrosoftSQLServerSettings = ::Struct.new(
      :port,
      :bcp_packet_size,
      :database_name,
      :control_tables_file_group,
      :password,
      :query_single_always_on_node,
      :read_backup_only,
      :safeguard_policy,
      :server_name,
      :username,
      :use_bcp_full_load,
      :use_third_party_backup_device,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::MicrosoftSQLServerSettings "\
          "port=#{port || 'nil'}, "\
          "bcp_packet_size=#{bcp_packet_size || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "control_tables_file_group=#{control_tables_file_group || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "query_single_always_on_node=#{query_single_always_on_node || 'nil'}, "\
          "read_backup_only=#{read_backup_only || 'nil'}, "\
          "safeguard_policy=#{safeguard_policy || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "use_bcp_full_load=#{use_bcp_full_load || 'nil'}, "\
          "use_third_party_backup_device=#{use_third_party_backup_device || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # Includes enum constants for MigrationTypeValue
    #
    module MigrationTypeValue
      # No documentation available.
      #
      FULL_LOAD = "full-load"

      # No documentation available.
      #
      CDC = "cdc"

      # No documentation available.
      #
      FULL_LOAD_AND_CDC = "full-load-and-cdc"
    end

    # <p></p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    #   Enum, one of: ["source", "target"]
    #
    #   @return [String]
    #
    # @!attribute engine_name
    #   <p>The type of engine for the endpoint. Valid values, depending on the EndpointType,
    #            include
    #            <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #            <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>, <code>"opensearch"</code>,
    #            <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"azuredb"</code>,
    #            <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #            <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #            <code>"documentdb"</code>, <code>"sqlserver"</code>, and <code>"neptune"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name to be used to login to the endpoint database.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password to be used to login to the endpoint database.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port used by the endpoint database.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify DatabaseName.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_connection_attributes
    #   <p>Additional attributes associated with the connection. To reset this parameter, pass the
    #            empty string ("") as an argument.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the endpoint.  The default value is <code>none</code>.</p>
    #
    #   Enum, one of: ["none", "require", "verify-ca", "verify-full"]
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the IAM role you want to use to modify
    #            the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute external_table_definition
    #   <p>The external table definition.</p>
    #
    #   @return [String]
    #
    # @!attribute dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other
    #               available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate
    #               Data to DynamoDB</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    #   @return [DynamoDbSettings]
    #
    # @!attribute s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #               the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [S3Settings]
    #
    # @!attribute dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Attributes include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the service access IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>BucketName - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string
    #               ,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn": "string",
    #               "BucketName": "string"} </code>
    #            </p>
    #
    #   @return [DmsTransferSettings]
    #
    # @!attribute mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html CHAP_Source.MongoDB.Configuration">Endpoint configuration settings
    #               when using MongoDB as a source for Database Migration Service</a> in the
    #            <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [MongoDbSettings]
    #
    # @!attribute kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html CHAP_Target.Kinesis.ObjectMapping">Using object mapping to
    #               migrate data to a Kinesis data stream</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [KinesisSettings]
    #
    # @!attribute kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html CHAP_Target.Kafka.ObjectMapping">Using object mapping
    #               to migrate data to a Kafka topic</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [KafkaSettings]
    #
    # @!attribute elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for DMS</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [ElasticsearchSettings]
    #
    # @!attribute neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target</a>
    #            in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [NeptuneSettings]
    #
    # @!attribute redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #
    #   @return [RedshiftSettings]
    #
    # @!attribute postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection
    #               attributes when using PostgreSQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html CHAP_Target.PostgreSQL.ConnectionAttrib">
    #               Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [PostgreSQLSettings]
    #
    # @!attribute my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html CHAP_Source.MySQL.ConnectionAttrib">Extra connection
    #               attributes when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html CHAP_Target.MySQL.ConnectionAttrib">Extra
    #               connection attributes when using a MySQL-compatible database as a target for DMS</a> in the <i>Database Migration Service User
    #            Guide.</i>
    #            </p>
    #
    #   @return [MySQLSettings]
    #
    # @!attribute oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.ConnectionAttrib">Extra connection
    #               attributes when using Oracle as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [OracleSettings]
    #
    # @!attribute sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html CHAP_Source.SAP.ConnectionAttrib">Extra connection attributes
    #               when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html CHAP_Target.SAP.ConnectionAttrib">Extra connection attributes
    #               when using SAP ASE as a target for DMS</a> in the <i>Database Migration Service
    #                   User Guide.</i>
    #            </p>
    #
    #   @return [SybaseSettings]
    #
    # @!attribute microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html CHAP_Source.SQLServer.ConnectionAttrib">Extra connection
    #               attributes when using SQL Server as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html CHAP_Target.SQLServer.ConnectionAttrib">
    #               Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [MicrosoftSQLServerSettings]
    #
    # @!attribute ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html CHAP_Source.DB2.ConnectionAttrib">Extra connection attributes
    #               when using Db2 LUW as a source for DMS</a> in the <i>Database Migration Service
    #                   User Guide.</i>
    #            </p>
    #
    #   @return [IBMDb2Settings]
    #
    # @!attribute doc_db_settings
    #   <p>Settings in JSON format for the source DocumentDB endpoint. For more information about the
    #            available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html"> Using DocumentDB as a Target for Database Migration Service
    #                </a> in the <i>Database Migration Service User
    #                  Guide.</i>
    #            </p>
    #
    #   @return [DocDbSettings]
    #
    # @!attribute redis_settings
    #   <p>Settings in JSON format for the Redis target endpoint.</p>
    #
    #   @return [RedisSettings]
    #
    # @!attribute exact_settings
    #   <p>If this attribute is Y, the current call to <code>ModifyEndpoint</code> replaces all
    #            existing endpoint settings with the exact settings that you specify in this call. If this
    #            attribute is N, the current call to <code>ModifyEndpoint</code> does two things: </p>
    #            <ul>
    #               <li>
    #                  <p>It replaces any endpoint settings that already exist with new values, for settings with the
    #                  same names.</p>
    #               </li>
    #               <li>
    #                  <p>It creates new endpoint settings that you specify in the call, for settings with different
    #                  names. </p>
    #               </li>
    #            </ul>
    #            <p>For example, if you call <code>create-endpoint ... --endpoint-settings '{"a":1}'
    #               ...</code>, the endpoint has the following endpoint settings: <code>'{"a":1}'</code>. If
    #            you then call <code>modify-endpoint ... --endpoint-settings '{"b":2}' ...</code> for the
    #            same endpoint, the endpoint has the following settings: <code>'{"a":1,"b":2}'</code>. </p>
    #            <p>However, suppose that you follow this with a call to <code>modify-endpoint ...
    #               --endpoint-settings '{"b":2}' --exact-settings ...</code> for that same endpoint again.
    #            Then the endpoint has the following settings: <code>'{"b":2}'</code>. All existing settings
    #            are replaced with the exact settings that you specify. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #
    #   @return [GcpMySQLSettings]
    #
    ModifyEndpointInput = ::Struct.new(
      :endpoint_arn,
      :endpoint_identifier,
      :endpoint_type,
      :engine_name,
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :extra_connection_attributes,
      :certificate_arn,
      :ssl_mode,
      :service_access_role_arn,
      :external_table_definition,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings,
      :kinesis_settings,
      :kafka_settings,
      :elasticsearch_settings,
      :neptune_settings,
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_settings,
      :microsoft_sql_server_settings,
      :ibm_db2_settings,
      :doc_db_settings,
      :redis_settings,
      :exact_settings,
      :gcp_my_sql_settings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::ModifyEndpointInput "\
          "endpoint_arn=#{endpoint_arn || 'nil'}, "\
          "endpoint_identifier=#{endpoint_identifier || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "engine_name=#{engine_name || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "server_name=#{server_name || 'nil'}, "\
          "port=#{port || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "extra_connection_attributes=#{extra_connection_attributes || 'nil'}, "\
          "certificate_arn=#{certificate_arn || 'nil'}, "\
          "ssl_mode=#{ssl_mode || 'nil'}, "\
          "service_access_role_arn=#{service_access_role_arn || 'nil'}, "\
          "external_table_definition=#{external_table_definition || 'nil'}, "\
          "dynamo_db_settings=#{dynamo_db_settings || 'nil'}, "\
          "s3_settings=#{s3_settings || 'nil'}, "\
          "dms_transfer_settings=#{dms_transfer_settings || 'nil'}, "\
          "mongo_db_settings=#{mongo_db_settings || 'nil'}, "\
          "kinesis_settings=#{kinesis_settings || 'nil'}, "\
          "kafka_settings=#{kafka_settings || 'nil'}, "\
          "elasticsearch_settings=#{elasticsearch_settings || 'nil'}, "\
          "neptune_settings=#{neptune_settings || 'nil'}, "\
          "redshift_settings=#{redshift_settings || 'nil'}, "\
          "postgre_sql_settings=#{postgre_sql_settings || 'nil'}, "\
          "my_sql_settings=#{my_sql_settings || 'nil'}, "\
          "oracle_settings=#{oracle_settings || 'nil'}, "\
          "sybase_settings=#{sybase_settings || 'nil'}, "\
          "microsoft_sql_server_settings=#{microsoft_sql_server_settings || 'nil'}, "\
          "ibm_db2_settings=#{ibm_db2_settings || 'nil'}, "\
          "doc_db_settings=#{doc_db_settings || 'nil'}, "\
          "redis_settings=#{redis_settings || 'nil'}, "\
          "exact_settings=#{exact_settings || 'nil'}, "\
          "gcp_my_sql_settings=#{gcp_my_sql_settings || 'nil'}>"
      end
    end

    # <p></p>
    #
    # @!attribute endpoint
    #   <p>The modified endpoint.</p>
    #
    #   @return [Endpoint]
    #
    ModifyEndpointOutput = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the DMS event notification subscription to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p> The type of DMS resource that generates the events you want to subscribe to. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p> A list of event categories for a source type that you want to subscribe to. Use the
    #               <code>DescribeEventCategories</code> action to see a list of event categories. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #            subscription. </p>
    #
    #   @return [Boolean]
    #
    ModifyEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute event_subscription
    #   <p>The modified event subscription.</p>
    #
    #   @return [EventSubscription]
    #
    ModifyEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to be allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute apply_immediately
    #   <p>Indicates whether the changes should be applied immediately or during the next
    #            maintenance window.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #            result in an outage. Changing this parameter does not result in an outage, except in the
    #            following situation, and the change is asynchronously applied as soon as possible. If
    #            moving this window to the current time, there must be at least 30 minutes between the
    #            current time and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
    #               <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>When modifying a major engine version of an instance, also set
    #            <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter does not
    #            result in an outage, and the change is asynchronously applied as soon as possible.</p>
    #            <p>This parameter must be set to <code>true</code> when specifying a value for the
    #               <code>EngineVersion</code> parameter that is a different major version than the
    #            replication instance's current version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates that minor version upgrades are applied automatically to the
    #            replication instance during the maintenance window. Changing this parameter doesn't result
    #            in an outage, except in the case described following. The change is asynchronously applied
    #            as soon as possible. </p>
    #            <p>An outage does result if these factors apply: </p>
    #            <ul>
    #               <li>
    #                  <p>This parameter is set to <code>true</code> during the maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>A newer minor version is available. </p>
    #               </li>
    #               <li>
    #                  <p>DMS has enabled automatic patching for the given engine version. </p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #
    #   @return [String]
    #
    ModifyReplicationInstanceInput = ::Struct.new(
      :replication_instance_arn,
      :allocated_storage,
      :apply_immediately,
      :replication_instance_class,
      :vpc_security_group_ids,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :allow_major_version_upgrade,
      :auto_minor_version_upgrade,
      :replication_instance_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.apply_immediately ||= false
        self.allow_major_version_upgrade ||= false
      end

    end

    # <p></p>
    #
    # @!attribute replication_instance
    #   <p>The modified replication instance.</p>
    #
    #   @return [ReplicationInstance]
    #
    ModifyReplicationInstanceOutput = ::Struct.new(
      :replication_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_subnet_group_identifier
    #   <p>The name of the replication instance subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_subnet_group_description
    #   <p>A description for the replication instance subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs.</p>
    #
    #   @return [Array<String>]
    #
    ModifyReplicationSubnetGroupInput = ::Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_subnet_group
    #   <p>The modified replication subnet group.</p>
    #
    #   @return [ReplicationSubnetGroup]
    #
    ModifyReplicationSubnetGroupOutput = ::Struct.new(
      :replication_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_identifier
    #   <p>The replication task identifier.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
    #            </p>
    #
    #   Enum, one of: ["full-load", "cdc", "full-load-and-cdc"]
    #
    #   @return [String]
    #
    # @!attribute table_mappings
    #   <p>When using the CLI or boto3, provide the path of the JSON file that contains the
    #            table mappings. Precede the path with <code>file://</code>.  For example,
    #            <code>--table-mappings file://mappingfile.json</code>. When working with the DMS  API,
    #            provide the JSON as the parameter value.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_settings
    #   <p>JSON file that contains settings for the task, such as task metadata settings.</p>
    #
    #   @return [String]
    #
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #
    #   @return [Time]
    #
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1 27 mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876 0 0 * 0 93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    #   @return [String]
    #
    # @!attribute task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    #               For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    #            <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    ModifyReplicationTaskInput = ::Struct.new(
      :replication_task_arn,
      :replication_task_identifier,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      :task_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p>The replication task that was modified.</p>
    #
    #   @return [ReplicationTask]
    #
    ModifyReplicationTaskOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that defines a MongoDB endpoint.</p>
    #
    # @!attribute username
    #   <p>The user name you use to access the MongoDB source endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password for the user account you use to access the MongoDB source endpoint.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p> The name of the server on the MongoDB source endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p> The port value for the MongoDB source endpoint. </p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p> The database name on the MongoDB source endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute auth_type
    #   <p> The authentication type you use to access the MongoDB source endpoint.</p>
    #            <p>When when set to <code>"no"</code>, user name and password parameters are not used and
    #            can be empty. </p>
    #
    #   Enum, one of: ["no", "password"]
    #
    #   @return [String]
    #
    # @!attribute auth_mechanism
    #   <p> The authentication mechanism you use to access the MongoDB source endpoint.</p>
    #            <p>For the default value, in MongoDB version 2.x, <code>"default"</code> is
    #               <code>"mongodb_cr"</code>. For MongoDB version 3.x or later, <code>"default"</code> is
    #               <code>"scram_sha_1"</code>. This setting isn't used when <code>AuthType</code> is
    #            set to <code>"no"</code>.</p>
    #
    #   Enum, one of: ["default", "mongodb_cr", "scram_sha_1"]
    #
    #   @return [String]
    #
    # @!attribute nesting_level
    #   <p> Specifies either document or table mode. </p>
    #            <p>Default value is <code>"none"</code>. Specify <code>"none"</code> to use document mode.
    #            Specify <code>"one"</code> to use table mode.</p>
    #
    #   Enum, one of: ["none", "one"]
    #
    #   @return [String]
    #
    # @!attribute extract_doc_id
    #   <p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to
    #               <code>"none"</code>. </p>
    #            <p>Default value is <code>"false"</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute docs_to_investigate
    #   <p> Indicates the number of documents to preview to determine the document organization.
    #            Use this setting when <code>NestingLevel</code> is set to <code>"one"</code>. </p>
    #            <p>Must be a positive value greater than <code>0</code>. Default value is
    #            <code>1000</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_source
    #   <p> The MongoDB database name. This setting isn't used when <code>AuthType</code> is
    #            set to <code>"no"</code>. </p>
    #            <p>The default is <code>"admin"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key identifier that is used to encrypt the content on the replication
    #            instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #            DMS uses your default encryption key. KMS creates the default encryption key for
    #            your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that allows access to the MongoDB endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the MongoDB endpoint connection details.</p>
    #
    #   @return [String]
    #
    MongoDbSettings = ::Struct.new(
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :auth_type,
      :auth_mechanism,
      :nesting_level,
      :extract_doc_id,
      :docs_to_investigate,
      :auth_source,
      :kms_key_id,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::MongoDbSettings "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "server_name=#{server_name || 'nil'}, "\
          "port=#{port || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "auth_type=#{auth_type || 'nil'}, "\
          "auth_mechanism=#{auth_mechanism || 'nil'}, "\
          "nesting_level=#{nesting_level || 'nil'}, "\
          "extract_doc_id=#{extract_doc_id || 'nil'}, "\
          "docs_to_investigate=#{docs_to_investigate || 'nil'}, "\
          "auth_source=#{auth_source || 'nil'}, "\
          "kms_key_id=#{kms_key_id || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that you want to move.</p>
    #
    #   @return [String]
    #
    # @!attribute target_replication_instance_arn
    #   <p>The ARN of the replication instance where you want to move the task to.</p>
    #
    #   @return [String]
    #
    MoveReplicationTaskInput = ::Struct.new(
      :replication_task_arn,
      :target_replication_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p>The replication task that was moved.</p>
    #
    #   @return [ReplicationTask]
    #
    MoveReplicationTaskOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that defines a MySQL endpoint.</p>
    #
    # @!attribute after_connect_script
    #   <p>Specifies a script to run immediately after DMS
    #            connects to the endpoint. The migration task continues
    #            running regardless if the SQL statement succeeds or fails.</p>
    #            <p>For this parameter, provide the code of the script itself, not the name of a file
    #            containing the script.</p>
    #
    #   @return [String]
    #
    # @!attribute clean_source_metadata_on_mismatch
    #   <p>Adjusts the behavior of DMS when migrating from an SQL Server source database
    #            that is hosted as part of an Always On availability group cluster.  If you need DMS to poll
    #            all the nodes in the Always On cluster for transaction backups, set this attribute to
    #            <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint. For a MySQL source or target endpoint, don't explicitly
    #            specify the database using the <code>DatabaseName</code> request parameter on either the
    #            <code>CreateEndpoint</code> or <code>ModifyEndpoint</code> API call. Specifying
    #            <code>DatabaseName</code> when you create or modify a MySQL endpoint replicates all the
    #            task tables to this single database. For MySQL endpoints, you specify the database only when
    #            you specify the schema in the table-mapping rules of the DMS task.</p>
    #
    #   @return [String]
    #
    # @!attribute events_poll_interval
    #   <p>Specifies how often to check the binary log for new
    #            changes/events when the database is idle. The default is five seconds.</p>
    #            <p>Example: <code>eventsPollInterval=5;</code>
    #            </p>
    #            <p>In the example, DMS checks for changes in the binary
    #            logs every five seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_db_type
    #   <p>Specifies where to migrate source tables on the target, either
    #            to a single database or multiple databases. If you specify
    #         <code>SPECIFIC_DATABASE</code>, specify the database name using the <code>DatabaseName</code>
    #         parameter of the <code>Endpoint</code> object.</p>
    #            <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code>
    #            </p>
    #
    #   Enum, one of: ["specific-database", "multiple-databases"]
    #
    #   @return [String]
    #
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of any .csv file used to
    #            transfer data to a MySQL-compatible database.</p>
    #            <p>Example: <code>maxFileSize=512</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute parallel_load_threads
    #   <p>Improves performance when loading data into the MySQL-compatible target database.
    #            Specifies how many threads to use to load the data into the MySQL-compatible target
    #            database. Setting a large number of threads can have an adverse effect on database
    #            performance, because a separate connection is required for each thread. The default is one.</p>
    #            <p>Example: <code>parallelLoadThreads=1</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute server_timezone
    #   <p>Specifies the time zone for the source MySQL database.</p>
    #            <p>Example: <code>serverTimezone=US/Pacific;</code>
    #            </p>
    #            <p>Note: Do not enclose time zones in single quotes.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
    #             secret that allows access to the MySQL endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the MySQL endpoint connection details.</p>
    #
    #   @return [String]
    #
    MySQLSettings = ::Struct.new(
      :after_connect_script,
      :clean_source_metadata_on_mismatch,
      :database_name,
      :events_poll_interval,
      :target_db_type,
      :max_file_size,
      :parallel_load_threads,
      :password,
      :port,
      :server_name,
      :server_timezone,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::MySQLSettings "\
          "after_connect_script=#{after_connect_script || 'nil'}, "\
          "clean_source_metadata_on_mismatch=#{clean_source_metadata_on_mismatch || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "events_poll_interval=#{events_poll_interval || 'nil'}, "\
          "target_db_type=#{target_db_type || 'nil'}, "\
          "max_file_size=#{max_file_size || 'nil'}, "\
          "parallel_load_threads=#{parallel_load_threads || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "server_timezone=#{server_timezone || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # <p>Provides information that defines an Amazon Neptune endpoint.</p>
    #
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role that you created for the Neptune
    #            target endpoint. The role must allow the <code>iam:PassRole</code> action.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html CHAP_Target.Neptune.ServiceRole">Creating an IAM Service Role for Accessing Amazon Neptune as a Target</a> in the <i>Database Migration Service User
    #               Guide. </i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket where DMS can temporarily store migrated graph data
    #            in .csv files before bulk-loading it to the Neptune target database. DMS maps the SQL
    #            source data to graph data before storing it in these .csv files.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_folder
    #   <p>A folder path where you want DMS to store migrated graph data in the S3 bucket
    #            specified by <code>S3BucketName</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute error_retry_duration
    #   <p>The number of milliseconds for DMS to wait to retry a bulk-load of migrated graph
    #            data to the Neptune target database before raising an error. The default is 250.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_file_size
    #   <p>The maximum size in kilobytes of migrated graph data stored in a .csv file before DMS
    #            bulk-loads the data to the Neptune target database. The default is 1,048,576 KB. If the
    #            bulk load is successful, DMS clears the bucket, ready to store the next batch of
    #            migrated graph data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retry_count
    #   <p>The number of times for DMS to retry a bulk load of migrated graph data to the
    #            Neptune target database before raising an error. The default is 5.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_auth_enabled
    #   <p>If you want Identity and Access Management (IAM) authorization enabled for this
    #            endpoint, set this parameter to <code>true</code>. Then attach the appropriate IAM policy
    #            document to your service role specified by <code>ServiceAccessRoleArn</code>. The default
    #            is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    NeptuneSettings = ::Struct.new(
      :service_access_role_arn,
      :s3_bucket_name,
      :s3_bucket_folder,
      :error_retry_duration,
      :max_file_size,
      :max_retry_count,
      :iam_auth_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NestingLevelValue
    #
    module NestingLevelValue
      # No documentation available.
      #
      NONE = "none"

      # No documentation available.
      #
      ONE = "one"
    end

    # <p>Provides information that defines an Oracle endpoint.</p>
    #
    # @!attribute add_supplemental_logging
    #   <p>Set this attribute to set up table-level supplemental logging
    #            for the Oracle database. This attribute enables PRIMARY KEY
    #            supplemental logging on all tables selected for a migration
    #            task.</p>
    #            <p>If you use this option, you still need to enable
    #            database-level supplemental logging.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute archived_log_dest_id
    #   <p>Specifies the ID of the destination for the archived redo logs. This value
    #            should be the same as a number in the dest_id column of the v$archived_log
    #            view. If you work with an additional redo log destination, use the
    #            <code>AdditionalArchivedLogDestId</code> option to specify the additional
    #            destination ID. Doing this improves performance by ensuring that the correct
    #            logs are accessed from the outset.</p>
    #
    #   @return [Integer]
    #
    # @!attribute additional_archived_log_dest_id
    #   <p>Set this attribute with <code>ArchivedLogDestId</code> in a primary/
    #            standby setup. This attribute is useful in the case of a
    #            switchover. In this case, DMS needs to know which
    #            destination to get archive redo logs from to read changes.
    #            This need arises because the previous primary instance is
    #            now a standby instance after switchover.</p>
    #            <p>Although DMS supports the use of the Oracle
    #            <code>RESETLOGS</code> option to open the database, never
    #            use <code>RESETLOGS</code> unless necessary. For additional
    #            information about <code>RESETLOGS</code>, see <a href="https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B">RMAN Data Repair Concepts</a> in the
    #            <i>Oracle Database Backup and Recovery User's Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute extra_archived_log_dest_ids
    #   <p>Specifies the IDs of one more destinations for one or more archived redo logs. These IDs
    #            are the values of the <code>dest_id</code> column in the <code>v$archived_log</code> view.
    #            Use this setting with the <code>archivedLogDestId</code> extra connection attribute in a
    #            primary-to-single setup or a primary-to-multiple-standby setup. </p>
    #            <p>This setting is useful in a switchover when you use an Oracle Data Guard database as a
    #            source. In this case, DMS needs information about what destination to get archive redo
    #            logs from to read changes. DMS needs this because after the switchover the previous
    #            primary is a standby instance. For example, in a primary-to-single standby setup you might
    #            apply the following settings. </p>
    #            <p>
    #               <code>archivedLogDestId=1; ExtraArchivedLogDestIds=[2]</code>
    #            </p>
    #            <p>In a primary-to-multiple-standby setup, you might apply the following settings.</p>
    #            <p>
    #               <code>archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]</code>
    #            </p>
    #            <p>Although DMS supports the use of the Oracle <code>RESETLOGS</code> option to open the
    #            database, never use <code>RESETLOGS</code> unless it's necessary. For more information
    #            about <code>RESETLOGS</code>, see <a href="https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B"> RMAN Data Repair Concepts</a> in the <i>Oracle Database Backup and Recovery
    #               User's Guide</i>.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute allow_select_nested_tables
    #   <p>Set this attribute to <code>true</code> to enable replication of Oracle
    #            tables containing columns that are nested tables or defined
    #            types.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parallel_asm_read_threads
    #   <p>Set this attribute to change the number of threads that DMS configures to perform a
    #            change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can
    #            specify an integer value between 2 (the default) and 8 (the maximum). Use this attribute
    #            together with the <code>readAheadBlocks</code> attribute.</p>
    #
    #   @return [Integer]
    #
    # @!attribute read_ahead_blocks
    #   <p>Set this attribute to change the number of read-ahead blocks that DMS configures to
    #            perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM).
    #            You can specify an integer value between 1000 (the default) and 200,000 (the
    #            maximum).</p>
    #
    #   @return [Integer]
    #
    # @!attribute access_alternate_directly
    #   <p>Set this attribute to <code>false</code> in order to use the Binary Reader
    #            to capture change data for an Amazon RDS for Oracle as the
    #            source. This tells the DMS instance to not access redo logs
    #            through any specified path prefix replacement using direct
    #            file access.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_alternate_folder_for_online
    #   <p>Set this attribute to <code>true</code> in order to use the Binary Reader
    #            to capture change data for an Amazon RDS for Oracle as
    #            the source. This tells the DMS instance to use any specified
    #            prefix replacement to access all online redo logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute oracle_path_prefix
    #   <p>Set this string attribute to the required value in order to use
    #            the Binary Reader to capture change data for an Amazon
    #            RDS for Oracle as the source. This value specifies the
    #            default Oracle root used to access the redo logs.</p>
    #
    #   @return [String]
    #
    # @!attribute use_path_prefix
    #   <p>Set this string attribute to the required value in order to use
    #            the Binary Reader to capture change data for an Amazon
    #            RDS for Oracle as the source. This value specifies the path
    #            prefix used to replace the default Oracle root to access the
    #            redo logs.</p>
    #
    #   @return [String]
    #
    # @!attribute replace_path_prefix
    #   <p>Set this attribute to true in order to use the Binary Reader
    #            to capture change data for an Amazon RDS for Oracle as the
    #            source. This setting tells DMS instance to replace the default
    #            Oracle root with the specified <code>usePathPrefix</code> setting to
    #            access the redo logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_homogenous_tablespace
    #   <p>Set this attribute to enable homogenous tablespace
    #            replication and create existing tables or indexes under the
    #            same tablespace on the target.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute direct_path_no_log
    #   <p>When set to <code>true</code>, this attribute helps to increase the
    #            commit rate on the Oracle target database by writing
    #            directly to tables and not writing a trail to database logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute archived_logs_only
    #   <p>When this field is set to <code>Y</code>, DMS only accesses the
    #            archived redo logs. If the archived redo logs are stored on
    #            Oracle ASM only, the DMS user account needs to be
    #            granted ASM privileges.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute asm_password
    #   <p>For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password.
    #            You can set this value from the <code>
    #                  <i>asm_user_password</i>
    #               </code> value.
    #            You set this value as part of the comma-separated value that you set to the
    #               <code>Password</code> request parameter when you create the endpoint to access
    #            transaction logs using Binary Reader. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source
    #               database</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute asm_server
    #   <p>For an Oracle source endpoint, your ASM server address. You can set this value from the
    #               <code>asm_server</code> value. You set <code>asm_server</code> as part of the extra
    #            connection attribute string to access an Oracle server with Binary Reader that uses ASM.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source
    #               database</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute asm_user
    #   <p>For an Oracle source endpoint, your ASM user name. You can set this value from the
    #               <code>asm_user</code> value. You set <code>asm_user</code> as part of the extra
    #            connection attribute string to access an Oracle server with Binary Reader that uses ASM.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source
    #               database</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute char_length_semantics
    #   <p>Specifies whether the length of a character column is in
    #            bytes or in characters. To indicate that the character column
    #            length is in characters, set this attribute to <code>CHAR</code>. Otherwise,
    #            the character column length is in bytes.</p>
    #            <p>Example: <code>charLengthSemantics=CHAR;</code>
    #            </p>
    #
    #   Enum, one of: ["default", "char", "byte"]
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_path_parallel_load
    #   <p>When set to <code>true</code>, this attribute specifies a parallel load
    #            when <code>useDirectPathFullLoad</code> is set to <code>Y</code>. This attribute
    #            also only applies when you use the DMS parallel load
    #            feature.  Note that the target table cannot have any constraints or indexes.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute fail_tasks_on_lob_truncation
    #   <p>When set to <code>true</code>, this attribute causes a task to fail if the
    #            actual size of an LOB column is greater than the specified
    #            <code>LobMaxSize</code>.</p>
    #            <p>If a task is set to limited LOB mode and this option is set to
    #            <code>true</code>, the task fails instead of truncating the LOB data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_datatype_scale
    #   <p>Specifies the number scale. You can select a scale up to 38,
    #            or you can select FLOAT. By default, the NUMBER data type
    #            is converted to precision 38, scale 10.</p>
    #            <p>Example: <code>numberDataTypeScale=12</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute read_table_space_name
    #   <p>When set to <code>true</code>, this attribute supports tablespace
    #            replication.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retry_interval
    #   <p>Specifies the number of seconds that the system waits
    #            before resending a query.</p>
    #            <p>Example: <code>retryInterval=6;</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute security_db_encryption
    #   <p>For an Oracle source endpoint, the transparent data encryption (TDE) password required
    #            by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader. It is also the
    #                  <code>
    #                  <i>TDE_Password</i>
    #               </code> part of the comma-separated value you
    #            set to the <code>Password</code> request parameter when you create the endpoint. The
    #               <code>SecurityDbEncryptian</code> setting is related to this
    #               <code>SecurityDbEncryptionName</code> setting. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.Encryption"> Supported encryption methods for using Oracle as a source for DMS
    #               </a> in the <i>Database Migration Service User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute security_db_encryption_name
    #   <p>For an Oracle source endpoint, the name of a key used for the transparent data
    #            encryption (TDE) of the columns and tablespaces in an Oracle source database that is
    #            encrypted using TDE. The key value is the value of the <code>SecurityDbEncryption</code>
    #            setting. For more information on setting the key name value of
    #               <code>SecurityDbEncryptionName</code>, see the information and example for setting the
    #               <code>securityDbEncryptionName</code> extra connection attribute in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.Encryption"> Supported encryption methods for using Oracle as a source for DMS
    #               </a> in the <i>Database Migration Service User
    #            Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute spatial_data_option_to_geo_json_function_name
    #   <p>Use this attribute to convert <code>SDO_GEOMETRY</code> to
    #            <code>GEOJSON</code> format. By default, DMS calls the
    #            <code>SDO2GEOJSON</code> custom function if present and accessible.
    #            Or you can create your own custom function that mimics the operation of
    #            <code>SDOGEOJSON</code> and set
    #            <code>SpatialDataOptionToGeoJsonFunctionName</code> to call it instead. </p>
    #
    #   @return [String]
    #
    # @!attribute standby_delay_time
    #   <p>Use this attribute to specify a time in minutes for the delay in standby sync. If the
    #            source is an Oracle Active Data Guard standby database, use this attribute to specify the
    #            time lag between primary and standby databases.</p>
    #            <p>In DMS, you can create an Oracle CDC task that uses an Active Data Guard standby
    #            instance as a source for replicating ongoing changes. Doing this eliminates the need to connect
    #            to an active database that might be in production.</p>
    #
    #   @return [Integer]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute use_b_file
    #   <p>Set this attribute to Y to capture change data using the Binary Reader utility. Set
    #               <code>UseLogminerReader</code> to N to set this attribute to Y. To use Binary Reader
    #            with Amazon RDS for Oracle as the source, you set additional attributes. For more information
    #            about using this setting with Oracle Automatic Storage Management (ASM), see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.CDC"> Using Oracle LogMiner or DMS Binary Reader for
    #            CDC</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_direct_path_full_load
    #   <p>Set this attribute to Y to have DMS use a direct path full load.
    #            Specify this value to use the direct path protocol in the Oracle Call Interface (OCI).
    #            By using this OCI protocol, you can bulk-load Oracle target tables during a full load.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_logminer_reader
    #   <p>Set this attribute to Y to capture change data using the Oracle LogMiner utility (the
    #            default). Set this attribute to N if you want to access the redo logs as a binary file.
    #            When you set <code>UseLogminerReader</code> to N, also set <code>UseBfile</code> to Y. For
    #            more information on this setting and using Oracle ASM, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html CHAP_Source.Oracle.CDC"> Using Oracle LogMiner or DMS Binary Reader for CDC</a> in
    #            the <i>DMS User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
    #             secret that allows access to the Oracle endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the Oracle endpoint connection details.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_oracle_asm_access_role_arn
    #   <p>Required only if your Oracle endpoint uses Advanced Storage Manager (ASM). The full ARN
    #            of the IAM role that specifies DMS as the trusted entity and grants the required
    #            permissions to access the <code>SecretsManagerOracleAsmSecret</code>. This
    #               <code>SecretsManagerOracleAsmSecret</code> has the secret value that allows access to
    #            the Oracle ASM of the endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerOracleAsmSecretId</code>. Or you can
    #               specify clear-text values for <code>AsmUserName</code>, <code>AsmPassword</code>, and
    #                  <code>AsmServerName</code>. You can't specify both. For more information on
    #               creating this <code>SecretsManagerOracleAsmSecret</code> and the
    #                  <code>SecretsManagerOracleAsmAccessRoleArn</code> and
    #                  <code>SecretsManagerOracleAsmSecretId</code> required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_oracle_asm_secret_id
    #   <p>Required only if your Oracle endpoint uses Advanced Storage Manager (ASM). The full ARN, partial ARN, or friendly name of the <code>SecretsManagerOracleAsmSecret</code>
    #            that contains the Oracle ASM connection details for the Oracle endpoint.</p>
    #
    #   @return [String]
    #
    OracleSettings = ::Struct.new(
      :add_supplemental_logging,
      :archived_log_dest_id,
      :additional_archived_log_dest_id,
      :extra_archived_log_dest_ids,
      :allow_select_nested_tables,
      :parallel_asm_read_threads,
      :read_ahead_blocks,
      :access_alternate_directly,
      :use_alternate_folder_for_online,
      :oracle_path_prefix,
      :use_path_prefix,
      :replace_path_prefix,
      :enable_homogenous_tablespace,
      :direct_path_no_log,
      :archived_logs_only,
      :asm_password,
      :asm_server,
      :asm_user,
      :char_length_semantics,
      :database_name,
      :direct_path_parallel_load,
      :fail_tasks_on_lob_truncation,
      :number_datatype_scale,
      :password,
      :port,
      :read_table_space_name,
      :retry_interval,
      :security_db_encryption,
      :security_db_encryption_name,
      :server_name,
      :spatial_data_option_to_geo_json_function_name,
      :standby_delay_time,
      :username,
      :use_b_file,
      :use_direct_path_full_load,
      :use_logminer_reader,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :secrets_manager_oracle_asm_access_role_arn,
      :secrets_manager_oracle_asm_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::OracleSettings "\
          "add_supplemental_logging=#{add_supplemental_logging || 'nil'}, "\
          "archived_log_dest_id=#{archived_log_dest_id || 'nil'}, "\
          "additional_archived_log_dest_id=#{additional_archived_log_dest_id || 'nil'}, "\
          "extra_archived_log_dest_ids=#{extra_archived_log_dest_ids || 'nil'}, "\
          "allow_select_nested_tables=#{allow_select_nested_tables || 'nil'}, "\
          "parallel_asm_read_threads=#{parallel_asm_read_threads || 'nil'}, "\
          "read_ahead_blocks=#{read_ahead_blocks || 'nil'}, "\
          "access_alternate_directly=#{access_alternate_directly || 'nil'}, "\
          "use_alternate_folder_for_online=#{use_alternate_folder_for_online || 'nil'}, "\
          "oracle_path_prefix=#{oracle_path_prefix || 'nil'}, "\
          "use_path_prefix=#{use_path_prefix || 'nil'}, "\
          "replace_path_prefix=#{replace_path_prefix || 'nil'}, "\
          "enable_homogenous_tablespace=#{enable_homogenous_tablespace || 'nil'}, "\
          "direct_path_no_log=#{direct_path_no_log || 'nil'}, "\
          "archived_logs_only=#{archived_logs_only || 'nil'}, "\
          "asm_password=\"[SENSITIVE]\", "\
          "asm_server=#{asm_server || 'nil'}, "\
          "asm_user=#{asm_user || 'nil'}, "\
          "char_length_semantics=#{char_length_semantics || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "direct_path_parallel_load=#{direct_path_parallel_load || 'nil'}, "\
          "fail_tasks_on_lob_truncation=#{fail_tasks_on_lob_truncation || 'nil'}, "\
          "number_datatype_scale=#{number_datatype_scale || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "read_table_space_name=#{read_table_space_name || 'nil'}, "\
          "retry_interval=#{retry_interval || 'nil'}, "\
          "security_db_encryption=\"[SENSITIVE]\", "\
          "security_db_encryption_name=#{security_db_encryption_name || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "spatial_data_option_to_geo_json_function_name=#{spatial_data_option_to_geo_json_function_name || 'nil'}, "\
          "standby_delay_time=#{standby_delay_time || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "use_b_file=#{use_b_file || 'nil'}, "\
          "use_direct_path_full_load=#{use_direct_path_full_load || 'nil'}, "\
          "use_logminer_reader=#{use_logminer_reader || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}, "\
          "secrets_manager_oracle_asm_access_role_arn=#{secrets_manager_oracle_asm_access_role_arn || 'nil'}, "\
          "secrets_manager_oracle_asm_secret_id=#{secrets_manager_oracle_asm_secret_id || 'nil'}>"
      end
    end

    # <p>In response to the <code>DescribeOrderableReplicationInstances</code> operation, this
    #          object describes an available replication instance. This description includes the
    #          replication instance's type, engine version, and allocated storage.</p>
    #
    # @!attribute engine_version
    #   <p>The version of the replication engine.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>The type of storage used by the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute min_allocated_storage
    #   <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_allocated_storage
    #   <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_allocated_storage
    #   <p>The default amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute included_allocated_storage
    #   <p>The amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>List of Availability Zones for this replication instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute release_status
    #   <p>The value returned when the specified <code>EngineVersion</code> of the replication
    #            instance is in Beta or test mode. This indicates some features might not work as expected.</p>
    #            <note>
    #               <p>DMS supports the <code>ReleaseStatus</code> parameter in versions 3.1.4 and later.</p>
    #            </note>
    #
    #   Enum, one of: ["beta"]
    #
    #   @return [String]
    #
    OrderableReplicationInstance = ::Struct.new(
      :engine_version,
      :replication_instance_class,
      :storage_type,
      :min_allocated_storage,
      :max_allocated_storage,
      :default_allocated_storage,
      :included_allocated_storage,
      :availability_zones,
      :release_status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.min_allocated_storage ||= 0
        self.max_allocated_storage ||= 0
        self.default_allocated_storage ||= 0
        self.included_allocated_storage ||= 0
      end

    end

    # Includes enum constants for ParquetVersionValue
    #
    module ParquetVersionValue
      # No documentation available.
      #
      PARQUET_1_0 = "parquet-1-0"

      # No documentation available.
      #
      PARQUET_2_0 = "parquet-2-0"
    end

    # <p>Describes a maintenance action pending for an DMS resource, including when and how
    #          it will be applied. This data type is a response element to the
    #             <code>DescribePendingMaintenanceActions</code> operation.</p>
    #
    # @!attribute action
    #   <p>The type of pending maintenance action that is available for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_applied_after_date
    #   <p>The date of the maintenance window when the action is to be applied. The maintenance
    #            action is applied to the resource during its first maintenance window after this date. If
    #            this date is specified, any <code>next-maintenance</code> opt-in requests are
    #            ignored.</p>
    #
    #   @return [Time]
    #
    # @!attribute forced_apply_date
    #   <p>The date when the maintenance action will be automatically applied. The maintenance
    #            action is applied to the resource on this date regardless of the maintenance window for the
    #            resource. If this date is specified, any <code>immediate</code> opt-in requests are
    #            ignored.</p>
    #
    #   @return [Time]
    #
    # @!attribute opt_in_status
    #   <p>The type of opt-in request that has been received for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute current_apply_date
    #   <p>The effective date when the pending maintenance action will be applied to the resource.
    #            This date takes into account opt-in requests received from the
    #               <code>ApplyPendingMaintenanceAction</code> API operation, and also the
    #               <code>AutoAppliedAfterDate</code> and <code>ForcedApplyDate</code> parameter values.
    #            This value is blank if an opt-in request has not been received and nothing has been
    #            specified for <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>A description providing more detail about the maintenance action.</p>
    #
    #   @return [String]
    #
    PendingMaintenanceAction = ::Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PluginNameValue
    #
    module PluginNameValue
      # No documentation available.
      #
      NO_PREFERENCE = "no-preference"

      # No documentation available.
      #
      TEST_DECODING = "test-decoding"

      # No documentation available.
      #
      PGLOGICAL = "pglogical"
    end

    # <p>Provides information that defines a PostgreSQL endpoint.</p>
    #
    # @!attribute after_connect_script
    #   <p>For use with change data capture (CDC) only, this attribute
    #            has DMS bypass foreign keys and user triggers to
    #            reduce the time it takes to bulk load data.</p>
    #            <p>Example: <code>afterConnectScript=SET
    #            session_replication_role='replica'</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute capture_ddls
    #   <p>To capture DDL events, DMS creates various artifacts in
    #            the PostgreSQL database when the task starts. You can later
    #            remove these artifacts.</p>
    #            <p>If this value is set to <code>N</code>, you don't have to create tables or
    #            triggers on the source database.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of any .csv file used to
    #            transfer data to PostgreSQL.</p>
    #            <p>Example: <code>maxFileSize=512</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute ddl_artifacts_schema
    #   <p>The schema in which the operational DDL database artifacts
    #            are created.</p>
    #            <p>Example: <code>ddlArtifactsSchema=xyzddlschema;</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute execute_timeout
    #   <p>Sets the client statement timeout for the PostgreSQL
    #            instance, in seconds. The default value is 60 seconds.</p>
    #            <p>Example: <code>executeTimeout=100;</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute fail_tasks_on_lob_truncation
    #   <p>When set to <code>true</code>, this value causes a task to fail if the
    #            actual size of a LOB column is greater than the specified
    #            <code>LobMaxSize</code>.</p>
    #            <p>If task is set to Limited LOB mode and this option is set to
    #            true, the task fails instead of truncating the LOB data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute heartbeat_enable
    #   <p>The write-ahead log (WAL) heartbeat feature mimics a dummy transaction. By doing this,
    #            it prevents idle logical replication slots from holding onto old WAL logs, which can result in
    #            storage full situations on the source. This heartbeat keeps <code>restart_lsn</code> moving
    #            and prevents storage full scenarios.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute heartbeat_schema
    #   <p>Sets the schema in which the heartbeat artifacts are created.</p>
    #
    #   @return [String]
    #
    # @!attribute heartbeat_frequency
    #   <p>Sets the WAL heartbeat frequency (in minutes).</p>
    #
    #   @return [Integer]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Endpoint TCP port. The default is 5432.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_name
    #   <p>Sets the name of a previously created logical replication slot
    #            for a change data capture (CDC) load of the PostgreSQL source instance. </p>
    #            <p>When used with the <code>CdcStartPosition</code>
    #            request parameter for the DMS API , this attribute also makes it possible to use native CDC
    #            start points. DMS verifies that the specified logical
    #            replication slot exists before starting the CDC load task. It
    #            also verifies that the task was created with a valid setting of
    #            <code>CdcStartPosition</code>. If the specified slot
    #            doesn't exist or the task doesn't have a valid
    #            <code>CdcStartPosition</code> setting, DMS raises an
    #            error.</p>
    #            <p>For more information about setting the <code>CdcStartPosition</code> request parameter,
    #            see <a href="dms/latest/userguide/CHAP_Task.CDC.html CHAP_Task.CDC.StartPoint.Native">Determining a CDC native start point</a> in the <i>Database Migration Service User
    #               Guide</i>. For more information about using <code>CdcStartPosition</code>, see
    #               <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html">CreateReplicationTask</a>, <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">StartReplicationTask</a>, and <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html">ModifyReplicationTask</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute plugin_name
    #   <p>Specifies the plugin to use to create a replication slot.</p>
    #
    #   Enum, one of: ["no-preference", "test-decoding", "pglogical"]
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
    #             secret that allows access to the PostgreSQL endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the PostgreSQL endpoint connection details.</p>
    #
    #   @return [String]
    #
    PostgreSQLSettings = ::Struct.new(
      :after_connect_script,
      :capture_ddls,
      :max_file_size,
      :database_name,
      :ddl_artifacts_schema,
      :execute_timeout,
      :fail_tasks_on_lob_truncation,
      :heartbeat_enable,
      :heartbeat_schema,
      :heartbeat_frequency,
      :password,
      :port,
      :server_name,
      :username,
      :slot_name,
      :plugin_name,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::PostgreSQLSettings "\
          "after_connect_script=#{after_connect_script || 'nil'}, "\
          "capture_ddls=#{capture_ddls || 'nil'}, "\
          "max_file_size=#{max_file_size || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "ddl_artifacts_schema=#{ddl_artifacts_schema || 'nil'}, "\
          "execute_timeout=#{execute_timeout || 'nil'}, "\
          "fail_tasks_on_lob_truncation=#{fail_tasks_on_lob_truncation || 'nil'}, "\
          "heartbeat_enable=#{heartbeat_enable || 'nil'}, "\
          "heartbeat_schema=#{heartbeat_schema || 'nil'}, "\
          "heartbeat_frequency=#{heartbeat_frequency || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "slot_name=#{slot_name || 'nil'}, "\
          "plugin_name=#{plugin_name || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute force_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ
    #            failover. If the instance isn't configured for Multi-AZ, then you can't specify
    #            <code>true</code>.  ( <code>--force-planned-failover</code> and <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    #
    #   @return [Boolean]
    #
    # @!attribute force_planned_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a planned Multi-AZ failover
    #            where resources are released and cleaned up prior to conducting the failover.
    #            If the instance isn''t configured for Multi-AZ, then you can't specify <code>true</code>.
    #            ( <code>--force-planned-failover</code> and <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    #
    #   @return [Boolean]
    #
    RebootReplicationInstanceInput = ::Struct.new(
      :replication_instance_arn,
      :force_failover,
      :force_planned_failover,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_instance
    #   <p>The replication instance that is being rebooted. </p>
    #
    #   @return [ReplicationInstance]
    #
    RebootReplicationInstanceOutput = ::Struct.new(
      :replication_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RedisAuthTypeValue
    #
    module RedisAuthTypeValue
      # No documentation available.
      #
      NONE = "none"

      # No documentation available.
      #
      AUTH_ROLE = "auth-role"

      # No documentation available.
      #
      AUTH_TOKEN = "auth-token"
    end

    # <p>Provides information that defines a Redis target endpoint.</p>
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Transmission Control Protocol (TCP) port for the endpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ssl_security_protocol
    #   <p>The connection to a Redis target endpoint using Transport Layer Security (TLS). Valid
    #            values include <code>plaintext</code> and <code>ssl-encryption</code>. The default is
    #               <code>ssl-encryption</code>. The <code>ssl-encryption</code> option makes an encrypted
    #            connection. Optionally, you can identify an Amazon Resource Name (ARN) for an SSL certificate authority (CA)
    #             using the <code>SslCaCertificateArn </code>setting. If an ARN isn't given for a CA, DMS
    #            uses the Amazon root CA.</p>
    #            <p>The <code>plaintext</code> option doesn't provide Transport Layer Security (TLS)
    #            encryption for traffic between endpoint and database.</p>
    #
    #   Enum, one of: ["plaintext", "ssl-encryption"]
    #
    #   @return [String]
    #
    # @!attribute auth_type
    #   <p>The type of authentication to perform when connecting to a Redis target. Options include
    #               <code>none</code>, <code>auth-token</code>, and <code>auth-role</code>. The
    #               <code>auth-token</code> option requires an <code>AuthPassword</code> value to be provided. The
    #            <code>auth-role</code> option requires <code>AuthUserName</code> and <code>AuthPassword</code> values
    #            to be provided.</p>
    #
    #   Enum, one of: ["none", "auth-role", "auth-token"]
    #
    #   @return [String]
    #
    # @!attribute auth_user_name
    #   <p>The user name provided with the <code>auth-role</code> option of the
    #            <code>AuthType</code> setting for a Redis target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_password
    #   <p>The password provided with the <code>auth-role</code> and
    #            <code>auth-token</code> options of the <code>AuthType</code> setting for a Redis
    #            target endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_ca_certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to
    #            connect to your Redis target endpoint.</p>
    #
    #   @return [String]
    #
    RedisSettings = ::Struct.new(
      :server_name,
      :port,
      :ssl_security_protocol,
      :auth_type,
      :auth_user_name,
      :auth_password,
      :ssl_ca_certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.port ||= 0
      end

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::RedisSettings "\
          "server_name=#{server_name || 'nil'}, "\
          "port=#{port || 'nil'}, "\
          "ssl_security_protocol=#{ssl_security_protocol || 'nil'}, "\
          "auth_type=#{auth_type || 'nil'}, "\
          "auth_user_name=#{auth_user_name || 'nil'}, "\
          "auth_password=\"[SENSITIVE]\", "\
          "ssl_ca_certificate_arn=#{ssl_ca_certificate_arn || 'nil'}>"
      end
    end

    # <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #
    # @!attribute accept_any_date
    #   <p>A value that indicates to allow any date format, including invalid formats such as
    #            00/00/00 00:00:00, to be loaded without generating an error. You can choose
    #               <code>true</code> or <code>false</code> (the default).</p>
    #            <p>This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with
    #            the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT
    #            specification, Amazon Redshift inserts a NULL value into that field. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute after_connect_script
    #   <p>Code to run after connecting. This parameter should contain the code itself, not the
    #            name of a file containing the code.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_folder
    #   <p>An S3 folder where the comma-separated-value (.csv) files are stored before being
    #            uploaded to the target Redshift cluster. </p>
    #            <p>For full load mode, DMS converts source records into .csv files and loads them to
    #            the <i>BucketFolder/TableID</i> path. DMS uses the Redshift
    #               <code>COPY</code> command to upload the .csv files to the target table. The files are
    #            deleted once the <code>COPY</code> operation has finished. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html">COPY</a> in the
    #               <i>Amazon Redshift Database Developer Guide</i>.</p>
    #            <p>For change-data-capture (CDC) mode, DMS creates a <i>NetChanges</i> table,
    #            and loads the .csv files to this <i>BucketFolder/NetChangesTableID</i> path.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The name of the intermediate S3 bucket used to store .csv files before uploading data to Redshift.</p>
    #
    #   @return [String]
    #
    # @!attribute case_sensitive_names
    #   <p>If Amazon Redshift is configured to support case sensitive schema names, set
    #               <code>CaseSensitiveNames</code> to <code>true</code>. The default is
    #            <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute comp_update
    #   <p>If you set <code>CompUpdate</code> to <code>true</code> Amazon Redshift applies
    #            automatic compression if the table is empty. This applies even if the table columns already
    #            have encodings other than <code>RAW</code>. If you set <code>CompUpdate</code> to
    #               <code>false</code>, automatic compression is disabled and existing column encodings
    #            aren't changed. The default is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute connection_timeout
    #   <p>A value that sets the amount of time to wait (in milliseconds) before timing out,
    #            beginning from when you initially establish a connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>The name of the Amazon Redshift data warehouse (service) that you are working
    #            with.</p>
    #
    #   @return [String]
    #
    # @!attribute date_format
    #   <p>The date format that you are using. Valid values are <code>auto</code> (case-sensitive),
    #            your date format string enclosed in quotes, or NULL. If this parameter is left unset
    #            (NULL), it defaults to a format of 'YYYY-MM-DD'. Using <code>auto</code> recognizes most
    #            strings, even some that aren't supported when you use a date format string. </p>
    #            <p>If your date and time values use formats different from each other, set this to
    #            <code>auto</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute empty_as_null
    #   <p>A value that specifies whether DMS should migrate empty CHAR and VARCHAR fields as
    #            NULL. A value of <code>true</code> sets empty CHAR and VARCHAR fields to null. The default
    #            is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_mode
    #   <p>The type of server-side encryption that you want to use for your data. This encryption
    #            type is part of the endpoint settings or the extra connections attributes for Amazon S3.
    #            You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p>
    #            <note>
    #               <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of the
    #                  <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to
    #                  <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code>
    #               to <code>SSE_KMS</code>.</p>
    #            </note>
    #            <p>To use <code>SSE_S3</code>, create an Identity and Access Management (IAM) role with
    #            a policy that allows <code>"arn:aws:s3:::*"</code> to use the following actions:
    #               <code>"s3:PutObject", "s3:ListBucket"</code>
    #            </p>
    #
    #   Enum, one of: ["sse-s3", "sse-kms"]
    #
    #   @return [String]
    #
    # @!attribute explicit_ids
    #   <p>This setting is only valid for a full-load migration task. Set <code>ExplicitIds</code>
    #            to <code>true</code> to have tables with <code>IDENTITY</code> columns override their
    #            auto-generated values with explicit values loaded from the source data files used to
    #            populate the tables. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute file_transfer_upload_streams
    #   <p>The number of threads used to upload a single file. This parameter accepts a value from
    #            1 through 64. It defaults to 10.</p>
    #            <p>The number of parallel streams used to upload a single .csv file to an S3 bucket using
    #            S3 Multipart Upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart upload
    #               overview</a>. </p>
    #            <p>
    #               <code>FileTransferUploadStreams</code> accepts a value from 1 through 64. It
    #            defaults to 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute load_timeout
    #   <p>The amount of time to wait (in milliseconds) before timing out of operations performed
    #               by DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_file_size
    #   <p>The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer
    #               data to Amazon Redshift. It defaults to 1048576KB (1 GB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute password
    #   <p>The password for the user named in the <code>username</code> property.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number for Amazon Redshift. The default value is 5439.</p>
    #
    #   @return [Integer]
    #
    # @!attribute remove_quotes
    #   <p>A value that specifies to remove surrounding quotation marks from strings in the
    #            incoming data. All characters within the quotation marks, including delimiters, are
    #            retained. Choose <code>true</code> to remove quotation marks. The default is
    #               <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replace_invalid_chars
    #   <p>A list of characters that you want to replace. Use with
    #            <code>ReplaceChars</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute replace_chars
    #   <p>A value that specifies to replaces the invalid characters specified in
    #            <code>ReplaceInvalidChars</code>, substituting the specified characters instead. The
    #            default is <code>"?"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>The name of the Amazon Redshift cluster you are using.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift
    #            service. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_kms_key_id
    #   <p>The KMS key ID. If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>,
    #            provide this key ID. The key that you use needs an attached policy that enables IAM user
    #            permissions and allows use of the key.</p>
    #
    #   @return [String]
    #
    # @!attribute time_format
    #   <p>The time format that you want to use. Valid values are <code>auto</code>
    #            (case-sensitive), <code>'timeformat_string'</code>, <code>'epochsecs'</code>, or
    #            <code>'epochmillisecs'</code>. It defaults to 10. Using <code>auto</code> recognizes
    #            most strings, even some that aren't supported when you use a time format string. </p>
    #            <p>If your date and time values use formats different from each other, set this parameter
    #            to <code>auto</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute trim_blanks
    #   <p>A value that specifies to remove the trailing white space characters from a VARCHAR
    #            string. This parameter applies only to columns with a VARCHAR data type. Choose
    #               <code>true</code> to remove unneeded white space. The default is
    #            <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute truncate_columns
    #   <p>A value that specifies to truncate data in columns to the appropriate number of
    #            characters, so that the data fits in the column. This parameter applies only to columns
    #            with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose
    #               <code>true</code> to truncate data. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute username
    #   <p>An Amazon Redshift user name for a registered user.</p>
    #
    #   @return [String]
    #
    # @!attribute write_buffer_size
    #   <p>The size (in KB) of the in-memory file write buffer used when generating .csv files
    #            on the local disk at the DMS replication instance. The default value is 1000
    #            (buffer size is 1000KB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that allows access to the Amazon Redshift endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the Amazon Redshift endpoint connection details.</p>
    #
    #   @return [String]
    #
    RedshiftSettings = ::Struct.new(
      :accept_any_date,
      :after_connect_script,
      :bucket_folder,
      :bucket_name,
      :case_sensitive_names,
      :comp_update,
      :connection_timeout,
      :database_name,
      :date_format,
      :empty_as_null,
      :encryption_mode,
      :explicit_ids,
      :file_transfer_upload_streams,
      :load_timeout,
      :max_file_size,
      :password,
      :port,
      :remove_quotes,
      :replace_invalid_chars,
      :replace_chars,
      :server_name,
      :service_access_role_arn,
      :server_side_encryption_kms_key_id,
      :time_format,
      :trim_blanks,
      :truncate_columns,
      :username,
      :write_buffer_size,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::RedshiftSettings "\
          "accept_any_date=#{accept_any_date || 'nil'}, "\
          "after_connect_script=#{after_connect_script || 'nil'}, "\
          "bucket_folder=#{bucket_folder || 'nil'}, "\
          "bucket_name=#{bucket_name || 'nil'}, "\
          "case_sensitive_names=#{case_sensitive_names || 'nil'}, "\
          "comp_update=#{comp_update || 'nil'}, "\
          "connection_timeout=#{connection_timeout || 'nil'}, "\
          "database_name=#{database_name || 'nil'}, "\
          "date_format=#{date_format || 'nil'}, "\
          "empty_as_null=#{empty_as_null || 'nil'}, "\
          "encryption_mode=#{encryption_mode || 'nil'}, "\
          "explicit_ids=#{explicit_ids || 'nil'}, "\
          "file_transfer_upload_streams=#{file_transfer_upload_streams || 'nil'}, "\
          "load_timeout=#{load_timeout || 'nil'}, "\
          "max_file_size=#{max_file_size || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "remove_quotes=#{remove_quotes || 'nil'}, "\
          "replace_invalid_chars=#{replace_invalid_chars || 'nil'}, "\
          "replace_chars=#{replace_chars || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "service_access_role_arn=#{service_access_role_arn || 'nil'}, "\
          "server_side_encryption_kms_key_id=#{server_side_encryption_kms_key_id || 'nil'}, "\
          "time_format=#{time_format || 'nil'}, "\
          "trim_blanks=#{trim_blanks || 'nil'}, "\
          "truncate_columns=#{truncate_columns || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "write_buffer_size=#{write_buffer_size || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # <p></p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    RefreshSchemasInput = ::Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute refresh_schemas_status
    #   <p>The status of the refreshed schema.</p>
    #
    #   @return [RefreshSchemasStatus]
    #
    RefreshSchemasOutput = ::Struct.new(
      :refresh_schemas_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that describes status of a schema at an endpoint specified by the
    #          <code>DescribeRefreshSchemaStatus</code> operation.</p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the schema.</p>
    #
    #   Enum, one of: ["successful", "failed", "refreshing"]
    #
    #   @return [String]
    #
    # @!attribute last_refresh_date
    #   <p>The date the schema was last refreshed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_message
    #   <p>The last failure message for the schema.</p>
    #
    #   @return [String]
    #
    RefreshSchemasStatus = ::Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      :status,
      :last_refresh_date,
      :last_failure_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RefreshSchemasStatusTypeValue
    #
    module RefreshSchemasStatusTypeValue
      # No documentation available.
      #
      SUCCESSFUL = "successful"

      # No documentation available.
      #
      FAILED = "failed"

      # No documentation available.
      #
      REFRESHING = "refreshing"
    end

    # Includes enum constants for ReleaseStatusValues
    #
    module ReleaseStatusValues
      # No documentation available.
      #
      BETA = "beta"
    end

    # Includes enum constants for ReloadOptionValue
    #
    module ReloadOptionValue
      # No documentation available.
      #
      DATA_RELOAD = "data-reload"

      # No documentation available.
      #
      VALIDATE_ONLY = "validate-only"
    end

    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #
    #   @return [String]
    #
    # @!attribute tables_to_reload
    #   <p>The name and schema of the table to be reloaded. </p>
    #
    #   @return [Array<TableToReload>]
    #
    # @!attribute reload_option
    #   <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
    #            it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
    #            This option applies only when validation is enabled for the task. </p>
    #            <p>Valid values: data-reload, validate-only</p>
    #            <p>Default value is data-reload.</p>
    #
    #   Enum, one of: ["data-reload", "validate-only"]
    #
    #   @return [String]
    #
    ReloadTablesInput = ::Struct.new(
      :replication_task_arn,
      :tables_to_reload,
      :reload_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #
    #   @return [String]
    #
    ReloadTablesOutput = ::Struct.new(
      :replication_task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Removes one or more tags from an DMS resource.</p>
    #
    # @!attribute resource_arn
    #   <p>An DMS resource from which you want to remove tag(s). The value for this parameter is an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsFromResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    RemoveTagsFromResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicationEndpointTypeValue
    #
    module ReplicationEndpointTypeValue
      # No documentation available.
      #
      SOURCE = "source"

      # No documentation available.
      #
      TARGET = "target"
    end

    # <p>Provides information that defines a replication instance.</p>
    #
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier is a required parameter. This parameter is stored as
    #            a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myrepinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. It is a required parameter, although a default value is
    #            pre-selected in the DMS console.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_status
    #   <p>The status of the replication instance. The possible return values include:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"available"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"creating"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleted"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"modifying"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"upgrading"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"rebooting"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"resetting-master-credentials"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"storage-full"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"incompatible-credentials"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"incompatible-network"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"maintenance"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_create_time
    #   <p>The time the replication instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute vpc_security_groups
    #   <p>The VPC security group for the instance.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone for the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_subnet_group
    #   <p>The subnet group for the replication instance.</p>
    #
    #   @return [ReplicationSubnetGroup]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The maintenance window times for the replication instance. Any pending upgrades to the
    #            replication instance are performed during this time.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_modified_values
    #   <p>The pending modification values.</p>
    #
    #   @return [ReplicationPendingModifiedValues]
    #
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
    #               <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>If an engine version number is not specified when a replication
    #            instance is created, the default is the latest engine version available.</p>
    #            <p>When modifying a major engine version of an instance, also set
    #            <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Boolean value indicating if minor version upgrades will be automatically applied to the
    #            instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the data on the replication
    #              instance.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #              DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_public_ip_address
    #   <p>The public IP address of the replication instance.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute replication_instance_private_ip_address
    #   <p>The private IP address of the replication instance.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute replication_instance_public_ip_addresses
    #   <p>One or more public IP addresses for the replication instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_instance_private_ip_addresses
    #   <p>One or more private IP addresses for the replication instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute publicly_accessible
    #   <p> Specifies the accessibility options for the replication instance. A value of
    #               <code>true</code> represents an instance with a public IP address. A value of
    #               <code>false</code> represents an instance with a private IP address. The default value
    #            is <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone of the standby replication instance in a Multi-AZ
    #            deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute free_until
    #   <p> The expiration date of the free replication instance that is part of the Free DMS
    #            program. </p>
    #
    #   @return [Time]
    #
    # @!attribute dns_name_servers
    #   <p>The DNS name servers supported for the replication instance to access your on-premise source or target database.</p>
    #
    #   @return [String]
    #
    ReplicationInstance = ::Struct.new(
      :replication_instance_identifier,
      :replication_instance_class,
      :replication_instance_status,
      :allocated_storage,
      :instance_create_time,
      :vpc_security_groups,
      :availability_zone,
      :replication_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :kms_key_id,
      :replication_instance_arn,
      :replication_instance_public_ip_address,
      :replication_instance_private_ip_address,
      :replication_instance_public_ip_addresses,
      :replication_instance_private_ip_addresses,
      :publicly_accessible,
      :secondary_availability_zone,
      :free_until,
      :dns_name_servers,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.multi_az ||= false
        self.auto_minor_version_upgrade ||= false
        self.publicly_accessible ||= false
      end

    end

    # <p>Contains metadata for a replication instance task log.</p>
    #
    # @!attribute replication_task_name
    #   <p>The name of the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_task_log_size
    #   <p>The size, in bytes, of the replication task log.</p>
    #
    #   @return [Integer]
    #
    ReplicationInstanceTaskLog = ::Struct.new(
      :replication_task_name,
      :replication_task_arn,
      :replication_instance_task_log_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.replication_instance_task_log_size ||= 0
      end

    end

    # <p>Provides information about the values of pending modifications to a replication
    #          instance. This data type is an object of the
    #          <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html">
    #                <code>ReplicationInstance</code>
    #             </a> user-defined
    #          data type. </p>
    #
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
    #               <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #
    #   @return [String]
    #
    ReplicationPendingModifiedValues = ::Struct.new(
      :replication_instance_class,
      :allocated_storage,
      :multi_az,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a subnet group in response to a request by the
    #             <code>DescribeReplicationSubnetGroups</code> operation.</p>
    #
    # @!attribute replication_subnet_group_identifier
    #   <p>The identifier of the replication instance subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_subnet_group_description
    #   <p>A description for the replication subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_status
    #   <p>The status of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>The subnets that are in the subnet group.</p>
    #
    #   @return [Array<Subnet>]
    #
    ReplicationSubnetGroup = ::Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    ReplicationSubnetGroupDoesNotCoverEnoughAZs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that describes a replication task created by the
    #             <code>CreateReplicationTask</code> operation.</p>
    #
    # @!attribute replication_task_identifier
    #   <p>The user-assigned replication task identifier or name.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute target_endpoint_arn
    #   <p>The ARN that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_instance_arn
    #   <p>The ARN of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_type
    #   <p>The type of migration.</p>
    #
    #   Enum, one of: ["full-load", "cdc", "full-load-and-cdc"]
    #
    #   @return [String]
    #
    # @!attribute table_mappings
    #   <p>Table mappings specified in the task.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_settings
    #   <p>The settings for the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the replication task. This response parameter can return one of
    #            the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"moving"</code> – The task is being moved in response to running the
    #                     <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    #                        <code>MoveReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"creating"</code> – The task is being created in response to running
    #                  the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html">
    #                        <code>CreateReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code> – The task is being deleted in response to running
    #                  the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html">
    #                        <code>DeleteReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code> – The task failed to successfully complete the database
    #                  migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed-move"</code> – The task failed to move in response to running
    #                  the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    #                        <code>MoveReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"modifying"</code> – The task definition is being modified in response
    #                  to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html">
    #                        <code>ModifyReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"ready"</code> – The task is in a <code>ready</code> state where it can
    #                  respond to other task operations, such as <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> or <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html">
    #                        <code>DeleteReplicationTask</code>
    #                     </a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"running"</code> – The task is performing a database migration in
    #                  response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"starting"</code> – The task is preparing to perform a database
    #                  migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"stopped"</code> – The task has stopped in response to running the
    #                     <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html">
    #                        <code>StopReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"stopping"</code> – The task is preparing to stop in response to
    #                  running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html">
    #                        <code>StopReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"testing"</code> – The database migration specified for this task is
    #                  being tested in response to running either the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    #                        <code>StartReplicationTaskAssessmentRun</code>
    #                     </a> or the
    #                     <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html">
    #                        <code>StartReplicationTaskAssessment</code>
    #                     </a>
    #                  operation.</p>
    #                  <note>
    #                     <p>
    #                        <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    #                           <code>StartReplicationTaskAssessmentRun</code>
    #                        </a> is
    #                     an improved premigration task assessment operation. The <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html">
    #                           <code>StartReplicationTaskAssessment</code>
    #                        </a>
    #                     operation assesses data type compatibility only between the source and target
    #                     database of a given migration task. In contrast, <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    #                           <code>StartReplicationTaskAssessmentRun</code>
    #                        </a>
    #                     enables you to specify a variety of premigration task assessments in addition to
    #                     data type compatibility. These assessments include ones for the validity of primary key definitions and
    #                     likely issues with database migration performance, among others.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute last_failure_message
    #   <p>The last error (failure) message generated for the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute stop_reason
    #   <p>The reason the replication task was stopped. This response parameter can return one of
    #            the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"STOP_REASON_FULL_LOAD_COMPLETED"</code> – Full-load migration
    #                  completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"STOP_REASON_CACHED_CHANGES_APPLIED"</code> – Change data capture (CDC)
    #                  load completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"STOP_REASON_CACHED_CHANGES_NOT_APPLIED"</code> – In a
    #                  full-load and CDC migration, the full load stopped as specified before starting the
    #                  CDC migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"STOP_REASON_SERVER_TIME"</code> – The migration stopped at the
    #                  specified server time.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute replication_task_creation_date
    #   <p>The date the replication task was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute replication_task_start_date
    #   <p>The date the replication task is scheduled to start.</p>
    #
    #   @return [Time]
    #
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want the CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1 27 mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876 0 0 * 0 93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #
    #   @return [String]
    #
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_checkpoint
    #   <p>Indicates the last checkpoint that occurred during a change data capture (CDC)
    #            operation. You can provide this value to the <code>CdcStartPosition</code> parameter to
    #            start a CDC operation that begins at that checkpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_stats
    #   <p>The statistics for the task, including elapsed time, tables loaded, and table
    #            errors.</p>
    #
    #   @return [ReplicationTaskStats]
    #
    # @!attribute task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    #               For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    #            <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_replication_instance_arn
    #   <p>The ARN of the replication instance to which this task is moved in response to running
    #            the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    #                  <code>MoveReplicationTask</code>
    #               </a> operation. Otherwise, this response
    #            parameter isn't a member of the <code>ReplicationTask</code> object.</p>
    #
    #   @return [String]
    #
    ReplicationTask = ::Struct.new(
      :replication_task_identifier,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :replication_instance_arn,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :status,
      :last_failure_message,
      :stop_reason,
      :replication_task_creation_date,
      :replication_task_start_date,
      :cdc_start_position,
      :cdc_stop_position,
      :recovery_checkpoint,
      :replication_task_arn,
      :replication_task_stats,
      :task_data,
      :target_replication_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The task assessment report in JSON format. </p>
    #
    # @!attribute replication_task_identifier
    #   <p> The replication task identifier of the task on which the task assessment was run.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_last_assessment_date
    #   <p>The date the task assessment was completed. </p>
    #
    #   @return [Time]
    #
    # @!attribute assessment_status
    #   <p> The status of the task assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_results_file
    #   <p> The file containing the results of the task assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_results
    #   <p> The task assessment results in JSON format. </p>
    #            <p>The response object only contains this field if you provide <a>DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn</a>
    #              in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_url
    #   <p> The URL of the S3 object containing the task assessment results. </p>
    #            <p>The response object only contains this field if you provide <a>DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn</a>
    #              in the request.</p>
    #
    #   @return [String]
    #
    ReplicationTaskAssessmentResult = ::Struct.new(
      :replication_task_identifier,
      :replication_task_arn,
      :replication_task_last_assessment_date,
      :assessment_status,
      :assessment_results_file,
      :assessment_results,
      :s3_object_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that describes a premigration assessment run that you have started
    #          using the <code>StartReplicationTaskAssessmentRun</code> operation.</p>
    #          <p>Some of the information appears based on other operations that can return the
    #             <code>ReplicationTaskAssessmentRun</code> object.</p>
    #
    # @!attribute replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of this assessment run.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_arn
    #   <p>ARN of the migration task associated with this premigration
    #            assessment run.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Assessment run status. </p>
    #            <p>This status can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"cancelling"</code> – The assessment run was canceled by the
    #                     <code>CancelReplicationTaskAssessmentRun</code> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code> – The assessment run was deleted by the
    #                     <code>DeleteReplicationTaskAssessmentRun</code> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code> – At least one individual assessment completed with a
    #                     <code>failed</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"error-provisioning"</code> – An internal error occurred while
    #                  resources were provisioned (during <code>provisioning</code> status).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"error-executing"</code> – An internal error occurred while
    #                  individual assessments ran (during <code>running</code> status).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"invalid state"</code> – The assessment run is in an unknown state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"passed"</code> – All individual assessments have completed, and none
    #                  has a <code>failed</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"provisioning"</code> – Resources required to run individual
    #                  assessments are being provisioned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"running"</code> – Individual assessments are being run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"starting"</code> – The assessment run is starting, but resources are not yet
    #                  being provisioned for individual assessments.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute replication_task_assessment_run_creation_date
    #   <p>Date on which the assessment run was created using the
    #               <code>StartReplicationTaskAssessmentRun</code> operation.</p>
    #
    #   @return [Time]
    #
    # @!attribute assessment_progress
    #   <p>Indication of the completion progress for the individual assessments specified to
    #            run.</p>
    #
    #   @return [ReplicationTaskAssessmentRunProgress]
    #
    # @!attribute last_failure_message
    #   <p>Last message generated by an individual assessment failure.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>ARN of the service role used to start the assessment run using the
    #            <code>StartReplicationTaskAssessmentRun</code> operation. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute result_location_bucket
    #   <p>Amazon S3 bucket where DMS stores the results of this assessment run.</p>
    #
    #   @return [String]
    #
    # @!attribute result_location_folder
    #   <p>Folder in an Amazon S3 bucket where DMS stores the results of this assessment
    #            run.</p>
    #
    #   @return [String]
    #
    # @!attribute result_encryption_mode
    #   <p>Encryption mode used to encrypt the assessment run results.</p>
    #
    #   @return [String]
    #
    # @!attribute result_kms_key_arn
    #   <p>ARN of the KMS encryption key used to encrypt the assessment run results.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_run_name
    #   <p>Unique name of the assessment run.</p>
    #
    #   @return [String]
    #
    ReplicationTaskAssessmentRun = ::Struct.new(
      :replication_task_assessment_run_arn,
      :replication_task_arn,
      :status,
      :replication_task_assessment_run_creation_date,
      :assessment_progress,
      :last_failure_message,
      :service_access_role_arn,
      :result_location_bucket,
      :result_location_folder,
      :result_encryption_mode,
      :result_kms_key_arn,
      :assessment_run_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The progress values reported by the <code>AssessmentProgress</code> response
    #          element.</p>
    #
    # @!attribute individual_assessment_count
    #   <p>The number of individual assessments that are specified to run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute individual_assessment_completed_count
    #   <p>The number of individual assessments that have completed, successfully or not.</p>
    #
    #   @return [Integer]
    #
    ReplicationTaskAssessmentRunProgress = ::Struct.new(
      :individual_assessment_count,
      :individual_assessment_completed_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.individual_assessment_count ||= 0
        self.individual_assessment_completed_count ||= 0
      end

    end

    # <p>Provides information that describes an individual assessment from a premigration
    #          assessment run.</p>
    #
    # @!attribute replication_task_individual_assessment_arn
    #   <p>Amazon Resource Name (ARN) of this individual assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_task_assessment_run_arn
    #   <p>ARN of the premigration assessment run that is created to run this individual
    #            assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute individual_assessment_name
    #   <p>Name of this individual assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Individual assessment status.</p>
    #            <p>This status can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"cancelled"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"error"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"passed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"pending"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"running"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute replication_task_individual_assessment_start_date
    #   <p>Date when this individual assessment was started as part of running the
    #               <code>StartReplicationTaskAssessmentRun</code> operation.</p>
    #
    #   @return [Time]
    #
    ReplicationTaskIndividualAssessment = ::Struct.new(
      :replication_task_individual_assessment_arn,
      :replication_task_assessment_run_arn,
      :individual_assessment_name,
      :status,
      :replication_task_individual_assessment_start_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In response to a request by the <code>DescribeReplicationTasks</code> operation, this object provides
    #          a collection of statistics about a replication task.</p>
    #
    # @!attribute full_load_progress_percent
    #   <p>The percent complete for the full load migration task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute elapsed_time_millis
    #   <p>The elapsed time of the task, in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tables_loaded
    #   <p>The number of tables loaded for this task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tables_loading
    #   <p>The number of tables currently loading for this task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tables_queued
    #   <p>The number of tables queued for this task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tables_errored
    #   <p>The number of errors that have occurred during this task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fresh_start_date
    #   <p>The date the replication task was started either with a fresh start or a target reload.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_date
    #   <p>The date the replication task was started either with a fresh start or a resume. For more information, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html DMS-StartReplicationTask-request-StartReplicationTaskType">StartReplicationTaskType</a>.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_date
    #   <p>The date the replication task was stopped.</p>
    #
    #   @return [Time]
    #
    # @!attribute full_load_start_date
    #   <p>The date the replication task full load was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute full_load_finish_date
    #   <p>The date the replication task full load was completed.</p>
    #
    #   @return [Time]
    #
    ReplicationTaskStats = ::Struct.new(
      :full_load_progress_percent,
      :elapsed_time_millis,
      :tables_loaded,
      :tables_loading,
      :tables_queued,
      :tables_errored,
      :fresh_start_date,
      :start_date,
      :stop_date,
      :full_load_start_date,
      :full_load_finish_date,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.full_load_progress_percent ||= 0
        self.elapsed_time_millis ||= 0
        self.tables_loaded ||= 0
        self.tables_loading ||= 0
        self.tables_queued ||= 0
        self.tables_errored ||= 0
      end

    end

    # <p>The resource you are attempting to create already exists.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #
    #   @return [String]
    #
    ResourceAlreadyExistsFault = ::Struct.new(
      :message,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource could not be found.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    ResourceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies an DMS resource and any pending actions for it.</p>
    #
    # @!attribute resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action
    #            applies to. For information about creating an ARN, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html"> Constructing an Amazon
    #               Resource Name (ARN) for DMS</a> in the DMS documentation.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_maintenance_action_details
    #   <p>Detailed information about the pending maintenance action.</p>
    #
    #   @return [Array<PendingMaintenanceAction>]
    #
    ResourcePendingMaintenanceActions = ::Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The quota for this resource quota has been exceeded.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    ResourceQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RunFleetAdvisorLsaAnalysisInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lsa_analysis_id
    #   <p>The ID of the LSA analysis run.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the LSA analysis, for example <code>COMPLETED</code>.</p>
    #
    #   @return [String]
    #
    RunFleetAdvisorLsaAnalysisOutput = ::Struct.new(
      :lsa_analysis_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Insufficient privileges are preventing access to an Amazon S3 object.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    S3AccessDeniedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified Amazon S3 bucket, bucket folder, or other object can't be
    #             found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    S3ResourceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for exporting data to Amazon S3. </p>
    #
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) used by the service to access the IAM role.
    #            The role must allow the <code>iam:PassRole</code> action. It is a required
    #            parameter that enables DMS to write and read objects from an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute external_table_definition
    #   <p> Specifies how tables are defined in the S3 source files only. </p>
    #
    #   @return [String]
    #
    # @!attribute csv_row_delimiter
    #   <p> The delimiter used to separate rows in the .csv file for both source and target. The default is a carriage
    #            return (<code>\n</code>). </p>
    #
    #   @return [String]
    #
    # @!attribute csv_delimiter
    #   <p> The delimiter used to separate columns in the .csv file for both source and target. The default is a comma.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_folder
    #   <p> An optional parameter to set a folder name in the S3 bucket. If provided, tables are
    #            created in the path
    #                  <code>
    #                  <i>bucketFolder</i>/<i>schema_name</i>/<i>table_name</i>/</code>.
    #            If this parameter isn't specified, then the path used is
    #                  <code>
    #                  <i>schema_name</i>/<i>table_name</i>/</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p> The name of the S3 bucket. </p>
    #
    #   @return [String]
    #
    # @!attribute compression_type
    #   <p>An optional parameter to use GZIP to compress the target files. Set to GZIP to compress
    #            the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed.
    #            This parameter applies to both .csv and .parquet file formats. </p>
    #
    #   Enum, one of: ["none", "gzip"]
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The type of server-side encryption that you want to use for your data. This encryption
    #            type is part of the endpoint settings or the extra connections attributes for Amazon S3.
    #            You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p>
    #            <note>
    #               <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of
    #               the <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to
    #                  <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code>
    #               to <code>SSE_KMS</code>.</p>
    #            </note>
    #            <p>To use <code>SSE_S3</code>, you need an Identity and Access Management (IAM) role
    #            with permission to allow <code>"arn:aws:s3:::dms-*"</code> to use the following
    #            actions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:CreateBucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListBucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:DeleteBucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:DeleteObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetObjectVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketPolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:PutBucketPolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:DeleteBucketPolicy</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["sse-s3", "sse-kms"]
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_kms_key_id
    #   <p>If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>, provide the
    #            KMS key ID. The key that you use needs an attached policy that enables Identity and Access Management
    #            (IAM) user permissions and allows use of the key.</p>
    #            <p>Here is a CLI example: <code>aws dms create-endpoint --endpoint-identifier
    #                  <i>value</i> --endpoint-type target --engine-name s3 --s3-settings
    #                  ServiceAccessRoleArn=<i>value</i>,BucketFolder=<i>value</i>,BucketName=<i>value</i>,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=<i>value</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The format of the data that you want to use for output. You can choose one of the
    #            following: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>csv</code> : This is a row-based file format with comma-separated values
    #                  (.csv). </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parquet</code> : Apache Parquet (.parquet) is a columnar storage file format
    #                  that features efficient compression and provides faster query response. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["csv", "parquet"]
    #
    #   @return [String]
    #
    # @!attribute encoding_type
    #   <p>The type of encoding you are using: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RLE_DICTIONARY</code> uses a combination of bit-packing and run-length
    #                  encoding to store repeated values more efficiently. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAIN</code> doesn't use encoding at all. Values are stored as they
    #                  are.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAIN_DICTIONARY</code> builds a dictionary of the values encountered in a
    #                  given column. The dictionary is stored in a dictionary page for each column
    #                  chunk.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["plain", "plain-dictionary", "rle-dictionary"]
    #
    #   @return [String]
    #
    # @!attribute dict_page_size_limit
    #   <p>The maximum size of an encoded dictionary page of a column. If the dictionary page
    #            exceeds this, this column is stored using an encoding type of <code>PLAIN</code>. This
    #            parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page
    #            before it reverts to <code>PLAIN</code> encoding. This size is used for
    #              .parquet file format only. </p>
    #
    #   @return [Integer]
    #
    # @!attribute row_group_length
    #   <p>The number of rows in a row group. A smaller row group size provides faster reads. But
    #            as the number of row groups grows, the slower writes become. This parameter defaults to
    #            10,000 rows. This number is used for .parquet file format only. </p>
    #            <p>If you choose a value larger than the maximum, <code>RowGroupLength</code> is set to the
    #            max row group length in bytes (64 * 1024 * 1024). </p>
    #
    #   @return [Integer]
    #
    # @!attribute data_page_size
    #   <p>The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB).
    #            This number is used for .parquet file format only. </p>
    #
    #   @return [Integer]
    #
    # @!attribute parquet_version
    #   <p>The version of the Apache Parquet format that you want to use: <code>parquet_1_0</code>
    #            (the default) or <code>parquet_2_0</code>.</p>
    #
    #   Enum, one of: ["parquet-1-0", "parquet-2-0"]
    #
    #   @return [String]
    #
    # @!attribute enable_statistics
    #   <p>A value that enables statistics for Parquet pages and row groups. Choose
    #               <code>true</code> to enable statistics, <code>false</code> to disable. Statistics
    #            include <code>NULL</code>, <code>DISTINCT</code>, <code>MAX</code>, and <code>MIN</code>
    #            values. This parameter defaults to <code>true</code>. This value is used for
    #               .parquet file format only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_op_for_full_load
    #   <p>A value that enables a full load to write INSERT operations to the comma-separated value
    #            (.csv) output files only to indicate how the rows were added to the source database.</p>
    #            <note>
    #               <p>DMS supports the <code>IncludeOpForFullLoad</code> parameter in versions 3.1.4 and
    #               later.</p>
    #            </note>
    #            <p>For full load, records can only be inserted. By default (the <code>false</code>
    #            setting), no information is recorded in these output files for a full load to indicate that
    #            the rows were inserted at the source database. If <code>IncludeOpForFullLoad</code> is set
    #            to <code>true</code> or <code>y</code>, the INSERT is recorded as an I annotation in the
    #            first field of the .csv file. This allows the format of your target records from a full
    #            load to be consistent with the target records from a CDC load.</p>
    #            <note>
    #               <p>This setting works together with the <code>CdcInsertsOnly</code> and the
    #                  <code>CdcInsertsAndUpdates</code> parameters for output to .csv files only. For more
    #               information about how these settings work together, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.Configuring.InsertOps">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service
    #                      User Guide.</i>.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute cdc_inserts_only
    #   <p>A value that enables a change data capture (CDC) load to write only INSERT operations to
    #            .csv or columnar storage (.parquet) output files. By default (the
    #               <code>false</code> setting), the first field in a .csv or .parquet record contains the
    #            letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was
    #            inserted, updated, or deleted at the source database for a CDC load to the target.</p>
    #            <p>If <code>CdcInsertsOnly</code> is set to <code>true</code> or <code>y</code>, only
    #            INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format
    #            only, how these INSERTs are recorded depends on the value of
    #               <code>IncludeOpForFullLoad</code>. If <code>IncludeOpForFullLoad</code> is set to
    #               <code>true</code>, the first field of every CDC record is set to I to indicate the
    #            INSERT operation at the source. If <code>IncludeOpForFullLoad</code> is set to
    #               <code>false</code>, every CDC record is written without a first field to indicate the
    #            INSERT operation at the source. For more information about how these settings work
    #            together, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.Configuring.InsertOps">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service User Guide.</i>.</p>
    #
    #            <note>
    #
    #                  <p>DMS supports the interaction described preceding between the
    #                  <code>CdcInsertsOnly</code> and <code>IncludeOpForFullLoad</code> parameters in
    #               versions 3.1.4 and later. </p>
    #
    #                  <p>
    #                  <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't
    #               both be set to <code>true</code> for the same endpoint. Set either
    #                  <code>CdcInsertsOnly</code> or <code>CdcInsertsAndUpdates</code> to <code>true</code>
    #               for the same endpoint, but not both.</p>
    #
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute timestamp_column_name
    #   <p>A value that when nonblank causes DMS to add a column with timestamp information to
    #            the endpoint data for an Amazon S3 target.</p>
    #            <note>
    #               <p>DMS supports the <code>TimestampColumnName</code> parameter in versions 3.1.4 and later.</p>
    #            </note>
    #            <p>DMS includes an additional <code>STRING</code> column in the
    #            .csv or .parquet object files of your migrated data when you set
    #            <code>TimestampColumnName</code> to a nonblank value.</p>
    #            <p>For a full load, each row of this timestamp column contains a
    #            timestamp for when the data was transferred from the source to
    #            the target by DMS. </p>
    #            <p>For a change data capture (CDC) load, each row of the timestamp column contains the
    #            timestamp for the commit of that row in the source
    #            database.</p>
    #            <p>The string format for this timestamp column value is
    #            <code>yyyy-MM-dd HH:mm:ss.SSSSSS</code>. By default, the
    #            precision of this value is in microseconds. For a CDC load, the
    #            rounding of the precision depends on the commit timestamp
    #            supported by DMS for the source database.</p>
    #            <p>When the <code>AddColumnName</code> parameter is set to <code>true</code>, DMS also
    #            includes a name for the timestamp column that you set with
    #            <code>TimestampColumnName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute parquet_timestamp_in_millisecond
    #   <p>A value that specifies the precision of any <code>TIMESTAMP</code> column values that
    #            are written to an Amazon S3 object file in .parquet format.</p>
    #            <note>
    #               <p>DMS supports the <code>ParquetTimestampInMillisecond</code> parameter in versions
    #               3.1.4 and later.</p>
    #            </note>
    #            <p>When <code>ParquetTimestampInMillisecond</code> is set to <code>true</code> or
    #               <code>y</code>, DMS writes all <code>TIMESTAMP</code> columns in a .parquet
    #            formatted file with millisecond precision. Otherwise, DMS writes them with microsecond
    #            precision.</p>
    #            <p>Currently, Amazon Athena and Glue can handle only
    #            millisecond precision for <code>TIMESTAMP</code> values. Set
    #            this parameter to <code>true</code> for S3 endpoint object
    #            files that are .parquet formatted only if you plan to query or process the data with Athena or Glue.</p>
    #            <note>
    #                 <p>DMS writes any <code>TIMESTAMP</code> column
    #                     values written to an S3 file in .csv format with
    #                     microsecond precision.</p>
    #
    #                  <p>Setting <code>ParquetTimestampInMillisecond</code> has no effect on the string
    #               format of the timestamp column value that is inserted by setting the
    #                  <code>TimestampColumnName</code> parameter.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute cdc_inserts_and_updates
    #   <p>A value that enables a change data capture (CDC) load to write INSERT and UPDATE
    #            operations to .csv or .parquet (columnar storage) output files. The default setting is
    #               <code>false</code>, but when <code>CdcInsertsAndUpdates</code> is set to
    #               <code>true</code> or <code>y</code>, only INSERTs and UPDATEs from the source database
    #            are migrated to the .csv or .parquet file. </p>
    #            <p>For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the
    #            value of the <code>IncludeOpForFullLoad</code> parameter. If
    #               <code>IncludeOpForFullLoad</code> is set to <code>true</code>, the first field of every
    #            CDC record is set to either <code>I</code> or <code>U</code> to indicate INSERT and UPDATE
    #            operations at the source. But if <code>IncludeOpForFullLoad</code> is set to
    #               <code>false</code>, CDC records are written without an indication of INSERT or UPDATE
    #            operations at the source. For more information about how these settings work together, see
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.Configuring.InsertOps">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service User Guide.</i>.</p>
    #            <note>
    #
    #               <p>DMS supports the use of the <code>CdcInsertsAndUpdates</code> parameter in
    #               versions 3.3.1 and later.</p>
    #
    #               <p>
    #                  <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't
    #               both be set to <code>true</code> for the same endpoint. Set either
    #               <code>CdcInsertsOnly</code> or <code>CdcInsertsAndUpdates</code> to <code>true</code>
    #               for the same endpoint, but not both.</p>
    #
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute date_partition_enabled
    #   <p>When set to <code>true</code>, this parameter partitions S3 bucket folders based on
    #            transaction commit dates. The default value is <code>false</code>. For more information
    #            about date-based folder partitioning, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.DatePartitioning">Using date-based folder partitioning</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute date_partition_sequence
    #   <p>Identifies the sequence of the date format to use during folder partitioning. The default value is
    #            <code>YYYYMMDD</code>. Use this parameter when <code>DatePartitionedEnabled</code> is set to <code>true</code>.</p>
    #
    #   Enum, one of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #
    #   @return [String]
    #
    # @!attribute date_partition_delimiter
    #   <p>Specifies a date separating delimiter to use during folder partitioning. The default value is
    #            <code>SLASH</code>. Use this parameter when <code>DatePartitionedEnabled</code> is set to <code>true</code>.</p>
    #
    #   Enum, one of: ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute use_csv_no_sup_value
    #   <p>This setting applies if the S3 output files during a change data capture (CDC) load are
    #            written in .csv format. If set to <code>true</code> for columns not included in the
    #            supplemental log, DMS uses the value specified by <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html DMS-Type-S3Settings-CsvNoSupValue">
    #                  <code>CsvNoSupValue</code>
    #               </a>. If not set or set to
    #               <code>false</code>, DMS uses the null value for these columns.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.1 and later.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute csv_no_sup_value
    #   <p>This setting only applies if your Amazon S3 output files during a change data capture
    #            (CDC) load are written in .csv format. If <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html DMS-Type-S3Settings-UseCsvNoSupValue">
    #                  <code>UseCsvNoSupValue</code>
    #               </a> is set to true, specify a
    #            string value that you want DMS to use for all columns not included in the supplemental
    #            log. If you do not specify a string value, DMS uses the null value for these columns
    #            regardless of the <code>UseCsvNoSupValue</code> setting.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.1 and later.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute preserve_transactions
    #   <p>If set to <code>true</code>, DMS saves the transaction order for a change data
    #            capture (CDC) load on the Amazon S3 target specified by <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html DMS-Type-S3Settings-CdcPath">
    #                  <code>CdcPath</code>
    #               </a>. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.EndpointSettings.CdcPath">Capturing data changes (CDC) including transaction order on the S3
    #               target</a>.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.2 and later.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute cdc_path
    #   <p>Specifies the folder path of CDC files. For an S3 source, this setting is required if a
    #            task captures change data; otherwise, it's optional. If <code>CdcPath</code> is set, DMS
    #             reads CDC files from this path and replicates the data changes to the target endpoint.
    #            For an S3 target if you set <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html DMS-Type-S3Settings-PreserveTransactions">
    #                  <code>PreserveTransactions</code>
    #               </a> to <code>true</code>, DMS
    #             verifies that you have set this parameter to a folder path on your S3 target where DMS
    #             can save the transaction order for the CDC load. DMS creates this CDC folder path
    #            in either your S3 target working directory or the S3 target location specified by <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html DMS-Type-S3Settings-BucketFolder">
    #                  <code>BucketFolder</code>
    #               </a> and <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html DMS-Type-S3Settings-BucketName">
    #                  <code>BucketName</code>
    #               </a>.</p>
    #            <p>For example, if you specify <code>CdcPath</code> as <code>MyChangedData</code>, and you
    #            specify <code>BucketName</code> as <code>MyTargetBucket</code> but do not specify
    #               <code>BucketFolder</code>, DMS creates the CDC folder path following:
    #               <code>MyTargetBucket/MyChangedData</code>.</p>
    #            <p>If you specify the same <code>CdcPath</code>, and you specify <code>BucketName</code> as
    #               <code>MyTargetBucket</code> and <code>BucketFolder</code> as <code>MyTargetData</code>,
    #            DMS creates the CDC folder path following:
    #               <code>MyTargetBucket/MyTargetData/MyChangedData</code>.</p>
    #            <p>For more information on CDC including transaction order on an S3 target, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html CHAP_Target.S3.EndpointSettings.CdcPath">Capturing data changes (CDC) including transaction order on the S3
    #               target</a>.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.2 and later.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute use_task_start_time_for_full_load_timestamp
    #   <p>When set to true, this parameter uses the task start time as the timestamp column value instead of
    #            the time data is written to target. For full load, when <code>useTaskStartTimeForFullLoadTimestamp</code>
    #            is set to <code>true</code>, each row of the timestamp column contains the task start time. For CDC loads,
    #            each row of the timestamp column contains the transaction commit time.</p>
    #
    #            <p>When <code>useTaskStartTimeForFullLoadTimestamp</code> is set to <code>false</code>, the full load timestamp
    #            in the timestamp column increments with the time data arrives at the target. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute canned_acl_for_objects
    #   <p>A value that enables DMS to specify a predefined (canned) access control list for
    #            objects created in an Amazon S3 bucket as .csv or .parquet files. For more information
    #            about Amazon S3 canned ACLs, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html canned-acl">Canned
    #               ACL</a> in the <i>Amazon S3 Developer Guide.</i>
    #            </p>
    #            <p>The default value is NONE. Valid values include NONE, PRIVATE,
    #            PUBLIC_READ, PUBLIC_READ_WRITE, AUTHENTICATED_READ,
    #            AWS_EXEC_READ, BUCKET_OWNER_READ, and
    #            BUCKET_OWNER_FULL_CONTROL.</p>
    #
    #   Enum, one of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute add_column_name
    #   <p>An optional parameter that, when set to <code>true</code> or <code>y</code>, you can use
    #            to add column name information to the .csv output file.</p>
    #            <p>The default value is <code>false</code>. Valid values are <code>true</code>, <code>false</code>,
    #            <code>y</code>, and <code>n</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cdc_max_batch_interval
    #   <p>Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3.</p>
    #            <p>When <code>CdcMaxBatchInterval</code> and <code>CdcMinFileSize</code> are both specified, the
    #            file write is triggered by whichever parameter condition is met first within an DMS
    #            CloudFormation template.</p>
    #            <p>The default value is 60 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cdc_min_file_size
    #   <p>Minimum file size, defined in megabytes, to reach for a file output to Amazon S3.</p>
    #            <p>When <code>CdcMinFileSize</code> and <code>CdcMaxBatchInterval</code> are both specified, the file
    #            write is triggered by whichever parameter condition is met first within an DMS
    #            CloudFormation template.</p>
    #            <p>The default value is 32 MB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute csv_null_value
    #   <p>An optional parameter that specifies how DMS treats null
    #            values. While handling the null value, you can use this
    #            parameter to pass a user-defined string as null when writing to
    #            the target. For example, when target columns are not nullable,
    #            you can use this option to differentiate between the empty
    #            string value and the null value. So, if you set this parameter
    #            value to the empty string ("" or ''), DMS treats the empty
    #            string as the null value instead of <code>NULL</code>.</p>
    #            <p>The default value is <code>NULL</code>. Valid values include any valid string.</p>
    #
    #   @return [String]
    #
    # @!attribute ignore_header_rows
    #   <p>When this value is set to 1, DMS ignores the first row header in a .csv file. A value
    #            of 1 turns on the feature; a value of 0 turns off the feature.</p>
    #            <p>The default is 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_file_size
    #   <p>A value that specifies the maximum size (in KB) of any .csv
    #            file to be created while migrating to an S3 target during full
    #            load.</p>
    #            <p>The default value is 1,048,576 KB (1 GB). Valid values include 1 to 1,048,576.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rfc4180
    #   <p>For an S3 source, when this value is set to <code>true</code> or <code>y</code>,
    #            each leading double quotation mark has to be followed by an
    #            ending double quotation mark. This formatting complies with RFC
    #            4180. When this value is set to <code>false</code> or
    #            <code>n</code>, string literals are copied to the target as
    #            is. In this case, a delimiter (row or column) signals the end of
    #            the field. Thus, you can't use a delimiter as part of the
    #            string, because it signals the end of the value.</p>
    #            <p>For an S3 target, an optional parameter used to set behavior to comply with RFC
    #            4180 for data migrated to Amazon S3 using .csv file format only. When this
    #            value is set to <code>true</code> or <code>y</code> using Amazon
    #            S3 as a target, if the data has quotation marks or newline
    #            characters in it, DMS encloses the entire column with an
    #            additional pair of double quotation marks ("). Every quotation
    #            mark within the data is repeated twice.</p>
    #            <p>The default value is <code>true</code>. Valid values include <code>true</code>, <code>false</code>,
    #            <code>y</code>, and <code>n</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute date_partition_timezone
    #   <p>When creating an S3 target endpoint, set <code>DatePartitionTimezone</code> to convert
    #            the current UTC time into a specified time zone. The conversion occurs when a date
    #            partition folder is created and a CDC filename is generated. The time zone format is Area/Location.
    #            Use this parameter when <code>DatePartitionedEnabled</code> is set to <code>true</code>, as shown in the
    #            following example.</p>
    #            <p>
    #               <code>s3-settings='{"DatePartitionEnabled": true, "DatePartitionSequence": "YYYYMMDDHH",
    #            "DatePartitionDelimiter": "SLASH",
    #            "DatePartitionTimezone":"<i>Asia/Seoul</i>", "BucketName":
    #            "dms-nattarat-test"}'</code>
    #            </p>
    #
    #   @return [String]
    #
    S3Settings = ::Struct.new(
      :service_access_role_arn,
      :external_table_definition,
      :csv_row_delimiter,
      :csv_delimiter,
      :bucket_folder,
      :bucket_name,
      :compression_type,
      :encryption_mode,
      :server_side_encryption_kms_key_id,
      :data_format,
      :encoding_type,
      :dict_page_size_limit,
      :row_group_length,
      :data_page_size,
      :parquet_version,
      :enable_statistics,
      :include_op_for_full_load,
      :cdc_inserts_only,
      :timestamp_column_name,
      :parquet_timestamp_in_millisecond,
      :cdc_inserts_and_updates,
      :date_partition_enabled,
      :date_partition_sequence,
      :date_partition_delimiter,
      :use_csv_no_sup_value,
      :csv_no_sup_value,
      :preserve_transactions,
      :cdc_path,
      :use_task_start_time_for_full_load_timestamp,
      :canned_acl_for_objects,
      :add_column_name,
      :cdc_max_batch_interval,
      :cdc_min_file_size,
      :csv_null_value,
      :ignore_header_rows,
      :max_file_size,
      :rfc4180,
      :date_partition_timezone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SNS topic is invalid.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    SNSInvalidTopicFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are not authorized for the SNS subscription.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    SNSNoAuthorizationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SafeguardPolicy
    #
    module SafeguardPolicy
      # No documentation available.
      #
      RELY_ON_SQL_SERVER_REPLICATION_AGENT = "rely-on-sql-server-replication-agent"

      # No documentation available.
      #
      EXCLUSIVE_AUTOMATIC_TRUNCATION = "exclusive-automatic-truncation"

      # No documentation available.
      #
      SHARED_AUTOMATIC_TRUNCATION = "shared-automatic-truncation"
    end

    # <p>Describes a schema in a Fleet Advisor collector inventory.</p>
    #
    # @!attribute code_line_count
    #   <p>The number of lines of code in a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    # @!attribute code_size
    #   <p>The size level of the code in a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [Integer]
    #
    # @!attribute complexity
    #   <p>The complexity level of the code in a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute server
    #   <p>The database server for a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [ServerShortInfoResponse]
    #
    # @!attribute database_instance
    #   <p>The database for a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [DatabaseShortInfoResponse]
    #
    # @!attribute schema_id
    #   <p>The ID of a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute original_schema
    #   <p>Describes a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [SchemaShortInfoResponse]
    #
    # @!attribute similarity
    #   <p>The similarity value for a schema in a Fleet Advisor collector inventory. A higher similarity value
    #               indicates that a schema is likely to be a duplicate.</p>
    #
    #   @return [Float]
    #
    SchemaResponse = ::Struct.new(
      :code_line_count,
      :code_size,
      :complexity,
      :server,
      :database_instance,
      :schema_id,
      :schema_name,
      :original_schema,
      :similarity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a schema in a Fleet Advisor collector inventory.</p>
    #
    # @!attribute schema_id
    #   <p>The ID of a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of a schema in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_id
    #   <p>The ID of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute database_ip_address
    #   <p>The IP address of a database in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    SchemaShortInfoResponse = ::Struct.new(
      :schema_id,
      :schema_name,
      :database_id,
      :database_name,
      :database_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a server in a Fleet Advisor collector inventory.</p>
    #
    # @!attribute server_id
    #   <p>The ID of a server in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of a server in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>The name address of a server in a Fleet Advisor collector inventory.</p>
    #
    #   @return [String]
    #
    ServerShortInfoResponse = ::Struct.new(
      :server_id,
      :ip_address,
      :server_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      replication_instance = "replication-instance"
    end

    # Includes enum constants for SslSecurityProtocolValue
    #
    module SslSecurityProtocolValue
      # No documentation available.
      #
      PLAINTEXT = "plaintext"

      # No documentation available.
      #
      SSL_ENCRYPTION = "ssl-encryption"
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p> The Amazon Resource Name (ARN) of the replication task. </p>
    #
    #   @return [String]
    #
    StartReplicationTaskAssessmentInput = ::Struct.new(
      :replication_task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p> The assessed replication task. </p>
    #
    #   @return [ReplicationTask]
    #
    StartReplicationTaskAssessmentOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>Amazon Resource Name (ARN) of the migration task associated with the premigration
    #            assessment run that you want to start.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_role_arn
    #   <p>ARN of the service role needed to start the assessment run. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute result_location_bucket
    #   <p>Amazon S3 bucket where you want DMS to store the results of this assessment
    #            run.</p>
    #
    #   @return [String]
    #
    # @!attribute result_location_folder
    #   <p>Folder within an Amazon S3 bucket where you want DMS to store the results of this assessment
    #            run.</p>
    #
    #   @return [String]
    #
    # @!attribute result_encryption_mode
    #   <p>Encryption mode that you can specify to encrypt the results of this assessment run. If
    #            you don't specify this request parameter, DMS stores the assessment run results
    #            without encryption. You can specify one of the options following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"SSE_S3"</code> – The server-side encryption provided as a default by
    #                  Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"SSE_KMS"</code> – Key Management Service (KMS) encryption.
    #                  This encryption can use either a custom KMS encryption key that you specify or the
    #                  default KMS encryption key that DMS provides.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute result_kms_key_arn
    #   <p>ARN of a custom KMS encryption key that you specify when you set
    #               <code>ResultEncryptionMode</code> to <code>"SSE_KMS</code>".</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_run_name
    #   <p>Unique name to identify the assessment run.</p>
    #
    #   @return [String]
    #
    # @!attribute include_only
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            include. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>IncludeOnly</code> if you also set a value for
    #               <code>Exclude</code> in the API operation. </p>
    #               <p>To identify the names of the default individual assessments that DMS
    #               supports for the associated migration task, run the
    #               <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #               <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            exclude. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>Exclude</code> if you also set a value for
    #               <code>IncludeOnly</code> in the API operation.</p>
    #               <p>To identify the names of the default individual assessments that DMS
    #               supports for the associated migration task, run the
    #               <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #               <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    StartReplicationTaskAssessmentRunInput = ::Struct.new(
      :replication_task_arn,
      :service_access_role_arn,
      :result_location_bucket,
      :result_location_folder,
      :result_encryption_mode,
      :result_kms_key_arn,
      :assessment_run_name,
      :include_only,
      :exclude,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_assessment_run
    #   <p>The premigration assessment run that was started.</p>
    #
    #   @return [ReplicationTaskAssessmentRun]
    #
    StartReplicationTaskAssessmentRunOutput = ::Struct.new(
      :replication_task_assessment_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be started.</p>
    #
    #   @return [String]
    #
    # @!attribute start_replication_task_type
    #   <p>The type of replication task to start.</p>
    #            <p>When the migration type is <code>full-load</code> or <code>full-load-and-cdc</code>, the only valid value
    #              for the first run of the task is <code>start-replication</code>. You use <code>reload-target</code> to restart
    #          the task and <code>resume-processing</code> to resume the task.</p>
    #            <p>When the migration type is <code>cdc</code>, you use <code>start-replication</code> to start or restart
    #          the task, and <code>resume-processing</code> to resume the task. <code>reload-target</code> is not a valid value for
    #          a task with migration type of <code>cdc</code>.</p>
    #
    #   Enum, one of: ["start-replication", "resume-processing", "reload-target"]
    #
    #   @return [String]
    #
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #
    #   @return [Time]
    #
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1 27 mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876 0 0 * 0 93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    #   @return [String]
    #
    StartReplicationTaskInput = ::Struct.new(
      :replication_task_arn,
      :start_replication_task_type,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p>The replication task started.</p>
    #
    #   @return [ReplicationTask]
    #
    StartReplicationTaskOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StartReplicationTaskTypeValue
    #
    module StartReplicationTaskTypeValue
      # No documentation available.
      #
      START_REPLICATION = "start-replication"

      # No documentation available.
      #
      RESUME_PROCESSING = "resume-processing"

      # No documentation available.
      #
      RELOAD_TARGET = "reload-target"
    end

    # <p></p>
    #
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>
    #
    #   @return [String]
    #
    StopReplicationTaskInput = ::Struct.new(
      :replication_task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute replication_task
    #   <p>The replication task stopped.</p>
    #
    #   @return [ReplicationTask]
    #
    StopReplicationTaskOutput = ::Struct.new(
      :replication_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The storage quota has been exceeded.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    StorageQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In response to a request by the <code>DescribeReplicationSubnetGroups</code> operation,
    #          this object identifies a subnet by its given Availability Zone, subnet identifier, and
    #          status.</p>
    #
    # @!attribute subnet_identifier
    #   <p>The subnet identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone of the subnet.</p>
    #
    #   @return [AvailabilityZone]
    #
    # @!attribute subnet_status
    #   <p>The status of the subnet.</p>
    #
    #   @return [String]
    #
    Subnet = ::Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified subnet is already in use.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    SubnetAlreadyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about types of supported endpoints in response to a request by the
    #             <code>DescribeEndpointTypes</code> operation. This information includes the type of
    #          endpoint, the database engine name, and whether change data capture (CDC) is
    #          supported.</p>
    #
    # @!attribute engine_name
    #   <p>The database engine name. Valid values, depending on the EndpointType,  include
    #            <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #            <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>,
    #            <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"azuredb"</code>,
    #            <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #            <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #            <code>"documentdb"</code>, <code>"sqlserver"</code>, and <code>"neptune"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_cdc
    #   <p>Indicates if change data capture (CDC) is supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    #   Enum, one of: ["source", "target"]
    #
    #   @return [String]
    #
    # @!attribute replication_instance_engine_minimum_version
    #   <p>The earliest DMS engine version that supports this endpoint engine. Note that endpoint engines released with DMS versions earlier than 3.1.1 do not return a value for this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_display_name
    #   <p>The expanded name for the engine name. For example, if the <code>EngineName</code>
    #            parameter is "aurora," this value would be "Amazon Aurora MySQL."</p>
    #
    #   @return [String]
    #
    SupportedEndpointType = ::Struct.new(
      :engine_name,
      :supports_cdc,
      :endpoint_type,
      :replication_instance_engine_minimum_version,
      :engine_display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.supports_cdc ||= false
      end

    end

    # <p>Provides information that defines a SAP ASE endpoint.</p>
    #
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Endpoint TCP port. The default is 5000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
    #            trusted entity and grants the required permissions to access the value in
    #            <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
    #            <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
    #             secret that allows access to the SAP ASE endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html security-iam-secretsmanager">Using secrets to access Database Migration Service
    #                  resources</a> in the <i>Database Migration Service User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the SAP SAE endpoint connection details.</p>
    #
    #   @return [String]
    #
    SybaseSettings = ::Struct.new(
      :database_name,
      :password,
      :port,
      :server_name,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DatabaseMigrationService::Types::SybaseSettings "\
          "database_name=#{database_name || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "port=#{port || 'nil'}, "\
          "server_name=#{server_name || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "secrets_manager_access_role_arn=#{secrets_manager_access_role_arn || 'nil'}, "\
          "secrets_manager_secret_id=#{secrets_manager_secret_id || 'nil'}>"
      end
    end

    # <p>Provides a collection of table statistics in response to a request by the
    #          <code>DescribeTableStatistics</code> operation.</p>
    #
    # @!attribute schema_name
    #   <p>The schema name.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute inserts
    #   <p>The number of insert actions performed on a table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute deletes
    #   <p>The number of delete actions performed on a table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute updates
    #   <p>The number of update actions performed on a table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ddls
    #   <p>The data definition language (DDL) used to build and modify the structure of your tables.</p>
    #
    #   @return [Integer]
    #
    # @!attribute full_load_rows
    #   <p>The number of rows added during the full load operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute full_load_condtnl_chk_failed_rows
    #   <p>The number of rows that failed conditional checks during the full load operation (valid
    #            only for migrations where DynamoDB is the target).</p>
    #
    #   @return [Integer]
    #
    # @!attribute full_load_error_rows
    #   <p>The number of rows that failed to load during the full load operation (valid only for
    #            migrations where DynamoDB is the target).</p>
    #
    #   @return [Integer]
    #
    # @!attribute full_load_start_time
    #   <p>The time when the full load operation started.</p>
    #
    #   @return [Time]
    #
    # @!attribute full_load_end_time
    #   <p>The time when the full load operation completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute full_load_reloaded
    #   <p>A value that indicates if the table was reloaded (<code>true</code>)
    #            or loaded as part of a new full load operation (<code>false</code>).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_update_time
    #   <p>The last time a table was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute table_state
    #   <p>The state of the tables described.</p>
    #            <p>Valid states: Table does not exist | Before load | Full load | Table completed | Table
    #            cancelled | Table error | Table all | Table updates | Table is being reloaded</p>
    #
    #   @return [String]
    #
    # @!attribute validation_pending_records
    #   <p>The number of records that have yet to be validated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute validation_failed_records
    #   <p>The number of records that failed validation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute validation_suspended_records
    #   <p>The number of records that couldn't be validated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute validation_state
    #   <p>The validation state of the table.</p>
    #            <p>This parameter can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Not enabled – Validation isn't enabled for the table in the migration
    #                  task.</p>
    #               </li>
    #               <li>
    #                  <p>Pending records – Some records in the table are waiting for validation.</p>
    #               </li>
    #               <li>
    #                  <p>Mismatched records – Some records in the table don't match between the source
    #                  and target.</p>
    #               </li>
    #               <li>
    #                  <p>Suspended records – Some records in the table couldn't be validated.</p>
    #               </li>
    #               <li>
    #                  <p>No primary key  –The table couldn't be validated because it has no primary
    #                  key.</p>
    #               </li>
    #               <li>
    #                  <p>Table error – The table wasn't validated because it's in an error state
    #                  and some data wasn't migrated.</p>
    #               </li>
    #               <li>
    #                  <p>Validated – All rows in the table are validated. If the table is updated, the
    #                  status can change from Validated.</p>
    #               </li>
    #               <li>
    #                  <p>Error – The table couldn't be validated because of an unexpected
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>Pending validation – The table is waiting validation.</p>
    #               </li>
    #               <li>
    #                  <p>Preparing table – Preparing the table enabled in the migration task for validation.</p>
    #               </li>
    #               <li>
    #                  <p>Pending revalidation – All rows in the table are pending validation after the table was updated.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute validation_state_details
    #   <p>Additional details about the state of validation.</p>
    #
    #   @return [String]
    #
    TableStatistics = ::Struct.new(
      :schema_name,
      :table_name,
      :inserts,
      :deletes,
      :updates,
      :ddls,
      :full_load_rows,
      :full_load_condtnl_chk_failed_rows,
      :full_load_error_rows,
      :full_load_start_time,
      :full_load_end_time,
      :full_load_reloaded,
      :last_update_time,
      :table_state,
      :validation_pending_records,
      :validation_failed_records,
      :validation_suspended_records,
      :validation_state,
      :validation_state_details,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.inserts ||= 0
        self.deletes ||= 0
        self.updates ||= 0
        self.ddls ||= 0
        self.full_load_rows ||= 0
        self.full_load_condtnl_chk_failed_rows ||= 0
        self.full_load_error_rows ||= 0
        self.validation_pending_records ||= 0
        self.validation_failed_records ||= 0
        self.validation_suspended_records ||= 0
      end

    end

    # <p>Provides the name of the schema and table to be reloaded.</p>
    #
    # @!attribute schema_name
    #   <p>The schema name of the table to be reloaded.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The table name of the table to be reloaded.</p>
    #
    #   @return [String]
    #
    TableToReload = ::Struct.new(
      :schema_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A user-defined key-value pair that describes metadata added to an DMS resource and
    #          that is used by operations such as the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AddTagsToResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ListTagsForResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RemoveTagsFromResource</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>A key is the required name of the tag. The string value can be 1-128 Unicode characters
    #            in length and can't be prefixed with "aws:" or "dms:". The string can only contain
    #            only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java
    #            regular expressions: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value is the optional value of the tag. The string value can be 1-256 Unicode
    #            characters in length and can't be prefixed with "aws:" or "dms:". The string can only
    #            contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-'
    #            (Java regular expressions: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the resource for which the tag is created.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetDbType
    #
    module TargetDbType
      # No documentation available.
      #
      SPECIFIC_DATABASE = "specific-database"

      # No documentation available.
      #
      MULTIPLE_DATABASES = "multiple-databases"
    end

    # <p></p>
    #
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    #   @return [String]
    #
    TestConnectionInput = ::Struct.new(
      :replication_instance_arn,
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute connection
    #   <p>The connection tested.</p>
    #
    #   @return [Connection]
    #
    TestConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An upgrade dependency is preventing the database migration.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    UpgradeDependencyFailureFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VersionStatus
    #
    module VersionStatus
      # No documentation available.
      #
      UP_TO_DATE = "UP_TO_DATE"

      # No documentation available.
      #
      OUTDATED = "OUTDATED"

      # No documentation available.
      #
      UNSUPPORTED = "UNSUPPORTED"
    end

    # <p>Describes the status of a security group associated with the virtual private cloud (VPC)
    #          hosting your replication and DB instances.</p>
    #
    # @!attribute vpc_security_group_id
    #   <p>The VPC security group ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #
    #   @return [String]
    #
    VpcSecurityGroupMembership = ::Struct.new(
      :vpc_security_group_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
