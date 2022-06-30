# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DatabaseMigrationService
  module Builders

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.AddTagsToResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Operation Builder for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ApplyPendingMaintenanceAction'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['ApplyAction'] = input[:apply_action] unless input[:apply_action].nil?
        data['OptInType'] = input[:opt_in_type] unless input[:opt_in_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelReplicationTaskAssessmentRun
    class CancelReplicationTaskAssessmentRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CancelReplicationTaskAssessmentRun'
        data = {}
        data['ReplicationTaskAssessmentRunArn'] = input[:replication_task_assessment_run_arn] unless input[:replication_task_assessment_run_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEndpoint
    class CreateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CreateEndpoint'
        data = {}
        data['EndpointIdentifier'] = input[:endpoint_identifier] unless input[:endpoint_identifier].nil?
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['EngineName'] = input[:engine_name] unless input[:engine_name].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['ExtraConnectionAttributes'] = input[:extra_connection_attributes] unless input[:extra_connection_attributes].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['SslMode'] = input[:ssl_mode] unless input[:ssl_mode].nil?
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['ExternalTableDefinition'] = input[:external_table_definition] unless input[:external_table_definition].nil?
        data['DynamoDbSettings'] = Builders::DynamoDbSettings.build(input[:dynamo_db_settings]) unless input[:dynamo_db_settings].nil?
        data['S3Settings'] = Builders::S3Settings.build(input[:s3_settings]) unless input[:s3_settings].nil?
        data['DmsTransferSettings'] = Builders::DmsTransferSettings.build(input[:dms_transfer_settings]) unless input[:dms_transfer_settings].nil?
        data['MongoDbSettings'] = Builders::MongoDbSettings.build(input[:mongo_db_settings]) unless input[:mongo_db_settings].nil?
        data['KinesisSettings'] = Builders::KinesisSettings.build(input[:kinesis_settings]) unless input[:kinesis_settings].nil?
        data['KafkaSettings'] = Builders::KafkaSettings.build(input[:kafka_settings]) unless input[:kafka_settings].nil?
        data['ElasticsearchSettings'] = Builders::ElasticsearchSettings.build(input[:elasticsearch_settings]) unless input[:elasticsearch_settings].nil?
        data['NeptuneSettings'] = Builders::NeptuneSettings.build(input[:neptune_settings]) unless input[:neptune_settings].nil?
        data['RedshiftSettings'] = Builders::RedshiftSettings.build(input[:redshift_settings]) unless input[:redshift_settings].nil?
        data['PostgreSQLSettings'] = Builders::PostgreSQLSettings.build(input[:postgre_sql_settings]) unless input[:postgre_sql_settings].nil?
        data['MySQLSettings'] = Builders::MySQLSettings.build(input[:my_sql_settings]) unless input[:my_sql_settings].nil?
        data['OracleSettings'] = Builders::OracleSettings.build(input[:oracle_settings]) unless input[:oracle_settings].nil?
        data['SybaseSettings'] = Builders::SybaseSettings.build(input[:sybase_settings]) unless input[:sybase_settings].nil?
        data['MicrosoftSQLServerSettings'] = Builders::MicrosoftSQLServerSettings.build(input[:microsoft_sql_server_settings]) unless input[:microsoft_sql_server_settings].nil?
        data['IBMDb2Settings'] = Builders::IBMDb2Settings.build(input[:ibm_db2_settings]) unless input[:ibm_db2_settings].nil?
        data['ResourceIdentifier'] = input[:resource_identifier] unless input[:resource_identifier].nil?
        data['DocDbSettings'] = Builders::DocDbSettings.build(input[:doc_db_settings]) unless input[:doc_db_settings].nil?
        data['RedisSettings'] = Builders::RedisSettings.build(input[:redis_settings]) unless input[:redis_settings].nil?
        data['GcpMySQLSettings'] = Builders::GcpMySQLSettings.build(input[:gcp_my_sql_settings]) unless input[:gcp_my_sql_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GcpMySQLSettings
    class GcpMySQLSettings
      def self.build(input)
        data = {}
        data['AfterConnectScript'] = input[:after_connect_script] unless input[:after_connect_script].nil?
        data['CleanSourceMetadataOnMismatch'] = input[:clean_source_metadata_on_mismatch] unless input[:clean_source_metadata_on_mismatch].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['EventsPollInterval'] = input[:events_poll_interval] unless input[:events_poll_interval].nil?
        data['TargetDbType'] = input[:target_db_type] unless input[:target_db_type].nil?
        data['MaxFileSize'] = input[:max_file_size] unless input[:max_file_size].nil?
        data['ParallelLoadThreads'] = input[:parallel_load_threads] unless input[:parallel_load_threads].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['ServerTimezone'] = input[:server_timezone] unless input[:server_timezone].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for RedisSettings
    class RedisSettings
      def self.build(input)
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['SslSecurityProtocol'] = input[:ssl_security_protocol] unless input[:ssl_security_protocol].nil?
        data['AuthType'] = input[:auth_type] unless input[:auth_type].nil?
        data['AuthUserName'] = input[:auth_user_name] unless input[:auth_user_name].nil?
        data['AuthPassword'] = input[:auth_password] unless input[:auth_password].nil?
        data['SslCaCertificateArn'] = input[:ssl_ca_certificate_arn] unless input[:ssl_ca_certificate_arn].nil?
        data
      end
    end

    # Structure Builder for DocDbSettings
    class DocDbSettings
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['NestingLevel'] = input[:nesting_level] unless input[:nesting_level].nil?
        data['ExtractDocId'] = input[:extract_doc_id] unless input[:extract_doc_id].nil?
        data['DocsToInvestigate'] = input[:docs_to_investigate] unless input[:docs_to_investigate].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for IBMDb2Settings
    class IBMDb2Settings
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['SetDataCaptureChanges'] = input[:set_data_capture_changes] unless input[:set_data_capture_changes].nil?
        data['CurrentLsn'] = input[:current_lsn] unless input[:current_lsn].nil?
        data['MaxKBytesPerRead'] = input[:max_k_bytes_per_read] unless input[:max_k_bytes_per_read].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for MicrosoftSQLServerSettings
    class MicrosoftSQLServerSettings
      def self.build(input)
        data = {}
        data['Port'] = input[:port] unless input[:port].nil?
        data['BcpPacketSize'] = input[:bcp_packet_size] unless input[:bcp_packet_size].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['ControlTablesFileGroup'] = input[:control_tables_file_group] unless input[:control_tables_file_group].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['QuerySingleAlwaysOnNode'] = input[:query_single_always_on_node] unless input[:query_single_always_on_node].nil?
        data['ReadBackupOnly'] = input[:read_backup_only] unless input[:read_backup_only].nil?
        data['SafeguardPolicy'] = input[:safeguard_policy] unless input[:safeguard_policy].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['UseBcpFullLoad'] = input[:use_bcp_full_load] unless input[:use_bcp_full_load].nil?
        data['UseThirdPartyBackupDevice'] = input[:use_third_party_backup_device] unless input[:use_third_party_backup_device].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for SybaseSettings
    class SybaseSettings
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for OracleSettings
    class OracleSettings
      def self.build(input)
        data = {}
        data['AddSupplementalLogging'] = input[:add_supplemental_logging] unless input[:add_supplemental_logging].nil?
        data['ArchivedLogDestId'] = input[:archived_log_dest_id] unless input[:archived_log_dest_id].nil?
        data['AdditionalArchivedLogDestId'] = input[:additional_archived_log_dest_id] unless input[:additional_archived_log_dest_id].nil?
        data['ExtraArchivedLogDestIds'] = Builders::IntegerList.build(input[:extra_archived_log_dest_ids]) unless input[:extra_archived_log_dest_ids].nil?
        data['AllowSelectNestedTables'] = input[:allow_select_nested_tables] unless input[:allow_select_nested_tables].nil?
        data['ParallelAsmReadThreads'] = input[:parallel_asm_read_threads] unless input[:parallel_asm_read_threads].nil?
        data['ReadAheadBlocks'] = input[:read_ahead_blocks] unless input[:read_ahead_blocks].nil?
        data['AccessAlternateDirectly'] = input[:access_alternate_directly] unless input[:access_alternate_directly].nil?
        data['UseAlternateFolderForOnline'] = input[:use_alternate_folder_for_online] unless input[:use_alternate_folder_for_online].nil?
        data['OraclePathPrefix'] = input[:oracle_path_prefix] unless input[:oracle_path_prefix].nil?
        data['UsePathPrefix'] = input[:use_path_prefix] unless input[:use_path_prefix].nil?
        data['ReplacePathPrefix'] = input[:replace_path_prefix] unless input[:replace_path_prefix].nil?
        data['EnableHomogenousTablespace'] = input[:enable_homogenous_tablespace] unless input[:enable_homogenous_tablespace].nil?
        data['DirectPathNoLog'] = input[:direct_path_no_log] unless input[:direct_path_no_log].nil?
        data['ArchivedLogsOnly'] = input[:archived_logs_only] unless input[:archived_logs_only].nil?
        data['AsmPassword'] = input[:asm_password] unless input[:asm_password].nil?
        data['AsmServer'] = input[:asm_server] unless input[:asm_server].nil?
        data['AsmUser'] = input[:asm_user] unless input[:asm_user].nil?
        data['CharLengthSemantics'] = input[:char_length_semantics] unless input[:char_length_semantics].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['DirectPathParallelLoad'] = input[:direct_path_parallel_load] unless input[:direct_path_parallel_load].nil?
        data['FailTasksOnLobTruncation'] = input[:fail_tasks_on_lob_truncation] unless input[:fail_tasks_on_lob_truncation].nil?
        data['NumberDatatypeScale'] = input[:number_datatype_scale] unless input[:number_datatype_scale].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['ReadTableSpaceName'] = input[:read_table_space_name] unless input[:read_table_space_name].nil?
        data['RetryInterval'] = input[:retry_interval] unless input[:retry_interval].nil?
        data['SecurityDbEncryption'] = input[:security_db_encryption] unless input[:security_db_encryption].nil?
        data['SecurityDbEncryptionName'] = input[:security_db_encryption_name] unless input[:security_db_encryption_name].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['SpatialDataOptionToGeoJsonFunctionName'] = input[:spatial_data_option_to_geo_json_function_name] unless input[:spatial_data_option_to_geo_json_function_name].nil?
        data['StandbyDelayTime'] = input[:standby_delay_time] unless input[:standby_delay_time].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['UseBFile'] = input[:use_b_file] unless input[:use_b_file].nil?
        data['UseDirectPathFullLoad'] = input[:use_direct_path_full_load] unless input[:use_direct_path_full_load].nil?
        data['UseLogminerReader'] = input[:use_logminer_reader] unless input[:use_logminer_reader].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data['SecretsManagerOracleAsmAccessRoleArn'] = input[:secrets_manager_oracle_asm_access_role_arn] unless input[:secrets_manager_oracle_asm_access_role_arn].nil?
        data['SecretsManagerOracleAsmSecretId'] = input[:secrets_manager_oracle_asm_secret_id] unless input[:secrets_manager_oracle_asm_secret_id].nil?
        data
      end
    end

    # List Builder for IntegerList
    class IntegerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MySQLSettings
    class MySQLSettings
      def self.build(input)
        data = {}
        data['AfterConnectScript'] = input[:after_connect_script] unless input[:after_connect_script].nil?
        data['CleanSourceMetadataOnMismatch'] = input[:clean_source_metadata_on_mismatch] unless input[:clean_source_metadata_on_mismatch].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['EventsPollInterval'] = input[:events_poll_interval] unless input[:events_poll_interval].nil?
        data['TargetDbType'] = input[:target_db_type] unless input[:target_db_type].nil?
        data['MaxFileSize'] = input[:max_file_size] unless input[:max_file_size].nil?
        data['ParallelLoadThreads'] = input[:parallel_load_threads] unless input[:parallel_load_threads].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['ServerTimezone'] = input[:server_timezone] unless input[:server_timezone].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for PostgreSQLSettings
    class PostgreSQLSettings
      def self.build(input)
        data = {}
        data['AfterConnectScript'] = input[:after_connect_script] unless input[:after_connect_script].nil?
        data['CaptureDdls'] = input[:capture_ddls] unless input[:capture_ddls].nil?
        data['MaxFileSize'] = input[:max_file_size] unless input[:max_file_size].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['DdlArtifactsSchema'] = input[:ddl_artifacts_schema] unless input[:ddl_artifacts_schema].nil?
        data['ExecuteTimeout'] = input[:execute_timeout] unless input[:execute_timeout].nil?
        data['FailTasksOnLobTruncation'] = input[:fail_tasks_on_lob_truncation] unless input[:fail_tasks_on_lob_truncation].nil?
        data['HeartbeatEnable'] = input[:heartbeat_enable] unless input[:heartbeat_enable].nil?
        data['HeartbeatSchema'] = input[:heartbeat_schema] unless input[:heartbeat_schema].nil?
        data['HeartbeatFrequency'] = input[:heartbeat_frequency] unless input[:heartbeat_frequency].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['SlotName'] = input[:slot_name] unless input[:slot_name].nil?
        data['PluginName'] = input[:plugin_name] unless input[:plugin_name].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for RedshiftSettings
    class RedshiftSettings
      def self.build(input)
        data = {}
        data['AcceptAnyDate'] = input[:accept_any_date] unless input[:accept_any_date].nil?
        data['AfterConnectScript'] = input[:after_connect_script] unless input[:after_connect_script].nil?
        data['BucketFolder'] = input[:bucket_folder] unless input[:bucket_folder].nil?
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['CaseSensitiveNames'] = input[:case_sensitive_names] unless input[:case_sensitive_names].nil?
        data['CompUpdate'] = input[:comp_update] unless input[:comp_update].nil?
        data['ConnectionTimeout'] = input[:connection_timeout] unless input[:connection_timeout].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['DateFormat'] = input[:date_format] unless input[:date_format].nil?
        data['EmptyAsNull'] = input[:empty_as_null] unless input[:empty_as_null].nil?
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['ExplicitIds'] = input[:explicit_ids] unless input[:explicit_ids].nil?
        data['FileTransferUploadStreams'] = input[:file_transfer_upload_streams] unless input[:file_transfer_upload_streams].nil?
        data['LoadTimeout'] = input[:load_timeout] unless input[:load_timeout].nil?
        data['MaxFileSize'] = input[:max_file_size] unless input[:max_file_size].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['RemoveQuotes'] = input[:remove_quotes] unless input[:remove_quotes].nil?
        data['ReplaceInvalidChars'] = input[:replace_invalid_chars] unless input[:replace_invalid_chars].nil?
        data['ReplaceChars'] = input[:replace_chars] unless input[:replace_chars].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['ServerSideEncryptionKmsKeyId'] = input[:server_side_encryption_kms_key_id] unless input[:server_side_encryption_kms_key_id].nil?
        data['TimeFormat'] = input[:time_format] unless input[:time_format].nil?
        data['TrimBlanks'] = input[:trim_blanks] unless input[:trim_blanks].nil?
        data['TruncateColumns'] = input[:truncate_columns] unless input[:truncate_columns].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['WriteBufferSize'] = input[:write_buffer_size] unless input[:write_buffer_size].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for NeptuneSettings
    class NeptuneSettings
      def self.build(input)
        data = {}
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3BucketFolder'] = input[:s3_bucket_folder] unless input[:s3_bucket_folder].nil?
        data['ErrorRetryDuration'] = input[:error_retry_duration] unless input[:error_retry_duration].nil?
        data['MaxFileSize'] = input[:max_file_size] unless input[:max_file_size].nil?
        data['MaxRetryCount'] = input[:max_retry_count] unless input[:max_retry_count].nil?
        data['IamAuthEnabled'] = input[:iam_auth_enabled] unless input[:iam_auth_enabled].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchSettings
    class ElasticsearchSettings
      def self.build(input)
        data = {}
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['EndpointUri'] = input[:endpoint_uri] unless input[:endpoint_uri].nil?
        data['FullLoadErrorPercentage'] = input[:full_load_error_percentage] unless input[:full_load_error_percentage].nil?
        data['ErrorRetryDuration'] = input[:error_retry_duration] unless input[:error_retry_duration].nil?
        data
      end
    end

    # Structure Builder for KafkaSettings
    class KafkaSettings
      def self.build(input)
        data = {}
        data['Broker'] = input[:broker] unless input[:broker].nil?
        data['Topic'] = input[:topic] unless input[:topic].nil?
        data['MessageFormat'] = input[:message_format] unless input[:message_format].nil?
        data['IncludeTransactionDetails'] = input[:include_transaction_details] unless input[:include_transaction_details].nil?
        data['IncludePartitionValue'] = input[:include_partition_value] unless input[:include_partition_value].nil?
        data['PartitionIncludeSchemaTable'] = input[:partition_include_schema_table] unless input[:partition_include_schema_table].nil?
        data['IncludeTableAlterOperations'] = input[:include_table_alter_operations] unless input[:include_table_alter_operations].nil?
        data['IncludeControlDetails'] = input[:include_control_details] unless input[:include_control_details].nil?
        data['MessageMaxBytes'] = input[:message_max_bytes] unless input[:message_max_bytes].nil?
        data['IncludeNullAndEmpty'] = input[:include_null_and_empty] unless input[:include_null_and_empty].nil?
        data['SecurityProtocol'] = input[:security_protocol] unless input[:security_protocol].nil?
        data['SslClientCertificateArn'] = input[:ssl_client_certificate_arn] unless input[:ssl_client_certificate_arn].nil?
        data['SslClientKeyArn'] = input[:ssl_client_key_arn] unless input[:ssl_client_key_arn].nil?
        data['SslClientKeyPassword'] = input[:ssl_client_key_password] unless input[:ssl_client_key_password].nil?
        data['SslCaCertificateArn'] = input[:ssl_ca_certificate_arn] unless input[:ssl_ca_certificate_arn].nil?
        data['SaslUsername'] = input[:sasl_username] unless input[:sasl_username].nil?
        data['SaslPassword'] = input[:sasl_password] unless input[:sasl_password].nil?
        data['NoHexPrefix'] = input[:no_hex_prefix] unless input[:no_hex_prefix].nil?
        data
      end
    end

    # Structure Builder for KinesisSettings
    class KinesisSettings
      def self.build(input)
        data = {}
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['MessageFormat'] = input[:message_format] unless input[:message_format].nil?
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['IncludeTransactionDetails'] = input[:include_transaction_details] unless input[:include_transaction_details].nil?
        data['IncludePartitionValue'] = input[:include_partition_value] unless input[:include_partition_value].nil?
        data['PartitionIncludeSchemaTable'] = input[:partition_include_schema_table] unless input[:partition_include_schema_table].nil?
        data['IncludeTableAlterOperations'] = input[:include_table_alter_operations] unless input[:include_table_alter_operations].nil?
        data['IncludeControlDetails'] = input[:include_control_details] unless input[:include_control_details].nil?
        data['IncludeNullAndEmpty'] = input[:include_null_and_empty] unless input[:include_null_and_empty].nil?
        data['NoHexPrefix'] = input[:no_hex_prefix] unless input[:no_hex_prefix].nil?
        data
      end
    end

    # Structure Builder for MongoDbSettings
    class MongoDbSettings
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['AuthType'] = input[:auth_type] unless input[:auth_type].nil?
        data['AuthMechanism'] = input[:auth_mechanism] unless input[:auth_mechanism].nil?
        data['NestingLevel'] = input[:nesting_level] unless input[:nesting_level].nil?
        data['ExtractDocId'] = input[:extract_doc_id] unless input[:extract_doc_id].nil?
        data['DocsToInvestigate'] = input[:docs_to_investigate] unless input[:docs_to_investigate].nil?
        data['AuthSource'] = input[:auth_source] unless input[:auth_source].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['SecretsManagerAccessRoleArn'] = input[:secrets_manager_access_role_arn] unless input[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = input[:secrets_manager_secret_id] unless input[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Builder for DmsTransferSettings
    class DmsTransferSettings
      def self.build(input)
        data = {}
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data
      end
    end

    # Structure Builder for S3Settings
    class S3Settings
      def self.build(input)
        data = {}
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['ExternalTableDefinition'] = input[:external_table_definition] unless input[:external_table_definition].nil?
        data['CsvRowDelimiter'] = input[:csv_row_delimiter] unless input[:csv_row_delimiter].nil?
        data['CsvDelimiter'] = input[:csv_delimiter] unless input[:csv_delimiter].nil?
        data['BucketFolder'] = input[:bucket_folder] unless input[:bucket_folder].nil?
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['ServerSideEncryptionKmsKeyId'] = input[:server_side_encryption_kms_key_id] unless input[:server_side_encryption_kms_key_id].nil?
        data['DataFormat'] = input[:data_format] unless input[:data_format].nil?
        data['EncodingType'] = input[:encoding_type] unless input[:encoding_type].nil?
        data['DictPageSizeLimit'] = input[:dict_page_size_limit] unless input[:dict_page_size_limit].nil?
        data['RowGroupLength'] = input[:row_group_length] unless input[:row_group_length].nil?
        data['DataPageSize'] = input[:data_page_size] unless input[:data_page_size].nil?
        data['ParquetVersion'] = input[:parquet_version] unless input[:parquet_version].nil?
        data['EnableStatistics'] = input[:enable_statistics] unless input[:enable_statistics].nil?
        data['IncludeOpForFullLoad'] = input[:include_op_for_full_load] unless input[:include_op_for_full_load].nil?
        data['CdcInsertsOnly'] = input[:cdc_inserts_only] unless input[:cdc_inserts_only].nil?
        data['TimestampColumnName'] = input[:timestamp_column_name] unless input[:timestamp_column_name].nil?
        data['ParquetTimestampInMillisecond'] = input[:parquet_timestamp_in_millisecond] unless input[:parquet_timestamp_in_millisecond].nil?
        data['CdcInsertsAndUpdates'] = input[:cdc_inserts_and_updates] unless input[:cdc_inserts_and_updates].nil?
        data['DatePartitionEnabled'] = input[:date_partition_enabled] unless input[:date_partition_enabled].nil?
        data['DatePartitionSequence'] = input[:date_partition_sequence] unless input[:date_partition_sequence].nil?
        data['DatePartitionDelimiter'] = input[:date_partition_delimiter] unless input[:date_partition_delimiter].nil?
        data['UseCsvNoSupValue'] = input[:use_csv_no_sup_value] unless input[:use_csv_no_sup_value].nil?
        data['CsvNoSupValue'] = input[:csv_no_sup_value] unless input[:csv_no_sup_value].nil?
        data['PreserveTransactions'] = input[:preserve_transactions] unless input[:preserve_transactions].nil?
        data['CdcPath'] = input[:cdc_path] unless input[:cdc_path].nil?
        data['UseTaskStartTimeForFullLoadTimestamp'] = input[:use_task_start_time_for_full_load_timestamp] unless input[:use_task_start_time_for_full_load_timestamp].nil?
        data['CannedAclForObjects'] = input[:canned_acl_for_objects] unless input[:canned_acl_for_objects].nil?
        data['AddColumnName'] = input[:add_column_name] unless input[:add_column_name].nil?
        data['CdcMaxBatchInterval'] = input[:cdc_max_batch_interval] unless input[:cdc_max_batch_interval].nil?
        data['CdcMinFileSize'] = input[:cdc_min_file_size] unless input[:cdc_min_file_size].nil?
        data['CsvNullValue'] = input[:csv_null_value] unless input[:csv_null_value].nil?
        data['IgnoreHeaderRows'] = input[:ignore_header_rows] unless input[:ignore_header_rows].nil?
        data['MaxFileSize'] = input[:max_file_size] unless input[:max_file_size].nil?
        data['Rfc4180'] = input[:rfc4180] unless input[:rfc4180].nil?
        data['DatePartitionTimezone'] = input[:date_partition_timezone] unless input[:date_partition_timezone].nil?
        data
      end
    end

    # Structure Builder for DynamoDbSettings
    class DynamoDbSettings
      def self.build(input)
        data = {}
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data
      end
    end

    # Operation Builder for CreateEventSubscription
    class CreateEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CreateEventSubscription'
        data = {}
        data['SubscriptionName'] = input[:subscription_name] unless input[:subscription_name].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['EventCategories'] = Builders::EventCategoriesList.build(input[:event_categories]) unless input[:event_categories].nil?
        data['SourceIds'] = Builders::SourceIdsList.build(input[:source_ids]) unless input[:source_ids].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SourceIdsList
    class SourceIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EventCategoriesList
    class EventCategoriesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFleetAdvisorCollector
    class CreateFleetAdvisorCollector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CreateFleetAdvisorCollector'
        data = {}
        data['CollectorName'] = input[:collector_name] unless input[:collector_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateReplicationInstance
    class CreateReplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CreateReplicationInstance'
        data = {}
        data['ReplicationInstanceIdentifier'] = input[:replication_instance_identifier] unless input[:replication_instance_identifier].nil?
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['ReplicationInstanceClass'] = input[:replication_instance_class] unless input[:replication_instance_class].nil?
        data['VpcSecurityGroupIds'] = Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids]) unless input[:vpc_security_group_ids].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['ReplicationSubnetGroupIdentifier'] = input[:replication_subnet_group_identifier] unless input[:replication_subnet_group_identifier].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['MultiAZ'] = input[:multi_az] unless input[:multi_az].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade] unless input[:auto_minor_version_upgrade].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['PubliclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['DnsNameServers'] = input[:dns_name_servers] unless input[:dns_name_servers].nil?
        data['ResourceIdentifier'] = input[:resource_identifier] unless input[:resource_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VpcSecurityGroupIdList
    class VpcSecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateReplicationSubnetGroup
    class CreateReplicationSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CreateReplicationSubnetGroup'
        data = {}
        data['ReplicationSubnetGroupIdentifier'] = input[:replication_subnet_group_identifier] unless input[:replication_subnet_group_identifier].nil?
        data['ReplicationSubnetGroupDescription'] = input[:replication_subnet_group_description] unless input[:replication_subnet_group_description].nil?
        data['SubnetIds'] = Builders::SubnetIdentifierList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetIdentifierList
    class SubnetIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateReplicationTask
    class CreateReplicationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.CreateReplicationTask'
        data = {}
        data['ReplicationTaskIdentifier'] = input[:replication_task_identifier] unless input[:replication_task_identifier].nil?
        data['SourceEndpointArn'] = input[:source_endpoint_arn] unless input[:source_endpoint_arn].nil?
        data['TargetEndpointArn'] = input[:target_endpoint_arn] unless input[:target_endpoint_arn].nil?
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['MigrationType'] = input[:migration_type] unless input[:migration_type].nil?
        data['TableMappings'] = input[:table_mappings] unless input[:table_mappings].nil?
        data['ReplicationTaskSettings'] = input[:replication_task_settings] unless input[:replication_task_settings].nil?
        data['CdcStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:cdc_start_time]).to_i unless input[:cdc_start_time].nil?
        data['CdcStartPosition'] = input[:cdc_start_position] unless input[:cdc_start_position].nil?
        data['CdcStopPosition'] = input[:cdc_stop_position] unless input[:cdc_stop_position].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['TaskData'] = input[:task_data] unless input[:task_data].nil?
        data['ResourceIdentifier'] = input[:resource_identifier] unless input[:resource_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCertificate
    class DeleteCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteConnection'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEndpoint
    class DeleteEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteEndpoint'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventSubscription
    class DeleteEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteEventSubscription'
        data = {}
        data['SubscriptionName'] = input[:subscription_name] unless input[:subscription_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFleetAdvisorCollector
    class DeleteFleetAdvisorCollector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteFleetAdvisorCollector'
        data = {}
        data['CollectorReferencedId'] = input[:collector_referenced_id] unless input[:collector_referenced_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFleetAdvisorDatabases
    class DeleteFleetAdvisorDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteFleetAdvisorDatabases'
        data = {}
        data['DatabaseIds'] = Builders::StringList.build(input[:database_ids]) unless input[:database_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteReplicationInstance
    class DeleteReplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteReplicationInstance'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReplicationSubnetGroup
    class DeleteReplicationSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteReplicationSubnetGroup'
        data = {}
        data['ReplicationSubnetGroupIdentifier'] = input[:replication_subnet_group_identifier] unless input[:replication_subnet_group_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReplicationTask
    class DeleteReplicationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteReplicationTask'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReplicationTaskAssessmentRun
    class DeleteReplicationTaskAssessmentRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DeleteReplicationTaskAssessmentRun'
        data = {}
        data['ReplicationTaskAssessmentRunArn'] = input[:replication_task_assessment_run_arn] unless input[:replication_task_assessment_run_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeAccountAttributes'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplicableIndividualAssessments
    class DescribeApplicableIndividualAssessments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeApplicableIndividualAssessments'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['SourceEngineName'] = input[:source_engine_name] unless input[:source_engine_name].nil?
        data['TargetEngineName'] = input[:target_engine_name] unless input[:target_engine_name].nil?
        data['MigrationType'] = input[:migration_type] unless input[:migration_type].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCertificates
    class DescribeCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeCertificates'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValueList
    class FilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConnections
    class DescribeConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeConnections'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpointSettings
    class DescribeEndpointSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeEndpointSettings'
        data = {}
        data['EngineName'] = input[:engine_name] unless input[:engine_name].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpointTypes
    class DescribeEndpointTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeEndpointTypes'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeEndpoints'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventCategories
    class DescribeEventCategories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeEventCategories'
        data = {}
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeEventSubscriptions'
        data = {}
        data['SubscriptionName'] = input[:subscription_name] unless input[:subscription_name].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeEvents'
        data = {}
        data['SourceIdentifier'] = input[:source_identifier] unless input[:source_identifier].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['EventCategories'] = Builders::EventCategoriesList.build(input[:event_categories]) unless input[:event_categories].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetAdvisorCollectors
    class DescribeFleetAdvisorCollectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeFleetAdvisorCollectors'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetAdvisorDatabases
    class DescribeFleetAdvisorDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeFleetAdvisorDatabases'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetAdvisorLsaAnalysis
    class DescribeFleetAdvisorLsaAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeFleetAdvisorLsaAnalysis'
        data = {}
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetAdvisorSchemaObjectSummary
    class DescribeFleetAdvisorSchemaObjectSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeFleetAdvisorSchemaObjectSummary'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetAdvisorSchemas
    class DescribeFleetAdvisorSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeFleetAdvisorSchemas'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrderableReplicationInstances
    class DescribeOrderableReplicationInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeOrderableReplicationInstances'
        data = {}
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePendingMaintenanceActions
    class DescribePendingMaintenanceActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribePendingMaintenanceActions'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRefreshSchemasStatus
    class DescribeRefreshSchemasStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeRefreshSchemasStatus'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationInstanceTaskLogs
    class DescribeReplicationInstanceTaskLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationInstanceTaskLogs'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationInstances
    class DescribeReplicationInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationInstances'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationSubnetGroups
    class DescribeReplicationSubnetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationSubnetGroups'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationTaskAssessmentResults
    class DescribeReplicationTaskAssessmentResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationTaskAssessmentResults'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationTaskAssessmentRuns
    class DescribeReplicationTaskAssessmentRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationTaskAssessmentRuns'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationTaskIndividualAssessments
    class DescribeReplicationTaskIndividualAssessments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationTaskIndividualAssessments'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplicationTasks
    class DescribeReplicationTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeReplicationTasks'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['WithoutSettings'] = input[:without_settings] unless input[:without_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSchemas
    class DescribeSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeSchemas'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTableStatistics
    class DescribeTableStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.DescribeTableStatistics'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['MaxRecords'] = input[:max_records] unless input[:max_records].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportCertificate
    class ImportCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ImportCertificate'
        data = {}
        data['CertificateIdentifier'] = input[:certificate_identifier] unless input[:certificate_identifier].nil?
        data['CertificatePem'] = input[:certificate_pem] unless input[:certificate_pem].nil?
        data['CertificateWallet'] = Base64::encode64(input[:certificate_wallet]).strip unless input[:certificate_wallet].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['ResourceArnList'] = Builders::ArnList.build(input[:resource_arn_list]) unless input[:resource_arn_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ModifyEndpoint
    class ModifyEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ModifyEndpoint'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        data['EndpointIdentifier'] = input[:endpoint_identifier] unless input[:endpoint_identifier].nil?
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['EngineName'] = input[:engine_name] unless input[:engine_name].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['ExtraConnectionAttributes'] = input[:extra_connection_attributes] unless input[:extra_connection_attributes].nil?
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['SslMode'] = input[:ssl_mode] unless input[:ssl_mode].nil?
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['ExternalTableDefinition'] = input[:external_table_definition] unless input[:external_table_definition].nil?
        data['DynamoDbSettings'] = Builders::DynamoDbSettings.build(input[:dynamo_db_settings]) unless input[:dynamo_db_settings].nil?
        data['S3Settings'] = Builders::S3Settings.build(input[:s3_settings]) unless input[:s3_settings].nil?
        data['DmsTransferSettings'] = Builders::DmsTransferSettings.build(input[:dms_transfer_settings]) unless input[:dms_transfer_settings].nil?
        data['MongoDbSettings'] = Builders::MongoDbSettings.build(input[:mongo_db_settings]) unless input[:mongo_db_settings].nil?
        data['KinesisSettings'] = Builders::KinesisSettings.build(input[:kinesis_settings]) unless input[:kinesis_settings].nil?
        data['KafkaSettings'] = Builders::KafkaSettings.build(input[:kafka_settings]) unless input[:kafka_settings].nil?
        data['ElasticsearchSettings'] = Builders::ElasticsearchSettings.build(input[:elasticsearch_settings]) unless input[:elasticsearch_settings].nil?
        data['NeptuneSettings'] = Builders::NeptuneSettings.build(input[:neptune_settings]) unless input[:neptune_settings].nil?
        data['RedshiftSettings'] = Builders::RedshiftSettings.build(input[:redshift_settings]) unless input[:redshift_settings].nil?
        data['PostgreSQLSettings'] = Builders::PostgreSQLSettings.build(input[:postgre_sql_settings]) unless input[:postgre_sql_settings].nil?
        data['MySQLSettings'] = Builders::MySQLSettings.build(input[:my_sql_settings]) unless input[:my_sql_settings].nil?
        data['OracleSettings'] = Builders::OracleSettings.build(input[:oracle_settings]) unless input[:oracle_settings].nil?
        data['SybaseSettings'] = Builders::SybaseSettings.build(input[:sybase_settings]) unless input[:sybase_settings].nil?
        data['MicrosoftSQLServerSettings'] = Builders::MicrosoftSQLServerSettings.build(input[:microsoft_sql_server_settings]) unless input[:microsoft_sql_server_settings].nil?
        data['IBMDb2Settings'] = Builders::IBMDb2Settings.build(input[:ibm_db2_settings]) unless input[:ibm_db2_settings].nil?
        data['DocDbSettings'] = Builders::DocDbSettings.build(input[:doc_db_settings]) unless input[:doc_db_settings].nil?
        data['RedisSettings'] = Builders::RedisSettings.build(input[:redis_settings]) unless input[:redis_settings].nil?
        data['ExactSettings'] = input[:exact_settings] unless input[:exact_settings].nil?
        data['GcpMySQLSettings'] = Builders::GcpMySQLSettings.build(input[:gcp_my_sql_settings]) unless input[:gcp_my_sql_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyEventSubscription
    class ModifyEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ModifyEventSubscription'
        data = {}
        data['SubscriptionName'] = input[:subscription_name] unless input[:subscription_name].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['EventCategories'] = Builders::EventCategoriesList.build(input[:event_categories]) unless input[:event_categories].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyReplicationInstance
    class ModifyReplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ModifyReplicationInstance'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['ApplyImmediately'] = input[:apply_immediately] unless input[:apply_immediately].nil?
        data['ReplicationInstanceClass'] = input[:replication_instance_class] unless input[:replication_instance_class].nil?
        data['VpcSecurityGroupIds'] = Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids]) unless input[:vpc_security_group_ids].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['MultiAZ'] = input[:multi_az] unless input[:multi_az].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['AllowMajorVersionUpgrade'] = input[:allow_major_version_upgrade] unless input[:allow_major_version_upgrade].nil?
        data['AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade] unless input[:auto_minor_version_upgrade].nil?
        data['ReplicationInstanceIdentifier'] = input[:replication_instance_identifier] unless input[:replication_instance_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyReplicationSubnetGroup
    class ModifyReplicationSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ModifyReplicationSubnetGroup'
        data = {}
        data['ReplicationSubnetGroupIdentifier'] = input[:replication_subnet_group_identifier] unless input[:replication_subnet_group_identifier].nil?
        data['ReplicationSubnetGroupDescription'] = input[:replication_subnet_group_description] unless input[:replication_subnet_group_description].nil?
        data['SubnetIds'] = Builders::SubnetIdentifierList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyReplicationTask
    class ModifyReplicationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ModifyReplicationTask'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['ReplicationTaskIdentifier'] = input[:replication_task_identifier] unless input[:replication_task_identifier].nil?
        data['MigrationType'] = input[:migration_type] unless input[:migration_type].nil?
        data['TableMappings'] = input[:table_mappings] unless input[:table_mappings].nil?
        data['ReplicationTaskSettings'] = input[:replication_task_settings] unless input[:replication_task_settings].nil?
        data['CdcStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:cdc_start_time]).to_i unless input[:cdc_start_time].nil?
        data['CdcStartPosition'] = input[:cdc_start_position] unless input[:cdc_start_position].nil?
        data['CdcStopPosition'] = input[:cdc_stop_position] unless input[:cdc_stop_position].nil?
        data['TaskData'] = input[:task_data] unless input[:task_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MoveReplicationTask
    class MoveReplicationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.MoveReplicationTask'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['TargetReplicationInstanceArn'] = input[:target_replication_instance_arn] unless input[:target_replication_instance_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RebootReplicationInstance
    class RebootReplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.RebootReplicationInstance'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['ForceFailover'] = input[:force_failover] unless input[:force_failover].nil?
        data['ForcePlannedFailover'] = input[:force_planned_failover] unless input[:force_planned_failover].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RefreshSchemas
    class RefreshSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.RefreshSchemas'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReloadTables
    class ReloadTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.ReloadTables'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['TablesToReload'] = Builders::TableListToReload.build(input[:tables_to_reload]) unless input[:tables_to_reload].nil?
        data['ReloadOption'] = input[:reload_option] unless input[:reload_option].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TableListToReload
    class TableListToReload
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TableToReload.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TableToReload
    class TableToReload
      def self.build(input)
        data = {}
        data['SchemaName'] = input[:schema_name] unless input[:schema_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data
      end
    end

    # Operation Builder for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.RemoveTagsFromResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::KeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RunFleetAdvisorLsaAnalysis
    class RunFleetAdvisorLsaAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.RunFleetAdvisorLsaAnalysis'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartReplicationTask
    class StartReplicationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.StartReplicationTask'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['StartReplicationTaskType'] = input[:start_replication_task_type] unless input[:start_replication_task_type].nil?
        data['CdcStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:cdc_start_time]).to_i unless input[:cdc_start_time].nil?
        data['CdcStartPosition'] = input[:cdc_start_position] unless input[:cdc_start_position].nil?
        data['CdcStopPosition'] = input[:cdc_stop_position] unless input[:cdc_stop_position].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartReplicationTaskAssessment
    class StartReplicationTaskAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.StartReplicationTaskAssessment'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartReplicationTaskAssessmentRun
    class StartReplicationTaskAssessmentRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.StartReplicationTaskAssessmentRun'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        data['ServiceAccessRoleArn'] = input[:service_access_role_arn] unless input[:service_access_role_arn].nil?
        data['ResultLocationBucket'] = input[:result_location_bucket] unless input[:result_location_bucket].nil?
        data['ResultLocationFolder'] = input[:result_location_folder] unless input[:result_location_folder].nil?
        data['ResultEncryptionMode'] = input[:result_encryption_mode] unless input[:result_encryption_mode].nil?
        data['ResultKmsKeyArn'] = input[:result_kms_key_arn] unless input[:result_kms_key_arn].nil?
        data['AssessmentRunName'] = input[:assessment_run_name] unless input[:assessment_run_name].nil?
        data['IncludeOnly'] = Builders::IncludeTestList.build(input[:include_only]) unless input[:include_only].nil?
        data['Exclude'] = Builders::ExcludeTestList.build(input[:exclude]) unless input[:exclude].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExcludeTestList
    class ExcludeTestList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for IncludeTestList
    class IncludeTestList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StopReplicationTask
    class StopReplicationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.StopReplicationTask'
        data = {}
        data['ReplicationTaskArn'] = input[:replication_task_arn] unless input[:replication_task_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestConnection
    class TestConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDMSv20160101.TestConnection'
        data = {}
        data['ReplicationInstanceArn'] = input[:replication_instance_arn] unless input[:replication_instance_arn].nil?
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
