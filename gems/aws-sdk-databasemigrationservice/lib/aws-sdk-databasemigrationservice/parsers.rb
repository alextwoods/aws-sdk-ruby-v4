# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DatabaseMigrationService
  module Parsers

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundFault
    class ResourceNotFoundFault
      def self.parse(http_resp)
        data = Types::ResourceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.parse(http_resp)
        data = Types::ApplyPendingMaintenanceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_pending_maintenance_actions = (Parsers::ResourcePendingMaintenanceActions.parse(map['ResourcePendingMaintenanceActions']) unless map['ResourcePendingMaintenanceActions'].nil?)
        data
      end
    end

    class ResourcePendingMaintenanceActions
      def self.parse(map)
        data = Types::ResourcePendingMaintenanceActions.new
        data.resource_identifier = map['ResourceIdentifier']
        data.pending_maintenance_action_details = (Parsers::PendingMaintenanceActionDetails.parse(map['PendingMaintenanceActionDetails']) unless map['PendingMaintenanceActionDetails'].nil?)
        return data
      end
    end

    class PendingMaintenanceActionDetails
      def self.parse(list)
        list.map do |value|
          Parsers::PendingMaintenanceAction.parse(value) unless value.nil?
        end
      end
    end

    class PendingMaintenanceAction
      def self.parse(map)
        data = Types::PendingMaintenanceAction.new
        data.action = map['Action']
        data.auto_applied_after_date = Time.at(map['AutoAppliedAfterDate'].to_i) if map['AutoAppliedAfterDate']
        data.forced_apply_date = Time.at(map['ForcedApplyDate'].to_i) if map['ForcedApplyDate']
        data.opt_in_status = map['OptInStatus']
        data.current_apply_date = Time.at(map['CurrentApplyDate'].to_i) if map['CurrentApplyDate']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for CancelReplicationTaskAssessmentRun
    class CancelReplicationTaskAssessmentRun
      def self.parse(http_resp)
        data = Types::CancelReplicationTaskAssessmentRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task_assessment_run = (Parsers::ReplicationTaskAssessmentRun.parse(map['ReplicationTaskAssessmentRun']) unless map['ReplicationTaskAssessmentRun'].nil?)
        data
      end
    end

    class ReplicationTaskAssessmentRun
      def self.parse(map)
        data = Types::ReplicationTaskAssessmentRun.new
        data.replication_task_assessment_run_arn = map['ReplicationTaskAssessmentRunArn']
        data.replication_task_arn = map['ReplicationTaskArn']
        data.status = map['Status']
        data.replication_task_assessment_run_creation_date = Time.at(map['ReplicationTaskAssessmentRunCreationDate'].to_i) if map['ReplicationTaskAssessmentRunCreationDate']
        data.assessment_progress = (Parsers::ReplicationTaskAssessmentRunProgress.parse(map['AssessmentProgress']) unless map['AssessmentProgress'].nil?)
        data.last_failure_message = map['LastFailureMessage']
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.result_location_bucket = map['ResultLocationBucket']
        data.result_location_folder = map['ResultLocationFolder']
        data.result_encryption_mode = map['ResultEncryptionMode']
        data.result_kms_key_arn = map['ResultKmsKeyArn']
        data.assessment_run_name = map['AssessmentRunName']
        return data
      end
    end

    class ReplicationTaskAssessmentRunProgress
      def self.parse(map)
        data = Types::ReplicationTaskAssessmentRunProgress.new
        data.individual_assessment_count = map['IndividualAssessmentCount']
        data.individual_assessment_completed_count = map['IndividualAssessmentCompletedCount']
        return data
      end
    end

    # Error Parser for InvalidResourceStateFault
    class InvalidResourceStateFault
      def self.parse(http_resp)
        data = Types::InvalidResourceStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AccessDeniedFault
    class AccessDeniedFault
      def self.parse(http_resp)
        data = Types::AccessDeniedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateEndpoint
    class CreateEndpoint
      def self.parse(http_resp)
        data = Types::CreateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint = (Parsers::Endpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.endpoint_identifier = map['EndpointIdentifier']
        data.endpoint_type = map['EndpointType']
        data.engine_name = map['EngineName']
        data.engine_display_name = map['EngineDisplayName']
        data.username = map['Username']
        data.server_name = map['ServerName']
        data.port = map['Port']
        data.database_name = map['DatabaseName']
        data.extra_connection_attributes = map['ExtraConnectionAttributes']
        data.status = map['Status']
        data.kms_key_id = map['KmsKeyId']
        data.endpoint_arn = map['EndpointArn']
        data.certificate_arn = map['CertificateArn']
        data.ssl_mode = map['SslMode']
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.external_table_definition = map['ExternalTableDefinition']
        data.external_id = map['ExternalId']
        data.dynamo_db_settings = (Parsers::DynamoDbSettings.parse(map['DynamoDbSettings']) unless map['DynamoDbSettings'].nil?)
        data.s3_settings = (Parsers::S3Settings.parse(map['S3Settings']) unless map['S3Settings'].nil?)
        data.dms_transfer_settings = (Parsers::DmsTransferSettings.parse(map['DmsTransferSettings']) unless map['DmsTransferSettings'].nil?)
        data.mongo_db_settings = (Parsers::MongoDbSettings.parse(map['MongoDbSettings']) unless map['MongoDbSettings'].nil?)
        data.kinesis_settings = (Parsers::KinesisSettings.parse(map['KinesisSettings']) unless map['KinesisSettings'].nil?)
        data.kafka_settings = (Parsers::KafkaSettings.parse(map['KafkaSettings']) unless map['KafkaSettings'].nil?)
        data.elasticsearch_settings = (Parsers::ElasticsearchSettings.parse(map['ElasticsearchSettings']) unless map['ElasticsearchSettings'].nil?)
        data.neptune_settings = (Parsers::NeptuneSettings.parse(map['NeptuneSettings']) unless map['NeptuneSettings'].nil?)
        data.redshift_settings = (Parsers::RedshiftSettings.parse(map['RedshiftSettings']) unless map['RedshiftSettings'].nil?)
        data.postgre_sql_settings = (Parsers::PostgreSQLSettings.parse(map['PostgreSQLSettings']) unless map['PostgreSQLSettings'].nil?)
        data.my_sql_settings = (Parsers::MySQLSettings.parse(map['MySQLSettings']) unless map['MySQLSettings'].nil?)
        data.oracle_settings = (Parsers::OracleSettings.parse(map['OracleSettings']) unless map['OracleSettings'].nil?)
        data.sybase_settings = (Parsers::SybaseSettings.parse(map['SybaseSettings']) unless map['SybaseSettings'].nil?)
        data.microsoft_sql_server_settings = (Parsers::MicrosoftSQLServerSettings.parse(map['MicrosoftSQLServerSettings']) unless map['MicrosoftSQLServerSettings'].nil?)
        data.ibm_db2_settings = (Parsers::IBMDb2Settings.parse(map['IBMDb2Settings']) unless map['IBMDb2Settings'].nil?)
        data.doc_db_settings = (Parsers::DocDbSettings.parse(map['DocDbSettings']) unless map['DocDbSettings'].nil?)
        data.redis_settings = (Parsers::RedisSettings.parse(map['RedisSettings']) unless map['RedisSettings'].nil?)
        data.gcp_my_sql_settings = (Parsers::GcpMySQLSettings.parse(map['GcpMySQLSettings']) unless map['GcpMySQLSettings'].nil?)
        return data
      end
    end

    class GcpMySQLSettings
      def self.parse(map)
        data = Types::GcpMySQLSettings.new
        data.after_connect_script = map['AfterConnectScript']
        data.clean_source_metadata_on_mismatch = map['CleanSourceMetadataOnMismatch']
        data.database_name = map['DatabaseName']
        data.events_poll_interval = map['EventsPollInterval']
        data.target_db_type = map['TargetDbType']
        data.max_file_size = map['MaxFileSize']
        data.parallel_load_threads = map['ParallelLoadThreads']
        data.password = map['Password']
        data.port = map['Port']
        data.server_name = map['ServerName']
        data.server_timezone = map['ServerTimezone']
        data.username = map['Username']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class RedisSettings
      def self.parse(map)
        data = Types::RedisSettings.new
        data.server_name = map['ServerName']
        data.port = map['Port']
        data.ssl_security_protocol = map['SslSecurityProtocol']
        data.auth_type = map['AuthType']
        data.auth_user_name = map['AuthUserName']
        data.auth_password = map['AuthPassword']
        data.ssl_ca_certificate_arn = map['SslCaCertificateArn']
        return data
      end
    end

    class DocDbSettings
      def self.parse(map)
        data = Types::DocDbSettings.new
        data.username = map['Username']
        data.password = map['Password']
        data.server_name = map['ServerName']
        data.port = map['Port']
        data.database_name = map['DatabaseName']
        data.nesting_level = map['NestingLevel']
        data.extract_doc_id = map['ExtractDocId']
        data.docs_to_investigate = map['DocsToInvestigate']
        data.kms_key_id = map['KmsKeyId']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class IBMDb2Settings
      def self.parse(map)
        data = Types::IBMDb2Settings.new
        data.database_name = map['DatabaseName']
        data.password = map['Password']
        data.port = map['Port']
        data.server_name = map['ServerName']
        data.set_data_capture_changes = map['SetDataCaptureChanges']
        data.current_lsn = map['CurrentLsn']
        data.max_k_bytes_per_read = map['MaxKBytesPerRead']
        data.username = map['Username']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class MicrosoftSQLServerSettings
      def self.parse(map)
        data = Types::MicrosoftSQLServerSettings.new
        data.port = map['Port']
        data.bcp_packet_size = map['BcpPacketSize']
        data.database_name = map['DatabaseName']
        data.control_tables_file_group = map['ControlTablesFileGroup']
        data.password = map['Password']
        data.query_single_always_on_node = map['QuerySingleAlwaysOnNode']
        data.read_backup_only = map['ReadBackupOnly']
        data.safeguard_policy = map['SafeguardPolicy']
        data.server_name = map['ServerName']
        data.username = map['Username']
        data.use_bcp_full_load = map['UseBcpFullLoad']
        data.use_third_party_backup_device = map['UseThirdPartyBackupDevice']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class SybaseSettings
      def self.parse(map)
        data = Types::SybaseSettings.new
        data.database_name = map['DatabaseName']
        data.password = map['Password']
        data.port = map['Port']
        data.server_name = map['ServerName']
        data.username = map['Username']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class OracleSettings
      def self.parse(map)
        data = Types::OracleSettings.new
        data.add_supplemental_logging = map['AddSupplementalLogging']
        data.archived_log_dest_id = map['ArchivedLogDestId']
        data.additional_archived_log_dest_id = map['AdditionalArchivedLogDestId']
        data.extra_archived_log_dest_ids = (Parsers::IntegerList.parse(map['ExtraArchivedLogDestIds']) unless map['ExtraArchivedLogDestIds'].nil?)
        data.allow_select_nested_tables = map['AllowSelectNestedTables']
        data.parallel_asm_read_threads = map['ParallelAsmReadThreads']
        data.read_ahead_blocks = map['ReadAheadBlocks']
        data.access_alternate_directly = map['AccessAlternateDirectly']
        data.use_alternate_folder_for_online = map['UseAlternateFolderForOnline']
        data.oracle_path_prefix = map['OraclePathPrefix']
        data.use_path_prefix = map['UsePathPrefix']
        data.replace_path_prefix = map['ReplacePathPrefix']
        data.enable_homogenous_tablespace = map['EnableHomogenousTablespace']
        data.direct_path_no_log = map['DirectPathNoLog']
        data.archived_logs_only = map['ArchivedLogsOnly']
        data.asm_password = map['AsmPassword']
        data.asm_server = map['AsmServer']
        data.asm_user = map['AsmUser']
        data.char_length_semantics = map['CharLengthSemantics']
        data.database_name = map['DatabaseName']
        data.direct_path_parallel_load = map['DirectPathParallelLoad']
        data.fail_tasks_on_lob_truncation = map['FailTasksOnLobTruncation']
        data.number_datatype_scale = map['NumberDatatypeScale']
        data.password = map['Password']
        data.port = map['Port']
        data.read_table_space_name = map['ReadTableSpaceName']
        data.retry_interval = map['RetryInterval']
        data.security_db_encryption = map['SecurityDbEncryption']
        data.security_db_encryption_name = map['SecurityDbEncryptionName']
        data.server_name = map['ServerName']
        data.spatial_data_option_to_geo_json_function_name = map['SpatialDataOptionToGeoJsonFunctionName']
        data.standby_delay_time = map['StandbyDelayTime']
        data.username = map['Username']
        data.use_b_file = map['UseBFile']
        data.use_direct_path_full_load = map['UseDirectPathFullLoad']
        data.use_logminer_reader = map['UseLogminerReader']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        data.secrets_manager_oracle_asm_access_role_arn = map['SecretsManagerOracleAsmAccessRoleArn']
        data.secrets_manager_oracle_asm_secret_id = map['SecretsManagerOracleAsmSecretId']
        return data
      end
    end

    class IntegerList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class MySQLSettings
      def self.parse(map)
        data = Types::MySQLSettings.new
        data.after_connect_script = map['AfterConnectScript']
        data.clean_source_metadata_on_mismatch = map['CleanSourceMetadataOnMismatch']
        data.database_name = map['DatabaseName']
        data.events_poll_interval = map['EventsPollInterval']
        data.target_db_type = map['TargetDbType']
        data.max_file_size = map['MaxFileSize']
        data.parallel_load_threads = map['ParallelLoadThreads']
        data.password = map['Password']
        data.port = map['Port']
        data.server_name = map['ServerName']
        data.server_timezone = map['ServerTimezone']
        data.username = map['Username']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class PostgreSQLSettings
      def self.parse(map)
        data = Types::PostgreSQLSettings.new
        data.after_connect_script = map['AfterConnectScript']
        data.capture_ddls = map['CaptureDdls']
        data.max_file_size = map['MaxFileSize']
        data.database_name = map['DatabaseName']
        data.ddl_artifacts_schema = map['DdlArtifactsSchema']
        data.execute_timeout = map['ExecuteTimeout']
        data.fail_tasks_on_lob_truncation = map['FailTasksOnLobTruncation']
        data.heartbeat_enable = map['HeartbeatEnable']
        data.heartbeat_schema = map['HeartbeatSchema']
        data.heartbeat_frequency = map['HeartbeatFrequency']
        data.password = map['Password']
        data.port = map['Port']
        data.server_name = map['ServerName']
        data.username = map['Username']
        data.slot_name = map['SlotName']
        data.plugin_name = map['PluginName']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class RedshiftSettings
      def self.parse(map)
        data = Types::RedshiftSettings.new
        data.accept_any_date = map['AcceptAnyDate']
        data.after_connect_script = map['AfterConnectScript']
        data.bucket_folder = map['BucketFolder']
        data.bucket_name = map['BucketName']
        data.case_sensitive_names = map['CaseSensitiveNames']
        data.comp_update = map['CompUpdate']
        data.connection_timeout = map['ConnectionTimeout']
        data.database_name = map['DatabaseName']
        data.date_format = map['DateFormat']
        data.empty_as_null = map['EmptyAsNull']
        data.encryption_mode = map['EncryptionMode']
        data.explicit_ids = map['ExplicitIds']
        data.file_transfer_upload_streams = map['FileTransferUploadStreams']
        data.load_timeout = map['LoadTimeout']
        data.max_file_size = map['MaxFileSize']
        data.password = map['Password']
        data.port = map['Port']
        data.remove_quotes = map['RemoveQuotes']
        data.replace_invalid_chars = map['ReplaceInvalidChars']
        data.replace_chars = map['ReplaceChars']
        data.server_name = map['ServerName']
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.server_side_encryption_kms_key_id = map['ServerSideEncryptionKmsKeyId']
        data.time_format = map['TimeFormat']
        data.trim_blanks = map['TrimBlanks']
        data.truncate_columns = map['TruncateColumns']
        data.username = map['Username']
        data.write_buffer_size = map['WriteBufferSize']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class NeptuneSettings
      def self.parse(map)
        data = Types::NeptuneSettings.new
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_bucket_folder = map['S3BucketFolder']
        data.error_retry_duration = map['ErrorRetryDuration']
        data.max_file_size = map['MaxFileSize']
        data.max_retry_count = map['MaxRetryCount']
        data.iam_auth_enabled = map['IamAuthEnabled']
        return data
      end
    end

    class ElasticsearchSettings
      def self.parse(map)
        data = Types::ElasticsearchSettings.new
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.endpoint_uri = map['EndpointUri']
        data.full_load_error_percentage = map['FullLoadErrorPercentage']
        data.error_retry_duration = map['ErrorRetryDuration']
        return data
      end
    end

    class KafkaSettings
      def self.parse(map)
        data = Types::KafkaSettings.new
        data.broker = map['Broker']
        data.topic = map['Topic']
        data.message_format = map['MessageFormat']
        data.include_transaction_details = map['IncludeTransactionDetails']
        data.include_partition_value = map['IncludePartitionValue']
        data.partition_include_schema_table = map['PartitionIncludeSchemaTable']
        data.include_table_alter_operations = map['IncludeTableAlterOperations']
        data.include_control_details = map['IncludeControlDetails']
        data.message_max_bytes = map['MessageMaxBytes']
        data.include_null_and_empty = map['IncludeNullAndEmpty']
        data.security_protocol = map['SecurityProtocol']
        data.ssl_client_certificate_arn = map['SslClientCertificateArn']
        data.ssl_client_key_arn = map['SslClientKeyArn']
        data.ssl_client_key_password = map['SslClientKeyPassword']
        data.ssl_ca_certificate_arn = map['SslCaCertificateArn']
        data.sasl_username = map['SaslUsername']
        data.sasl_password = map['SaslPassword']
        data.no_hex_prefix = map['NoHexPrefix']
        return data
      end
    end

    class KinesisSettings
      def self.parse(map)
        data = Types::KinesisSettings.new
        data.stream_arn = map['StreamArn']
        data.message_format = map['MessageFormat']
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.include_transaction_details = map['IncludeTransactionDetails']
        data.include_partition_value = map['IncludePartitionValue']
        data.partition_include_schema_table = map['PartitionIncludeSchemaTable']
        data.include_table_alter_operations = map['IncludeTableAlterOperations']
        data.include_control_details = map['IncludeControlDetails']
        data.include_null_and_empty = map['IncludeNullAndEmpty']
        data.no_hex_prefix = map['NoHexPrefix']
        return data
      end
    end

    class MongoDbSettings
      def self.parse(map)
        data = Types::MongoDbSettings.new
        data.username = map['Username']
        data.password = map['Password']
        data.server_name = map['ServerName']
        data.port = map['Port']
        data.database_name = map['DatabaseName']
        data.auth_type = map['AuthType']
        data.auth_mechanism = map['AuthMechanism']
        data.nesting_level = map['NestingLevel']
        data.extract_doc_id = map['ExtractDocId']
        data.docs_to_investigate = map['DocsToInvestigate']
        data.auth_source = map['AuthSource']
        data.kms_key_id = map['KmsKeyId']
        data.secrets_manager_access_role_arn = map['SecretsManagerAccessRoleArn']
        data.secrets_manager_secret_id = map['SecretsManagerSecretId']
        return data
      end
    end

    class DmsTransferSettings
      def self.parse(map)
        data = Types::DmsTransferSettings.new
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.bucket_name = map['BucketName']
        return data
      end
    end

    class S3Settings
      def self.parse(map)
        data = Types::S3Settings.new
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.external_table_definition = map['ExternalTableDefinition']
        data.csv_row_delimiter = map['CsvRowDelimiter']
        data.csv_delimiter = map['CsvDelimiter']
        data.bucket_folder = map['BucketFolder']
        data.bucket_name = map['BucketName']
        data.compression_type = map['CompressionType']
        data.encryption_mode = map['EncryptionMode']
        data.server_side_encryption_kms_key_id = map['ServerSideEncryptionKmsKeyId']
        data.data_format = map['DataFormat']
        data.encoding_type = map['EncodingType']
        data.dict_page_size_limit = map['DictPageSizeLimit']
        data.row_group_length = map['RowGroupLength']
        data.data_page_size = map['DataPageSize']
        data.parquet_version = map['ParquetVersion']
        data.enable_statistics = map['EnableStatistics']
        data.include_op_for_full_load = map['IncludeOpForFullLoad']
        data.cdc_inserts_only = map['CdcInsertsOnly']
        data.timestamp_column_name = map['TimestampColumnName']
        data.parquet_timestamp_in_millisecond = map['ParquetTimestampInMillisecond']
        data.cdc_inserts_and_updates = map['CdcInsertsAndUpdates']
        data.date_partition_enabled = map['DatePartitionEnabled']
        data.date_partition_sequence = map['DatePartitionSequence']
        data.date_partition_delimiter = map['DatePartitionDelimiter']
        data.use_csv_no_sup_value = map['UseCsvNoSupValue']
        data.csv_no_sup_value = map['CsvNoSupValue']
        data.preserve_transactions = map['PreserveTransactions']
        data.cdc_path = map['CdcPath']
        data.use_task_start_time_for_full_load_timestamp = map['UseTaskStartTimeForFullLoadTimestamp']
        data.canned_acl_for_objects = map['CannedAclForObjects']
        data.add_column_name = map['AddColumnName']
        data.cdc_max_batch_interval = map['CdcMaxBatchInterval']
        data.cdc_min_file_size = map['CdcMinFileSize']
        data.csv_null_value = map['CsvNullValue']
        data.ignore_header_rows = map['IgnoreHeaderRows']
        data.max_file_size = map['MaxFileSize']
        data.rfc4180 = map['Rfc4180']
        data.date_partition_timezone = map['DatePartitionTimezone']
        return data
      end
    end

    class DynamoDbSettings
      def self.parse(map)
        data = Types::DynamoDbSettings.new
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        return data
      end
    end

    # Error Parser for ResourceAlreadyExistsFault
    class ResourceAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Error Parser for S3AccessDeniedFault
    class S3AccessDeniedFault
      def self.parse(http_resp)
        data = Types::S3AccessDeniedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSKeyNotAccessibleFault
    class KMSKeyNotAccessibleFault
      def self.parse(http_resp)
        data = Types::KMSKeyNotAccessibleFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceQuotaExceededFault
    class ResourceQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ResourceQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateEventSubscription
    class CreateEventSubscription
      def self.parse(http_resp)
        data = Types::CreateEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_subscription = (Parsers::EventSubscription.parse(map['EventSubscription']) unless map['EventSubscription'].nil?)
        data
      end
    end

    class EventSubscription
      def self.parse(map)
        data = Types::EventSubscription.new
        data.customer_aws_id = map['CustomerAwsId']
        data.cust_subscription_id = map['CustSubscriptionId']
        data.sns_topic_arn = map['SnsTopicArn']
        data.status = map['Status']
        data.subscription_creation_time = map['SubscriptionCreationTime']
        data.source_type = map['SourceType']
        data.source_ids_list = (Parsers::SourceIdsList.parse(map['SourceIdsList']) unless map['SourceIdsList'].nil?)
        data.event_categories_list = (Parsers::EventCategoriesList.parse(map['EventCategoriesList']) unless map['EventCategoriesList'].nil?)
        data.enabled = map['Enabled']
        return data
      end
    end

    class EventCategoriesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SourceIdsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for SNSInvalidTopicFault
    class SNSInvalidTopicFault
      def self.parse(http_resp)
        data = Types::SNSInvalidTopicFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSAccessDeniedFault
    class KMSAccessDeniedFault
      def self.parse(http_resp)
        data = Types::KMSAccessDeniedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSDisabledFault
    class KMSDisabledFault
      def self.parse(http_resp)
        data = Types::KMSDisabledFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSInvalidStateFault
    class KMSInvalidStateFault
      def self.parse(http_resp)
        data = Types::KMSInvalidStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSNotFoundFault
    class KMSNotFoundFault
      def self.parse(http_resp)
        data = Types::KMSNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SNSNoAuthorizationFault
    class SNSNoAuthorizationFault
      def self.parse(http_resp)
        data = Types::SNSNoAuthorizationFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSThrottlingFault
    class KMSThrottlingFault
      def self.parse(http_resp)
        data = Types::KMSThrottlingFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateFleetAdvisorCollector
    class CreateFleetAdvisorCollector
      def self.parse(http_resp)
        data = Types::CreateFleetAdvisorCollectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.collector_referenced_id = map['CollectorReferencedId']
        data.collector_name = map['CollectorName']
        data.description = map['Description']
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.s3_bucket_name = map['S3BucketName']
        data
      end
    end

    # Error Parser for S3ResourceNotFoundFault
    class S3ResourceNotFoundFault
      def self.parse(http_resp)
        data = Types::S3ResourceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateReplicationInstance
    class CreateReplicationInstance
      def self.parse(http_resp)
        data = Types::CreateReplicationInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_instance = (Parsers::ReplicationInstance.parse(map['ReplicationInstance']) unless map['ReplicationInstance'].nil?)
        data
      end
    end

    class ReplicationInstance
      def self.parse(map)
        data = Types::ReplicationInstance.new
        data.replication_instance_identifier = map['ReplicationInstanceIdentifier']
        data.replication_instance_class = map['ReplicationInstanceClass']
        data.replication_instance_status = map['ReplicationInstanceStatus']
        data.allocated_storage = map['AllocatedStorage']
        data.instance_create_time = Time.at(map['InstanceCreateTime'].to_i) if map['InstanceCreateTime']
        data.vpc_security_groups = (Parsers::VpcSecurityGroupMembershipList.parse(map['VpcSecurityGroups']) unless map['VpcSecurityGroups'].nil?)
        data.availability_zone = map['AvailabilityZone']
        data.replication_subnet_group = (Parsers::ReplicationSubnetGroup.parse(map['ReplicationSubnetGroup']) unless map['ReplicationSubnetGroup'].nil?)
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.pending_modified_values = (Parsers::ReplicationPendingModifiedValues.parse(map['PendingModifiedValues']) unless map['PendingModifiedValues'].nil?)
        data.multi_az = map['MultiAZ']
        data.engine_version = map['EngineVersion']
        data.auto_minor_version_upgrade = map['AutoMinorVersionUpgrade']
        data.kms_key_id = map['KmsKeyId']
        data.replication_instance_arn = map['ReplicationInstanceArn']
        data.replication_instance_public_ip_address = map['ReplicationInstancePublicIpAddress']
        data.replication_instance_private_ip_address = map['ReplicationInstancePrivateIpAddress']
        data.replication_instance_public_ip_addresses = (Parsers::ReplicationInstancePublicIpAddressList.parse(map['ReplicationInstancePublicIpAddresses']) unless map['ReplicationInstancePublicIpAddresses'].nil?)
        data.replication_instance_private_ip_addresses = (Parsers::ReplicationInstancePrivateIpAddressList.parse(map['ReplicationInstancePrivateIpAddresses']) unless map['ReplicationInstancePrivateIpAddresses'].nil?)
        data.publicly_accessible = map['PubliclyAccessible']
        data.secondary_availability_zone = map['SecondaryAvailabilityZone']
        data.free_until = Time.at(map['FreeUntil'].to_i) if map['FreeUntil']
        data.dns_name_servers = map['DnsNameServers']
        return data
      end
    end

    class ReplicationInstancePrivateIpAddressList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReplicationInstancePublicIpAddressList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReplicationPendingModifiedValues
      def self.parse(map)
        data = Types::ReplicationPendingModifiedValues.new
        data.replication_instance_class = map['ReplicationInstanceClass']
        data.allocated_storage = map['AllocatedStorage']
        data.multi_az = map['MultiAZ']
        data.engine_version = map['EngineVersion']
        return data
      end
    end

    class ReplicationSubnetGroup
      def self.parse(map)
        data = Types::ReplicationSubnetGroup.new
        data.replication_subnet_group_identifier = map['ReplicationSubnetGroupIdentifier']
        data.replication_subnet_group_description = map['ReplicationSubnetGroupDescription']
        data.vpc_id = map['VpcId']
        data.subnet_group_status = map['SubnetGroupStatus']
        data.subnets = (Parsers::SubnetList.parse(map['Subnets']) unless map['Subnets'].nil?)
        return data
      end
    end

    class SubnetList
      def self.parse(list)
        list.map do |value|
          Parsers::Subnet.parse(value) unless value.nil?
        end
      end
    end

    class Subnet
      def self.parse(map)
        data = Types::Subnet.new
        data.subnet_identifier = map['SubnetIdentifier']
        data.subnet_availability_zone = (Parsers::AvailabilityZone.parse(map['SubnetAvailabilityZone']) unless map['SubnetAvailabilityZone'].nil?)
        data.subnet_status = map['SubnetStatus']
        return data
      end
    end

    class AvailabilityZone
      def self.parse(map)
        data = Types::AvailabilityZone.new
        data.name = map['Name']
        return data
      end
    end

    class VpcSecurityGroupMembershipList
      def self.parse(list)
        list.map do |value|
          Parsers::VpcSecurityGroupMembership.parse(value) unless value.nil?
        end
      end
    end

    class VpcSecurityGroupMembership
      def self.parse(map)
        data = Types::VpcSecurityGroupMembership.new
        data.vpc_security_group_id = map['VpcSecurityGroupId']
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for ReplicationSubnetGroupDoesNotCoverEnoughAZs
    class ReplicationSubnetGroupDoesNotCoverEnoughAZs
      def self.parse(http_resp)
        data = Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InsufficientResourceCapacityFault
    class InsufficientResourceCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientResourceCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSubnet
    class InvalidSubnet
      def self.parse(http_resp)
        data = Types::InvalidSubnet.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StorageQuotaExceededFault
    class StorageQuotaExceededFault
      def self.parse(http_resp)
        data = Types::StorageQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateReplicationSubnetGroup
    class CreateReplicationSubnetGroup
      def self.parse(http_resp)
        data = Types::CreateReplicationSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_subnet_group = (Parsers::ReplicationSubnetGroup.parse(map['ReplicationSubnetGroup']) unless map['ReplicationSubnetGroup'].nil?)
        data
      end
    end

    # Operation Parser for CreateReplicationTask
    class CreateReplicationTask
      def self.parse(http_resp)
        data = Types::CreateReplicationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    class ReplicationTask
      def self.parse(map)
        data = Types::ReplicationTask.new
        data.replication_task_identifier = map['ReplicationTaskIdentifier']
        data.source_endpoint_arn = map['SourceEndpointArn']
        data.target_endpoint_arn = map['TargetEndpointArn']
        data.replication_instance_arn = map['ReplicationInstanceArn']
        data.migration_type = map['MigrationType']
        data.table_mappings = map['TableMappings']
        data.replication_task_settings = map['ReplicationTaskSettings']
        data.status = map['Status']
        data.last_failure_message = map['LastFailureMessage']
        data.stop_reason = map['StopReason']
        data.replication_task_creation_date = Time.at(map['ReplicationTaskCreationDate'].to_i) if map['ReplicationTaskCreationDate']
        data.replication_task_start_date = Time.at(map['ReplicationTaskStartDate'].to_i) if map['ReplicationTaskStartDate']
        data.cdc_start_position = map['CdcStartPosition']
        data.cdc_stop_position = map['CdcStopPosition']
        data.recovery_checkpoint = map['RecoveryCheckpoint']
        data.replication_task_arn = map['ReplicationTaskArn']
        data.replication_task_stats = (Parsers::ReplicationTaskStats.parse(map['ReplicationTaskStats']) unless map['ReplicationTaskStats'].nil?)
        data.task_data = map['TaskData']
        data.target_replication_instance_arn = map['TargetReplicationInstanceArn']
        return data
      end
    end

    class ReplicationTaskStats
      def self.parse(map)
        data = Types::ReplicationTaskStats.new
        data.full_load_progress_percent = map['FullLoadProgressPercent']
        data.elapsed_time_millis = map['ElapsedTimeMillis']
        data.tables_loaded = map['TablesLoaded']
        data.tables_loading = map['TablesLoading']
        data.tables_queued = map['TablesQueued']
        data.tables_errored = map['TablesErrored']
        data.fresh_start_date = Time.at(map['FreshStartDate'].to_i) if map['FreshStartDate']
        data.start_date = Time.at(map['StartDate'].to_i) if map['StartDate']
        data.stop_date = Time.at(map['StopDate'].to_i) if map['StopDate']
        data.full_load_start_date = Time.at(map['FullLoadStartDate'].to_i) if map['FullLoadStartDate']
        data.full_load_finish_date = Time.at(map['FullLoadFinishDate'].to_i) if map['FullLoadFinishDate']
        return data
      end
    end

    # Operation Parser for DeleteCertificate
    class DeleteCertificate
      def self.parse(http_resp)
        data = Types::DeleteCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = (Parsers::Certificate.parse(map['Certificate']) unless map['Certificate'].nil?)
        data
      end
    end

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.certificate_identifier = map['CertificateIdentifier']
        data.certificate_creation_date = Time.at(map['CertificateCreationDate'].to_i) if map['CertificateCreationDate']
        data.certificate_pem = map['CertificatePem']
        data.certificate_wallet = Base64::decode64(map['CertificateWallet']) unless map['CertificateWallet'].nil?
        data.certificate_arn = map['CertificateArn']
        data.certificate_owner = map['CertificateOwner']
        data.valid_from_date = Time.at(map['ValidFromDate'].to_i) if map['ValidFromDate']
        data.valid_to_date = Time.at(map['ValidToDate'].to_i) if map['ValidToDate']
        data.signing_algorithm = map['SigningAlgorithm']
        data.key_length = map['KeyLength']
        return data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection = (Parsers::Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.replication_instance_arn = map['ReplicationInstanceArn']
        data.endpoint_arn = map['EndpointArn']
        data.status = map['Status']
        data.last_failure_message = map['LastFailureMessage']
        data.endpoint_identifier = map['EndpointIdentifier']
        data.replication_instance_identifier = map['ReplicationInstanceIdentifier']
        return data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint = (Parsers::Endpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data
      end
    end

    # Operation Parser for DeleteEventSubscription
    class DeleteEventSubscription
      def self.parse(http_resp)
        data = Types::DeleteEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_subscription = (Parsers::EventSubscription.parse(map['EventSubscription']) unless map['EventSubscription'].nil?)
        data
      end
    end

    # Operation Parser for DeleteFleetAdvisorCollector
    class DeleteFleetAdvisorCollector
      def self.parse(http_resp)
        data = Types::DeleteFleetAdvisorCollectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CollectorNotFoundFault
    class CollectorNotFoundFault
      def self.parse(http_resp)
        data = Types::CollectorNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteFleetAdvisorDatabases
    class DeleteFleetAdvisorDatabases
      def self.parse(http_resp)
        data = Types::DeleteFleetAdvisorDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database_ids = (Parsers::StringList.parse(map['DatabaseIds']) unless map['DatabaseIds'].nil?)
        data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidOperationFault
    class InvalidOperationFault
      def self.parse(http_resp)
        data = Types::InvalidOperationFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteReplicationInstance
    class DeleteReplicationInstance
      def self.parse(http_resp)
        data = Types::DeleteReplicationInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_instance = (Parsers::ReplicationInstance.parse(map['ReplicationInstance']) unless map['ReplicationInstance'].nil?)
        data
      end
    end

    # Operation Parser for DeleteReplicationSubnetGroup
    class DeleteReplicationSubnetGroup
      def self.parse(http_resp)
        data = Types::DeleteReplicationSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteReplicationTask
    class DeleteReplicationTask
      def self.parse(http_resp)
        data = Types::DeleteReplicationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    # Operation Parser for DeleteReplicationTaskAssessmentRun
    class DeleteReplicationTaskAssessmentRun
      def self.parse(http_resp)
        data = Types::DeleteReplicationTaskAssessmentRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task_assessment_run = (Parsers::ReplicationTaskAssessmentRun.parse(map['ReplicationTaskAssessmentRun']) unless map['ReplicationTaskAssessmentRun'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_quotas = (Parsers::AccountQuotaList.parse(map['AccountQuotas']) unless map['AccountQuotas'].nil?)
        data.unique_account_identifier = map['UniqueAccountIdentifier']
        data
      end
    end

    class AccountQuotaList
      def self.parse(list)
        list.map do |value|
          Parsers::AccountQuota.parse(value) unless value.nil?
        end
      end
    end

    class AccountQuota
      def self.parse(map)
        data = Types::AccountQuota.new
        data.account_quota_name = map['AccountQuotaName']
        data.used = map['Used']
        data.max = map['Max']
        return data
      end
    end

    # Operation Parser for DescribeApplicableIndividualAssessments
    class DescribeApplicableIndividualAssessments
      def self.parse(http_resp)
        data = Types::DescribeApplicableIndividualAssessmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.individual_assessment_names = (Parsers::IndividualAssessmentNameList.parse(map['IndividualAssessmentNames']) unless map['IndividualAssessmentNames'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class IndividualAssessmentNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeCertificates
    class DescribeCertificates
      def self.parse(http_resp)
        data = Types::DescribeCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.certificates = (Parsers::CertificateList.parse(map['Certificates']) unless map['Certificates'].nil?)
        data
      end
    end

    class CertificateList
      def self.parse(list)
        list.map do |value|
          Parsers::Certificate.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeConnections
    class DescribeConnections
      def self.parse(http_resp)
        data = Types::DescribeConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.connections = (Parsers::ConnectionList.parse(map['Connections']) unless map['Connections'].nil?)
        data
      end
    end

    class ConnectionList
      def self.parse(list)
        list.map do |value|
          Parsers::Connection.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEndpointSettings
    class DescribeEndpointSettings
      def self.parse(http_resp)
        data = Types::DescribeEndpointSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.endpoint_settings = (Parsers::EndpointSettingsList.parse(map['EndpointSettings']) unless map['EndpointSettings'].nil?)
        data
      end
    end

    class EndpointSettingsList
      def self.parse(list)
        list.map do |value|
          Parsers::EndpointSetting.parse(value) unless value.nil?
        end
      end
    end

    class EndpointSetting
      def self.parse(map)
        data = Types::EndpointSetting.new
        data.name = map['Name']
        data.type = map['Type']
        data.enum_values = (Parsers::EndpointSettingEnumValues.parse(map['EnumValues']) unless map['EnumValues'].nil?)
        data.sensitive = map['Sensitive']
        data.units = map['Units']
        data.applicability = map['Applicability']
        data.int_value_min = map['IntValueMin']
        data.int_value_max = map['IntValueMax']
        data.default_value = map['DefaultValue']
        return data
      end
    end

    class EndpointSettingEnumValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEndpointTypes
    class DescribeEndpointTypes
      def self.parse(http_resp)
        data = Types::DescribeEndpointTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.supported_endpoint_types = (Parsers::SupportedEndpointTypeList.parse(map['SupportedEndpointTypes']) unless map['SupportedEndpointTypes'].nil?)
        data
      end
    end

    class SupportedEndpointTypeList
      def self.parse(list)
        list.map do |value|
          Parsers::SupportedEndpointType.parse(value) unless value.nil?
        end
      end
    end

    class SupportedEndpointType
      def self.parse(map)
        data = Types::SupportedEndpointType.new
        data.engine_name = map['EngineName']
        data.supports_cdc = map['SupportsCDC']
        data.endpoint_type = map['EndpointType']
        data.replication_instance_engine_minimum_version = map['ReplicationInstanceEngineMinimumVersion']
        data.engine_display_name = map['EngineDisplayName']
        return data
      end
    end

    # Operation Parser for DescribeEndpoints
    class DescribeEndpoints
      def self.parse(http_resp)
        data = Types::DescribeEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.endpoints = (Parsers::EndpointList.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data
      end
    end

    class EndpointList
      def self.parse(list)
        list.map do |value|
          Parsers::Endpoint.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEventCategories
    class DescribeEventCategories
      def self.parse(http_resp)
        data = Types::DescribeEventCategoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_category_group_list = (Parsers::EventCategoryGroupList.parse(map['EventCategoryGroupList']) unless map['EventCategoryGroupList'].nil?)
        data
      end
    end

    class EventCategoryGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::EventCategoryGroup.parse(value) unless value.nil?
        end
      end
    end

    class EventCategoryGroup
      def self.parse(map)
        data = Types::EventCategoryGroup.new
        data.source_type = map['SourceType']
        data.event_categories = (Parsers::EventCategoriesList.parse(map['EventCategories']) unless map['EventCategories'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.parse(http_resp)
        data = Types::DescribeEventSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.event_subscriptions_list = (Parsers::EventSubscriptionsList.parse(map['EventSubscriptionsList']) unless map['EventSubscriptionsList'].nil?)
        data
      end
    end

    class EventSubscriptionsList
      def self.parse(list)
        list.map do |value|
          Parsers::EventSubscription.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.events = (Parsers::EventList.parse(map['Events']) unless map['Events'].nil?)
        data
      end
    end

    class EventList
      def self.parse(list)
        list.map do |value|
          Parsers::Event.parse(value) unless value.nil?
        end
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.source_identifier = map['SourceIdentifier']
        data.source_type = map['SourceType']
        data.message = map['Message']
        data.event_categories = (Parsers::EventCategoriesList.parse(map['EventCategories']) unless map['EventCategories'].nil?)
        data.date = Time.at(map['Date'].to_i) if map['Date']
        return data
      end
    end

    # Operation Parser for DescribeFleetAdvisorCollectors
    class DescribeFleetAdvisorCollectors
      def self.parse(http_resp)
        data = Types::DescribeFleetAdvisorCollectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.collectors = (Parsers::CollectorResponses.parse(map['Collectors']) unless map['Collectors'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CollectorResponses
      def self.parse(list)
        list.map do |value|
          Parsers::CollectorResponse.parse(value) unless value.nil?
        end
      end
    end

    class CollectorResponse
      def self.parse(map)
        data = Types::CollectorResponse.new
        data.collector_referenced_id = map['CollectorReferencedId']
        data.collector_name = map['CollectorName']
        data.collector_version = map['CollectorVersion']
        data.version_status = map['VersionStatus']
        data.description = map['Description']
        data.s3_bucket_name = map['S3BucketName']
        data.service_access_role_arn = map['ServiceAccessRoleArn']
        data.collector_health_check = (Parsers::CollectorHealthCheck.parse(map['CollectorHealthCheck']) unless map['CollectorHealthCheck'].nil?)
        data.last_data_received = map['LastDataReceived']
        data.registered_date = map['RegisteredDate']
        data.created_date = map['CreatedDate']
        data.modified_date = map['ModifiedDate']
        data.inventory_data = (Parsers::InventoryData.parse(map['InventoryData']) unless map['InventoryData'].nil?)
        return data
      end
    end

    class InventoryData
      def self.parse(map)
        data = Types::InventoryData.new
        data.number_of_databases = map['NumberOfDatabases']
        data.number_of_schemas = map['NumberOfSchemas']
        return data
      end
    end

    class CollectorHealthCheck
      def self.parse(map)
        data = Types::CollectorHealthCheck.new
        data.collector_status = map['CollectorStatus']
        data.local_collector_s3_access = map['LocalCollectorS3Access']
        data.web_collector_s3_access = map['WebCollectorS3Access']
        data.web_collector_granted_role_based_access = map['WebCollectorGrantedRoleBasedAccess']
        return data
      end
    end

    # Operation Parser for DescribeFleetAdvisorDatabases
    class DescribeFleetAdvisorDatabases
      def self.parse(http_resp)
        data = Types::DescribeFleetAdvisorDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.databases = (Parsers::DatabaseList.parse(map['Databases']) unless map['Databases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatabaseList
      def self.parse(list)
        list.map do |value|
          Parsers::DatabaseResponse.parse(value) unless value.nil?
        end
      end
    end

    class DatabaseResponse
      def self.parse(map)
        data = Types::DatabaseResponse.new
        data.database_id = map['DatabaseId']
        data.database_name = map['DatabaseName']
        data.ip_address = map['IpAddress']
        data.number_of_schemas = map['NumberOfSchemas']
        data.server = (Parsers::ServerShortInfoResponse.parse(map['Server']) unless map['Server'].nil?)
        data.software_details = (Parsers::DatabaseInstanceSoftwareDetailsResponse.parse(map['SoftwareDetails']) unless map['SoftwareDetails'].nil?)
        data.collectors = (Parsers::CollectorsList.parse(map['Collectors']) unless map['Collectors'].nil?)
        return data
      end
    end

    class CollectorsList
      def self.parse(list)
        list.map do |value|
          Parsers::CollectorShortInfoResponse.parse(value) unless value.nil?
        end
      end
    end

    class CollectorShortInfoResponse
      def self.parse(map)
        data = Types::CollectorShortInfoResponse.new
        data.collector_referenced_id = map['CollectorReferencedId']
        data.collector_name = map['CollectorName']
        return data
      end
    end

    class DatabaseInstanceSoftwareDetailsResponse
      def self.parse(map)
        data = Types::DatabaseInstanceSoftwareDetailsResponse.new
        data.engine = map['Engine']
        data.engine_version = map['EngineVersion']
        data.engine_edition = map['EngineEdition']
        data.service_pack = map['ServicePack']
        data.support_level = map['SupportLevel']
        data.os_architecture = map['OsArchitecture']
        data.tooltip = map['Tooltip']
        return data
      end
    end

    class ServerShortInfoResponse
      def self.parse(map)
        data = Types::ServerShortInfoResponse.new
        data.server_id = map['ServerId']
        data.ip_address = map['IpAddress']
        data.server_name = map['ServerName']
        return data
      end
    end

    # Operation Parser for DescribeFleetAdvisorLsaAnalysis
    class DescribeFleetAdvisorLsaAnalysis
      def self.parse(http_resp)
        data = Types::DescribeFleetAdvisorLsaAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.analysis = (Parsers::FleetAdvisorLsaAnalysisResponseList.parse(map['Analysis']) unless map['Analysis'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetAdvisorLsaAnalysisResponseList
      def self.parse(list)
        list.map do |value|
          Parsers::FleetAdvisorLsaAnalysisResponse.parse(value) unless value.nil?
        end
      end
    end

    class FleetAdvisorLsaAnalysisResponse
      def self.parse(map)
        data = Types::FleetAdvisorLsaAnalysisResponse.new
        data.lsa_analysis_id = map['LsaAnalysisId']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for DescribeFleetAdvisorSchemaObjectSummary
    class DescribeFleetAdvisorSchemaObjectSummary
      def self.parse(http_resp)
        data = Types::DescribeFleetAdvisorSchemaObjectSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_advisor_schema_objects = (Parsers::FleetAdvisorSchemaObjectList.parse(map['FleetAdvisorSchemaObjects']) unless map['FleetAdvisorSchemaObjects'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetAdvisorSchemaObjectList
      def self.parse(list)
        list.map do |value|
          Parsers::FleetAdvisorSchemaObjectResponse.parse(value) unless value.nil?
        end
      end
    end

    class FleetAdvisorSchemaObjectResponse
      def self.parse(map)
        data = Types::FleetAdvisorSchemaObjectResponse.new
        data.schema_id = map['SchemaId']
        data.object_type = map['ObjectType']
        data.number_of_objects = map['NumberOfObjects']
        data.code_line_count = map['CodeLineCount']
        data.code_size = map['CodeSize']
        return data
      end
    end

    # Operation Parser for DescribeFleetAdvisorSchemas
    class DescribeFleetAdvisorSchemas
      def self.parse(http_resp)
        data = Types::DescribeFleetAdvisorSchemasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_advisor_schemas = (Parsers::FleetAdvisorSchemaList.parse(map['FleetAdvisorSchemas']) unless map['FleetAdvisorSchemas'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetAdvisorSchemaList
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaResponse.parse(value) unless value.nil?
        end
      end
    end

    class SchemaResponse
      def self.parse(map)
        data = Types::SchemaResponse.new
        data.code_line_count = map['CodeLineCount']
        data.code_size = map['CodeSize']
        data.complexity = map['Complexity']
        data.server = (Parsers::ServerShortInfoResponse.parse(map['Server']) unless map['Server'].nil?)
        data.database_instance = (Parsers::DatabaseShortInfoResponse.parse(map['DatabaseInstance']) unless map['DatabaseInstance'].nil?)
        data.schema_id = map['SchemaId']
        data.schema_name = map['SchemaName']
        data.original_schema = (Parsers::SchemaShortInfoResponse.parse(map['OriginalSchema']) unless map['OriginalSchema'].nil?)
        data.similarity = Hearth::NumberHelper.deserialize(map['Similarity'])
        return data
      end
    end

    class SchemaShortInfoResponse
      def self.parse(map)
        data = Types::SchemaShortInfoResponse.new
        data.schema_id = map['SchemaId']
        data.schema_name = map['SchemaName']
        data.database_id = map['DatabaseId']
        data.database_name = map['DatabaseName']
        data.database_ip_address = map['DatabaseIpAddress']
        return data
      end
    end

    class DatabaseShortInfoResponse
      def self.parse(map)
        data = Types::DatabaseShortInfoResponse.new
        data.database_id = map['DatabaseId']
        data.database_name = map['DatabaseName']
        data.database_ip_address = map['DatabaseIpAddress']
        data.database_engine = map['DatabaseEngine']
        return data
      end
    end

    # Operation Parser for DescribeOrderableReplicationInstances
    class DescribeOrderableReplicationInstances
      def self.parse(http_resp)
        data = Types::DescribeOrderableReplicationInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.orderable_replication_instances = (Parsers::OrderableReplicationInstanceList.parse(map['OrderableReplicationInstances']) unless map['OrderableReplicationInstances'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class OrderableReplicationInstanceList
      def self.parse(list)
        list.map do |value|
          Parsers::OrderableReplicationInstance.parse(value) unless value.nil?
        end
      end
    end

    class OrderableReplicationInstance
      def self.parse(map)
        data = Types::OrderableReplicationInstance.new
        data.engine_version = map['EngineVersion']
        data.replication_instance_class = map['ReplicationInstanceClass']
        data.storage_type = map['StorageType']
        data.min_allocated_storage = map['MinAllocatedStorage']
        data.max_allocated_storage = map['MaxAllocatedStorage']
        data.default_allocated_storage = map['DefaultAllocatedStorage']
        data.included_allocated_storage = map['IncludedAllocatedStorage']
        data.availability_zones = (Parsers::AvailabilityZonesList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.release_status = map['ReleaseStatus']
        return data
      end
    end

    class AvailabilityZonesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePendingMaintenanceActions
    class DescribePendingMaintenanceActions
      def self.parse(http_resp)
        data = Types::DescribePendingMaintenanceActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pending_maintenance_actions = (Parsers::PendingMaintenanceActions.parse(map['PendingMaintenanceActions']) unless map['PendingMaintenanceActions'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class PendingMaintenanceActions
      def self.parse(list)
        list.map do |value|
          Parsers::ResourcePendingMaintenanceActions.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeRefreshSchemasStatus
    class DescribeRefreshSchemasStatus
      def self.parse(http_resp)
        data = Types::DescribeRefreshSchemasStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.refresh_schemas_status = (Parsers::RefreshSchemasStatus.parse(map['RefreshSchemasStatus']) unless map['RefreshSchemasStatus'].nil?)
        data
      end
    end

    class RefreshSchemasStatus
      def self.parse(map)
        data = Types::RefreshSchemasStatus.new
        data.endpoint_arn = map['EndpointArn']
        data.replication_instance_arn = map['ReplicationInstanceArn']
        data.status = map['Status']
        data.last_refresh_date = Time.at(map['LastRefreshDate'].to_i) if map['LastRefreshDate']
        data.last_failure_message = map['LastFailureMessage']
        return data
      end
    end

    # Operation Parser for DescribeReplicationInstanceTaskLogs
    class DescribeReplicationInstanceTaskLogs
      def self.parse(http_resp)
        data = Types::DescribeReplicationInstanceTaskLogsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_instance_arn = map['ReplicationInstanceArn']
        data.replication_instance_task_logs = (Parsers::ReplicationInstanceTaskLogsList.parse(map['ReplicationInstanceTaskLogs']) unless map['ReplicationInstanceTaskLogs'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class ReplicationInstanceTaskLogsList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationInstanceTaskLog.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationInstanceTaskLog
      def self.parse(map)
        data = Types::ReplicationInstanceTaskLog.new
        data.replication_task_name = map['ReplicationTaskName']
        data.replication_task_arn = map['ReplicationTaskArn']
        data.replication_instance_task_log_size = map['ReplicationInstanceTaskLogSize']
        return data
      end
    end

    # Operation Parser for DescribeReplicationInstances
    class DescribeReplicationInstances
      def self.parse(http_resp)
        data = Types::DescribeReplicationInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.replication_instances = (Parsers::ReplicationInstanceList.parse(map['ReplicationInstances']) unless map['ReplicationInstances'].nil?)
        data
      end
    end

    class ReplicationInstanceList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationInstance.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeReplicationSubnetGroups
    class DescribeReplicationSubnetGroups
      def self.parse(http_resp)
        data = Types::DescribeReplicationSubnetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.replication_subnet_groups = (Parsers::ReplicationSubnetGroups.parse(map['ReplicationSubnetGroups']) unless map['ReplicationSubnetGroups'].nil?)
        data
      end
    end

    class ReplicationSubnetGroups
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationSubnetGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeReplicationTaskAssessmentResults
    class DescribeReplicationTaskAssessmentResults
      def self.parse(http_resp)
        data = Types::DescribeReplicationTaskAssessmentResultsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.bucket_name = map['BucketName']
        data.replication_task_assessment_results = (Parsers::ReplicationTaskAssessmentResultList.parse(map['ReplicationTaskAssessmentResults']) unless map['ReplicationTaskAssessmentResults'].nil?)
        data
      end
    end

    class ReplicationTaskAssessmentResultList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationTaskAssessmentResult.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationTaskAssessmentResult
      def self.parse(map)
        data = Types::ReplicationTaskAssessmentResult.new
        data.replication_task_identifier = map['ReplicationTaskIdentifier']
        data.replication_task_arn = map['ReplicationTaskArn']
        data.replication_task_last_assessment_date = Time.at(map['ReplicationTaskLastAssessmentDate'].to_i) if map['ReplicationTaskLastAssessmentDate']
        data.assessment_status = map['AssessmentStatus']
        data.assessment_results_file = map['AssessmentResultsFile']
        data.assessment_results = map['AssessmentResults']
        data.s3_object_url = map['S3ObjectUrl']
        return data
      end
    end

    # Operation Parser for DescribeReplicationTaskAssessmentRuns
    class DescribeReplicationTaskAssessmentRuns
      def self.parse(http_resp)
        data = Types::DescribeReplicationTaskAssessmentRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.replication_task_assessment_runs = (Parsers::ReplicationTaskAssessmentRunList.parse(map['ReplicationTaskAssessmentRuns']) unless map['ReplicationTaskAssessmentRuns'].nil?)
        data
      end
    end

    class ReplicationTaskAssessmentRunList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationTaskAssessmentRun.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeReplicationTaskIndividualAssessments
    class DescribeReplicationTaskIndividualAssessments
      def self.parse(http_resp)
        data = Types::DescribeReplicationTaskIndividualAssessmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.replication_task_individual_assessments = (Parsers::ReplicationTaskIndividualAssessmentList.parse(map['ReplicationTaskIndividualAssessments']) unless map['ReplicationTaskIndividualAssessments'].nil?)
        data
      end
    end

    class ReplicationTaskIndividualAssessmentList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationTaskIndividualAssessment.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationTaskIndividualAssessment
      def self.parse(map)
        data = Types::ReplicationTaskIndividualAssessment.new
        data.replication_task_individual_assessment_arn = map['ReplicationTaskIndividualAssessmentArn']
        data.replication_task_assessment_run_arn = map['ReplicationTaskAssessmentRunArn']
        data.individual_assessment_name = map['IndividualAssessmentName']
        data.status = map['Status']
        data.replication_task_individual_assessment_start_date = Time.at(map['ReplicationTaskIndividualAssessmentStartDate'].to_i) if map['ReplicationTaskIndividualAssessmentStartDate']
        return data
      end
    end

    # Operation Parser for DescribeReplicationTasks
    class DescribeReplicationTasks
      def self.parse(http_resp)
        data = Types::DescribeReplicationTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.replication_tasks = (Parsers::ReplicationTaskList.parse(map['ReplicationTasks']) unless map['ReplicationTasks'].nil?)
        data
      end
    end

    class ReplicationTaskList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationTask.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSchemas
    class DescribeSchemas
      def self.parse(http_resp)
        data = Types::DescribeSchemasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.schemas = (Parsers::SchemaList.parse(map['Schemas']) unless map['Schemas'].nil?)
        data
      end
    end

    class SchemaList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeTableStatistics
    class DescribeTableStatistics
      def self.parse(http_resp)
        data = Types::DescribeTableStatisticsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task_arn = map['ReplicationTaskArn']
        data.table_statistics = (Parsers::TableStatisticsList.parse(map['TableStatistics']) unless map['TableStatistics'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class TableStatisticsList
      def self.parse(list)
        list.map do |value|
          Parsers::TableStatistics.parse(value) unless value.nil?
        end
      end
    end

    class TableStatistics
      def self.parse(map)
        data = Types::TableStatistics.new
        data.schema_name = map['SchemaName']
        data.table_name = map['TableName']
        data.inserts = map['Inserts']
        data.deletes = map['Deletes']
        data.updates = map['Updates']
        data.ddls = map['Ddls']
        data.full_load_rows = map['FullLoadRows']
        data.full_load_condtnl_chk_failed_rows = map['FullLoadCondtnlChkFailedRows']
        data.full_load_error_rows = map['FullLoadErrorRows']
        data.full_load_start_time = Time.at(map['FullLoadStartTime'].to_i) if map['FullLoadStartTime']
        data.full_load_end_time = Time.at(map['FullLoadEndTime'].to_i) if map['FullLoadEndTime']
        data.full_load_reloaded = map['FullLoadReloaded']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        data.table_state = map['TableState']
        data.validation_pending_records = map['ValidationPendingRecords']
        data.validation_failed_records = map['ValidationFailedRecords']
        data.validation_suspended_records = map['ValidationSuspendedRecords']
        data.validation_state = map['ValidationState']
        data.validation_state_details = map['ValidationStateDetails']
        return data
      end
    end

    # Operation Parser for ImportCertificate
    class ImportCertificate
      def self.parse(http_resp)
        data = Types::ImportCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = (Parsers::Certificate.parse(map['Certificate']) unless map['Certificate'].nil?)
        data
      end
    end

    # Error Parser for InvalidCertificateFault
    class InvalidCertificateFault
      def self.parse(http_resp)
        data = Types::InvalidCertificateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    # Operation Parser for ModifyEndpoint
    class ModifyEndpoint
      def self.parse(http_resp)
        data = Types::ModifyEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint = (Parsers::Endpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data
      end
    end

    # Operation Parser for ModifyEventSubscription
    class ModifyEventSubscription
      def self.parse(http_resp)
        data = Types::ModifyEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_subscription = (Parsers::EventSubscription.parse(map['EventSubscription']) unless map['EventSubscription'].nil?)
        data
      end
    end

    # Operation Parser for ModifyReplicationInstance
    class ModifyReplicationInstance
      def self.parse(http_resp)
        data = Types::ModifyReplicationInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_instance = (Parsers::ReplicationInstance.parse(map['ReplicationInstance']) unless map['ReplicationInstance'].nil?)
        data
      end
    end

    # Error Parser for UpgradeDependencyFailureFault
    class UpgradeDependencyFailureFault
      def self.parse(http_resp)
        data = Types::UpgradeDependencyFailureFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ModifyReplicationSubnetGroup
    class ModifyReplicationSubnetGroup
      def self.parse(http_resp)
        data = Types::ModifyReplicationSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_subnet_group = (Parsers::ReplicationSubnetGroup.parse(map['ReplicationSubnetGroup']) unless map['ReplicationSubnetGroup'].nil?)
        data
      end
    end

    # Error Parser for SubnetAlreadyInUse
    class SubnetAlreadyInUse
      def self.parse(http_resp)
        data = Types::SubnetAlreadyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ModifyReplicationTask
    class ModifyReplicationTask
      def self.parse(http_resp)
        data = Types::ModifyReplicationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    # Operation Parser for MoveReplicationTask
    class MoveReplicationTask
      def self.parse(http_resp)
        data = Types::MoveReplicationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    # Operation Parser for RebootReplicationInstance
    class RebootReplicationInstance
      def self.parse(http_resp)
        data = Types::RebootReplicationInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_instance = (Parsers::ReplicationInstance.parse(map['ReplicationInstance']) unless map['ReplicationInstance'].nil?)
        data
      end
    end

    # Operation Parser for RefreshSchemas
    class RefreshSchemas
      def self.parse(http_resp)
        data = Types::RefreshSchemasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.refresh_schemas_status = (Parsers::RefreshSchemasStatus.parse(map['RefreshSchemasStatus']) unless map['RefreshSchemasStatus'].nil?)
        data
      end
    end

    # Operation Parser for ReloadTables
    class ReloadTables
      def self.parse(http_resp)
        data = Types::ReloadTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task_arn = map['ReplicationTaskArn']
        data
      end
    end

    # Operation Parser for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveTagsFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RunFleetAdvisorLsaAnalysis
    class RunFleetAdvisorLsaAnalysis
      def self.parse(http_resp)
        data = Types::RunFleetAdvisorLsaAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lsa_analysis_id = map['LsaAnalysisId']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for StartReplicationTask
    class StartReplicationTask
      def self.parse(http_resp)
        data = Types::StartReplicationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    # Operation Parser for StartReplicationTaskAssessment
    class StartReplicationTaskAssessment
      def self.parse(http_resp)
        data = Types::StartReplicationTaskAssessmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    # Operation Parser for StartReplicationTaskAssessmentRun
    class StartReplicationTaskAssessmentRun
      def self.parse(http_resp)
        data = Types::StartReplicationTaskAssessmentRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task_assessment_run = (Parsers::ReplicationTaskAssessmentRun.parse(map['ReplicationTaskAssessmentRun']) unless map['ReplicationTaskAssessmentRun'].nil?)
        data
      end
    end

    # Error Parser for KMSFault
    class KMSFault
      def self.parse(http_resp)
        data = Types::KMSFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StopReplicationTask
    class StopReplicationTask
      def self.parse(http_resp)
        data = Types::StopReplicationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_task = (Parsers::ReplicationTask.parse(map['ReplicationTask']) unless map['ReplicationTask'].nil?)
        data
      end
    end

    # Operation Parser for TestConnection
    class TestConnection
      def self.parse(http_resp)
        data = Types::TestConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection = (Parsers::Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end
  end
end
