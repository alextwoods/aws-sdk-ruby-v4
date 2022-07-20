# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::DatabaseMigrationService
  module Stubs

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.default(visited=[])
        {
          resource_pending_maintenance_actions: ResourcePendingMaintenanceActions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourcePendingMaintenanceActions'] = ResourcePendingMaintenanceActions.stub(stub[:resource_pending_maintenance_actions]) unless stub[:resource_pending_maintenance_actions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResourcePendingMaintenanceActions
    class ResourcePendingMaintenanceActions
      def self.default(visited=[])
        return nil if visited.include?('ResourcePendingMaintenanceActions')
        visited = visited + ['ResourcePendingMaintenanceActions']
        {
          resource_identifier: 'resource_identifier',
          pending_maintenance_action_details: PendingMaintenanceActionDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePendingMaintenanceActions.new
        data = {}
        data['ResourceIdentifier'] = stub[:resource_identifier] unless stub[:resource_identifier].nil?
        data['PendingMaintenanceActionDetails'] = PendingMaintenanceActionDetails.stub(stub[:pending_maintenance_action_details]) unless stub[:pending_maintenance_action_details].nil?
        data
      end
    end

    # List Stubber for PendingMaintenanceActionDetails
    class PendingMaintenanceActionDetails
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceActionDetails')
        visited = visited + ['PendingMaintenanceActionDetails']
        [
          PendingMaintenanceAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PendingMaintenanceAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PendingMaintenanceAction
    class PendingMaintenanceAction
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceAction')
        visited = visited + ['PendingMaintenanceAction']
        {
          action: 'action',
          auto_applied_after_date: Time.now,
          forced_apply_date: Time.now,
          opt_in_status: 'opt_in_status',
          current_apply_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingMaintenanceAction.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['AutoAppliedAfterDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:auto_applied_after_date]).to_i unless stub[:auto_applied_after_date].nil?
        data['ForcedApplyDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:forced_apply_date]).to_i unless stub[:forced_apply_date].nil?
        data['OptInStatus'] = stub[:opt_in_status] unless stub[:opt_in_status].nil?
        data['CurrentApplyDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:current_apply_date]).to_i unless stub[:current_apply_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for CancelReplicationTaskAssessmentRun
    class CancelReplicationTaskAssessmentRun
      def self.default(visited=[])
        {
          replication_task_assessment_run: ReplicationTaskAssessmentRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTaskAssessmentRun'] = ReplicationTaskAssessmentRun.stub(stub[:replication_task_assessment_run]) unless stub[:replication_task_assessment_run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReplicationTaskAssessmentRun
    class ReplicationTaskAssessmentRun
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskAssessmentRun')
        visited = visited + ['ReplicationTaskAssessmentRun']
        {
          replication_task_assessment_run_arn: 'replication_task_assessment_run_arn',
          replication_task_arn: 'replication_task_arn',
          status: 'status',
          replication_task_assessment_run_creation_date: Time.now,
          assessment_progress: ReplicationTaskAssessmentRunProgress.default(visited),
          last_failure_message: 'last_failure_message',
          service_access_role_arn: 'service_access_role_arn',
          result_location_bucket: 'result_location_bucket',
          result_location_folder: 'result_location_folder',
          result_encryption_mode: 'result_encryption_mode',
          result_kms_key_arn: 'result_kms_key_arn',
          assessment_run_name: 'assessment_run_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationTaskAssessmentRun.new
        data = {}
        data['ReplicationTaskAssessmentRunArn'] = stub[:replication_task_assessment_run_arn] unless stub[:replication_task_assessment_run_arn].nil?
        data['ReplicationTaskArn'] = stub[:replication_task_arn] unless stub[:replication_task_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ReplicationTaskAssessmentRunCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replication_task_assessment_run_creation_date]).to_i unless stub[:replication_task_assessment_run_creation_date].nil?
        data['AssessmentProgress'] = ReplicationTaskAssessmentRunProgress.stub(stub[:assessment_progress]) unless stub[:assessment_progress].nil?
        data['LastFailureMessage'] = stub[:last_failure_message] unless stub[:last_failure_message].nil?
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['ResultLocationBucket'] = stub[:result_location_bucket] unless stub[:result_location_bucket].nil?
        data['ResultLocationFolder'] = stub[:result_location_folder] unless stub[:result_location_folder].nil?
        data['ResultEncryptionMode'] = stub[:result_encryption_mode] unless stub[:result_encryption_mode].nil?
        data['ResultKmsKeyArn'] = stub[:result_kms_key_arn] unless stub[:result_kms_key_arn].nil?
        data['AssessmentRunName'] = stub[:assessment_run_name] unless stub[:assessment_run_name].nil?
        data
      end
    end

    # Structure Stubber for ReplicationTaskAssessmentRunProgress
    class ReplicationTaskAssessmentRunProgress
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskAssessmentRunProgress')
        visited = visited + ['ReplicationTaskAssessmentRunProgress']
        {
          individual_assessment_count: 1,
          individual_assessment_completed_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationTaskAssessmentRunProgress.new
        data = {}
        data['IndividualAssessmentCount'] = stub[:individual_assessment_count] unless stub[:individual_assessment_count].nil?
        data['IndividualAssessmentCompletedCount'] = stub[:individual_assessment_completed_count] unless stub[:individual_assessment_completed_count].nil?
        data
      end
    end

    # Operation Stubber for CreateEndpoint
    class CreateEndpoint
      def self.default(visited=[])
        {
          endpoint: Endpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoint'] = Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          endpoint_identifier: 'endpoint_identifier',
          endpoint_type: 'endpoint_type',
          engine_name: 'engine_name',
          engine_display_name: 'engine_display_name',
          username: 'username',
          server_name: 'server_name',
          port: 1,
          database_name: 'database_name',
          extra_connection_attributes: 'extra_connection_attributes',
          status: 'status',
          kms_key_id: 'kms_key_id',
          endpoint_arn: 'endpoint_arn',
          certificate_arn: 'certificate_arn',
          ssl_mode: 'ssl_mode',
          service_access_role_arn: 'service_access_role_arn',
          external_table_definition: 'external_table_definition',
          external_id: 'external_id',
          dynamo_db_settings: DynamoDbSettings.default(visited),
          s3_settings: S3Settings.default(visited),
          dms_transfer_settings: DmsTransferSettings.default(visited),
          mongo_db_settings: MongoDbSettings.default(visited),
          kinesis_settings: KinesisSettings.default(visited),
          kafka_settings: KafkaSettings.default(visited),
          elasticsearch_settings: ElasticsearchSettings.default(visited),
          neptune_settings: NeptuneSettings.default(visited),
          redshift_settings: RedshiftSettings.default(visited),
          postgre_sql_settings: PostgreSQLSettings.default(visited),
          my_sql_settings: MySQLSettings.default(visited),
          oracle_settings: OracleSettings.default(visited),
          sybase_settings: SybaseSettings.default(visited),
          microsoft_sql_server_settings: MicrosoftSQLServerSettings.default(visited),
          ibm_db2_settings: IBMDb2Settings.default(visited),
          doc_db_settings: DocDbSettings.default(visited),
          redis_settings: RedisSettings.default(visited),
          gcp_my_sql_settings: GcpMySQLSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['EndpointIdentifier'] = stub[:endpoint_identifier] unless stub[:endpoint_identifier].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['EngineName'] = stub[:engine_name] unless stub[:engine_name].nil?
        data['EngineDisplayName'] = stub[:engine_display_name] unless stub[:engine_display_name].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['ExtraConnectionAttributes'] = stub[:extra_connection_attributes] unless stub[:extra_connection_attributes].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['SslMode'] = stub[:ssl_mode] unless stub[:ssl_mode].nil?
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['ExternalTableDefinition'] = stub[:external_table_definition] unless stub[:external_table_definition].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['DynamoDbSettings'] = DynamoDbSettings.stub(stub[:dynamo_db_settings]) unless stub[:dynamo_db_settings].nil?
        data['S3Settings'] = S3Settings.stub(stub[:s3_settings]) unless stub[:s3_settings].nil?
        data['DmsTransferSettings'] = DmsTransferSettings.stub(stub[:dms_transfer_settings]) unless stub[:dms_transfer_settings].nil?
        data['MongoDbSettings'] = MongoDbSettings.stub(stub[:mongo_db_settings]) unless stub[:mongo_db_settings].nil?
        data['KinesisSettings'] = KinesisSettings.stub(stub[:kinesis_settings]) unless stub[:kinesis_settings].nil?
        data['KafkaSettings'] = KafkaSettings.stub(stub[:kafka_settings]) unless stub[:kafka_settings].nil?
        data['ElasticsearchSettings'] = ElasticsearchSettings.stub(stub[:elasticsearch_settings]) unless stub[:elasticsearch_settings].nil?
        data['NeptuneSettings'] = NeptuneSettings.stub(stub[:neptune_settings]) unless stub[:neptune_settings].nil?
        data['RedshiftSettings'] = RedshiftSettings.stub(stub[:redshift_settings]) unless stub[:redshift_settings].nil?
        data['PostgreSQLSettings'] = PostgreSQLSettings.stub(stub[:postgre_sql_settings]) unless stub[:postgre_sql_settings].nil?
        data['MySQLSettings'] = MySQLSettings.stub(stub[:my_sql_settings]) unless stub[:my_sql_settings].nil?
        data['OracleSettings'] = OracleSettings.stub(stub[:oracle_settings]) unless stub[:oracle_settings].nil?
        data['SybaseSettings'] = SybaseSettings.stub(stub[:sybase_settings]) unless stub[:sybase_settings].nil?
        data['MicrosoftSQLServerSettings'] = MicrosoftSQLServerSettings.stub(stub[:microsoft_sql_server_settings]) unless stub[:microsoft_sql_server_settings].nil?
        data['IBMDb2Settings'] = IBMDb2Settings.stub(stub[:ibm_db2_settings]) unless stub[:ibm_db2_settings].nil?
        data['DocDbSettings'] = DocDbSettings.stub(stub[:doc_db_settings]) unless stub[:doc_db_settings].nil?
        data['RedisSettings'] = RedisSettings.stub(stub[:redis_settings]) unless stub[:redis_settings].nil?
        data['GcpMySQLSettings'] = GcpMySQLSettings.stub(stub[:gcp_my_sql_settings]) unless stub[:gcp_my_sql_settings].nil?
        data
      end
    end

    # Structure Stubber for GcpMySQLSettings
    class GcpMySQLSettings
      def self.default(visited=[])
        return nil if visited.include?('GcpMySQLSettings')
        visited = visited + ['GcpMySQLSettings']
        {
          after_connect_script: 'after_connect_script',
          clean_source_metadata_on_mismatch: false,
          database_name: 'database_name',
          events_poll_interval: 1,
          target_db_type: 'target_db_type',
          max_file_size: 1,
          parallel_load_threads: 1,
          password: 'password',
          port: 1,
          server_name: 'server_name',
          server_timezone: 'server_timezone',
          username: 'username',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GcpMySQLSettings.new
        data = {}
        data['AfterConnectScript'] = stub[:after_connect_script] unless stub[:after_connect_script].nil?
        data['CleanSourceMetadataOnMismatch'] = stub[:clean_source_metadata_on_mismatch] unless stub[:clean_source_metadata_on_mismatch].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['EventsPollInterval'] = stub[:events_poll_interval] unless stub[:events_poll_interval].nil?
        data['TargetDbType'] = stub[:target_db_type] unless stub[:target_db_type].nil?
        data['MaxFileSize'] = stub[:max_file_size] unless stub[:max_file_size].nil?
        data['ParallelLoadThreads'] = stub[:parallel_load_threads] unless stub[:parallel_load_threads].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['ServerTimezone'] = stub[:server_timezone] unless stub[:server_timezone].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for RedisSettings
    class RedisSettings
      def self.default(visited=[])
        return nil if visited.include?('RedisSettings')
        visited = visited + ['RedisSettings']
        {
          server_name: 'server_name',
          port: 1,
          ssl_security_protocol: 'ssl_security_protocol',
          auth_type: 'auth_type',
          auth_user_name: 'auth_user_name',
          auth_password: 'auth_password',
          ssl_ca_certificate_arn: 'ssl_ca_certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedisSettings.new
        data = {}
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['SslSecurityProtocol'] = stub[:ssl_security_protocol] unless stub[:ssl_security_protocol].nil?
        data['AuthType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data['AuthUserName'] = stub[:auth_user_name] unless stub[:auth_user_name].nil?
        data['AuthPassword'] = stub[:auth_password] unless stub[:auth_password].nil?
        data['SslCaCertificateArn'] = stub[:ssl_ca_certificate_arn] unless stub[:ssl_ca_certificate_arn].nil?
        data
      end
    end

    # Structure Stubber for DocDbSettings
    class DocDbSettings
      def self.default(visited=[])
        return nil if visited.include?('DocDbSettings')
        visited = visited + ['DocDbSettings']
        {
          username: 'username',
          password: 'password',
          server_name: 'server_name',
          port: 1,
          database_name: 'database_name',
          nesting_level: 'nesting_level',
          extract_doc_id: false,
          docs_to_investigate: 1,
          kms_key_id: 'kms_key_id',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocDbSettings.new
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['NestingLevel'] = stub[:nesting_level] unless stub[:nesting_level].nil?
        data['ExtractDocId'] = stub[:extract_doc_id] unless stub[:extract_doc_id].nil?
        data['DocsToInvestigate'] = stub[:docs_to_investigate] unless stub[:docs_to_investigate].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for IBMDb2Settings
    class IBMDb2Settings
      def self.default(visited=[])
        return nil if visited.include?('IBMDb2Settings')
        visited = visited + ['IBMDb2Settings']
        {
          database_name: 'database_name',
          password: 'password',
          port: 1,
          server_name: 'server_name',
          set_data_capture_changes: false,
          current_lsn: 'current_lsn',
          max_k_bytes_per_read: 1,
          username: 'username',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::IBMDb2Settings.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['SetDataCaptureChanges'] = stub[:set_data_capture_changes] unless stub[:set_data_capture_changes].nil?
        data['CurrentLsn'] = stub[:current_lsn] unless stub[:current_lsn].nil?
        data['MaxKBytesPerRead'] = stub[:max_k_bytes_per_read] unless stub[:max_k_bytes_per_read].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for MicrosoftSQLServerSettings
    class MicrosoftSQLServerSettings
      def self.default(visited=[])
        return nil if visited.include?('MicrosoftSQLServerSettings')
        visited = visited + ['MicrosoftSQLServerSettings']
        {
          port: 1,
          bcp_packet_size: 1,
          database_name: 'database_name',
          control_tables_file_group: 'control_tables_file_group',
          password: 'password',
          query_single_always_on_node: false,
          read_backup_only: false,
          safeguard_policy: 'safeguard_policy',
          server_name: 'server_name',
          username: 'username',
          use_bcp_full_load: false,
          use_third_party_backup_device: false,
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MicrosoftSQLServerSettings.new
        data = {}
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['BcpPacketSize'] = stub[:bcp_packet_size] unless stub[:bcp_packet_size].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['ControlTablesFileGroup'] = stub[:control_tables_file_group] unless stub[:control_tables_file_group].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['QuerySingleAlwaysOnNode'] = stub[:query_single_always_on_node] unless stub[:query_single_always_on_node].nil?
        data['ReadBackupOnly'] = stub[:read_backup_only] unless stub[:read_backup_only].nil?
        data['SafeguardPolicy'] = stub[:safeguard_policy] unless stub[:safeguard_policy].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['UseBcpFullLoad'] = stub[:use_bcp_full_load] unless stub[:use_bcp_full_load].nil?
        data['UseThirdPartyBackupDevice'] = stub[:use_third_party_backup_device] unless stub[:use_third_party_backup_device].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for SybaseSettings
    class SybaseSettings
      def self.default(visited=[])
        return nil if visited.include?('SybaseSettings')
        visited = visited + ['SybaseSettings']
        {
          database_name: 'database_name',
          password: 'password',
          port: 1,
          server_name: 'server_name',
          username: 'username',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SybaseSettings.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for OracleSettings
    class OracleSettings
      def self.default(visited=[])
        return nil if visited.include?('OracleSettings')
        visited = visited + ['OracleSettings']
        {
          add_supplemental_logging: false,
          archived_log_dest_id: 1,
          additional_archived_log_dest_id: 1,
          extra_archived_log_dest_ids: IntegerList.default(visited),
          allow_select_nested_tables: false,
          parallel_asm_read_threads: 1,
          read_ahead_blocks: 1,
          access_alternate_directly: false,
          use_alternate_folder_for_online: false,
          oracle_path_prefix: 'oracle_path_prefix',
          use_path_prefix: 'use_path_prefix',
          replace_path_prefix: false,
          enable_homogenous_tablespace: false,
          direct_path_no_log: false,
          archived_logs_only: false,
          asm_password: 'asm_password',
          asm_server: 'asm_server',
          asm_user: 'asm_user',
          char_length_semantics: 'char_length_semantics',
          database_name: 'database_name',
          direct_path_parallel_load: false,
          fail_tasks_on_lob_truncation: false,
          number_datatype_scale: 1,
          password: 'password',
          port: 1,
          read_table_space_name: false,
          retry_interval: 1,
          security_db_encryption: 'security_db_encryption',
          security_db_encryption_name: 'security_db_encryption_name',
          server_name: 'server_name',
          spatial_data_option_to_geo_json_function_name: 'spatial_data_option_to_geo_json_function_name',
          standby_delay_time: 1,
          username: 'username',
          use_b_file: false,
          use_direct_path_full_load: false,
          use_logminer_reader: false,
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
          secrets_manager_oracle_asm_access_role_arn: 'secrets_manager_oracle_asm_access_role_arn',
          secrets_manager_oracle_asm_secret_id: 'secrets_manager_oracle_asm_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OracleSettings.new
        data = {}
        data['AddSupplementalLogging'] = stub[:add_supplemental_logging] unless stub[:add_supplemental_logging].nil?
        data['ArchivedLogDestId'] = stub[:archived_log_dest_id] unless stub[:archived_log_dest_id].nil?
        data['AdditionalArchivedLogDestId'] = stub[:additional_archived_log_dest_id] unless stub[:additional_archived_log_dest_id].nil?
        data['ExtraArchivedLogDestIds'] = IntegerList.stub(stub[:extra_archived_log_dest_ids]) unless stub[:extra_archived_log_dest_ids].nil?
        data['AllowSelectNestedTables'] = stub[:allow_select_nested_tables] unless stub[:allow_select_nested_tables].nil?
        data['ParallelAsmReadThreads'] = stub[:parallel_asm_read_threads] unless stub[:parallel_asm_read_threads].nil?
        data['ReadAheadBlocks'] = stub[:read_ahead_blocks] unless stub[:read_ahead_blocks].nil?
        data['AccessAlternateDirectly'] = stub[:access_alternate_directly] unless stub[:access_alternate_directly].nil?
        data['UseAlternateFolderForOnline'] = stub[:use_alternate_folder_for_online] unless stub[:use_alternate_folder_for_online].nil?
        data['OraclePathPrefix'] = stub[:oracle_path_prefix] unless stub[:oracle_path_prefix].nil?
        data['UsePathPrefix'] = stub[:use_path_prefix] unless stub[:use_path_prefix].nil?
        data['ReplacePathPrefix'] = stub[:replace_path_prefix] unless stub[:replace_path_prefix].nil?
        data['EnableHomogenousTablespace'] = stub[:enable_homogenous_tablespace] unless stub[:enable_homogenous_tablespace].nil?
        data['DirectPathNoLog'] = stub[:direct_path_no_log] unless stub[:direct_path_no_log].nil?
        data['ArchivedLogsOnly'] = stub[:archived_logs_only] unless stub[:archived_logs_only].nil?
        data['AsmPassword'] = stub[:asm_password] unless stub[:asm_password].nil?
        data['AsmServer'] = stub[:asm_server] unless stub[:asm_server].nil?
        data['AsmUser'] = stub[:asm_user] unless stub[:asm_user].nil?
        data['CharLengthSemantics'] = stub[:char_length_semantics] unless stub[:char_length_semantics].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['DirectPathParallelLoad'] = stub[:direct_path_parallel_load] unless stub[:direct_path_parallel_load].nil?
        data['FailTasksOnLobTruncation'] = stub[:fail_tasks_on_lob_truncation] unless stub[:fail_tasks_on_lob_truncation].nil?
        data['NumberDatatypeScale'] = stub[:number_datatype_scale] unless stub[:number_datatype_scale].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ReadTableSpaceName'] = stub[:read_table_space_name] unless stub[:read_table_space_name].nil?
        data['RetryInterval'] = stub[:retry_interval] unless stub[:retry_interval].nil?
        data['SecurityDbEncryption'] = stub[:security_db_encryption] unless stub[:security_db_encryption].nil?
        data['SecurityDbEncryptionName'] = stub[:security_db_encryption_name] unless stub[:security_db_encryption_name].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['SpatialDataOptionToGeoJsonFunctionName'] = stub[:spatial_data_option_to_geo_json_function_name] unless stub[:spatial_data_option_to_geo_json_function_name].nil?
        data['StandbyDelayTime'] = stub[:standby_delay_time] unless stub[:standby_delay_time].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['UseBFile'] = stub[:use_b_file] unless stub[:use_b_file].nil?
        data['UseDirectPathFullLoad'] = stub[:use_direct_path_full_load] unless stub[:use_direct_path_full_load].nil?
        data['UseLogminerReader'] = stub[:use_logminer_reader] unless stub[:use_logminer_reader].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data['SecretsManagerOracleAsmAccessRoleArn'] = stub[:secrets_manager_oracle_asm_access_role_arn] unless stub[:secrets_manager_oracle_asm_access_role_arn].nil?
        data['SecretsManagerOracleAsmSecretId'] = stub[:secrets_manager_oracle_asm_secret_id] unless stub[:secrets_manager_oracle_asm_secret_id].nil?
        data
      end
    end

    # List Stubber for IntegerList
    class IntegerList
      def self.default(visited=[])
        return nil if visited.include?('IntegerList')
        visited = visited + ['IntegerList']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MySQLSettings
    class MySQLSettings
      def self.default(visited=[])
        return nil if visited.include?('MySQLSettings')
        visited = visited + ['MySQLSettings']
        {
          after_connect_script: 'after_connect_script',
          clean_source_metadata_on_mismatch: false,
          database_name: 'database_name',
          events_poll_interval: 1,
          target_db_type: 'target_db_type',
          max_file_size: 1,
          parallel_load_threads: 1,
          password: 'password',
          port: 1,
          server_name: 'server_name',
          server_timezone: 'server_timezone',
          username: 'username',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MySQLSettings.new
        data = {}
        data['AfterConnectScript'] = stub[:after_connect_script] unless stub[:after_connect_script].nil?
        data['CleanSourceMetadataOnMismatch'] = stub[:clean_source_metadata_on_mismatch] unless stub[:clean_source_metadata_on_mismatch].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['EventsPollInterval'] = stub[:events_poll_interval] unless stub[:events_poll_interval].nil?
        data['TargetDbType'] = stub[:target_db_type] unless stub[:target_db_type].nil?
        data['MaxFileSize'] = stub[:max_file_size] unless stub[:max_file_size].nil?
        data['ParallelLoadThreads'] = stub[:parallel_load_threads] unless stub[:parallel_load_threads].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['ServerTimezone'] = stub[:server_timezone] unless stub[:server_timezone].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for PostgreSQLSettings
    class PostgreSQLSettings
      def self.default(visited=[])
        return nil if visited.include?('PostgreSQLSettings')
        visited = visited + ['PostgreSQLSettings']
        {
          after_connect_script: 'after_connect_script',
          capture_ddls: false,
          max_file_size: 1,
          database_name: 'database_name',
          ddl_artifacts_schema: 'ddl_artifacts_schema',
          execute_timeout: 1,
          fail_tasks_on_lob_truncation: false,
          heartbeat_enable: false,
          heartbeat_schema: 'heartbeat_schema',
          heartbeat_frequency: 1,
          password: 'password',
          port: 1,
          server_name: 'server_name',
          username: 'username',
          slot_name: 'slot_name',
          plugin_name: 'plugin_name',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PostgreSQLSettings.new
        data = {}
        data['AfterConnectScript'] = stub[:after_connect_script] unless stub[:after_connect_script].nil?
        data['CaptureDdls'] = stub[:capture_ddls] unless stub[:capture_ddls].nil?
        data['MaxFileSize'] = stub[:max_file_size] unless stub[:max_file_size].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['DdlArtifactsSchema'] = stub[:ddl_artifacts_schema] unless stub[:ddl_artifacts_schema].nil?
        data['ExecuteTimeout'] = stub[:execute_timeout] unless stub[:execute_timeout].nil?
        data['FailTasksOnLobTruncation'] = stub[:fail_tasks_on_lob_truncation] unless stub[:fail_tasks_on_lob_truncation].nil?
        data['HeartbeatEnable'] = stub[:heartbeat_enable] unless stub[:heartbeat_enable].nil?
        data['HeartbeatSchema'] = stub[:heartbeat_schema] unless stub[:heartbeat_schema].nil?
        data['HeartbeatFrequency'] = stub[:heartbeat_frequency] unless stub[:heartbeat_frequency].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['SlotName'] = stub[:slot_name] unless stub[:slot_name].nil?
        data['PluginName'] = stub[:plugin_name] unless stub[:plugin_name].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for RedshiftSettings
    class RedshiftSettings
      def self.default(visited=[])
        return nil if visited.include?('RedshiftSettings')
        visited = visited + ['RedshiftSettings']
        {
          accept_any_date: false,
          after_connect_script: 'after_connect_script',
          bucket_folder: 'bucket_folder',
          bucket_name: 'bucket_name',
          case_sensitive_names: false,
          comp_update: false,
          connection_timeout: 1,
          database_name: 'database_name',
          date_format: 'date_format',
          empty_as_null: false,
          encryption_mode: 'encryption_mode',
          explicit_ids: false,
          file_transfer_upload_streams: 1,
          load_timeout: 1,
          max_file_size: 1,
          password: 'password',
          port: 1,
          remove_quotes: false,
          replace_invalid_chars: 'replace_invalid_chars',
          replace_chars: 'replace_chars',
          server_name: 'server_name',
          service_access_role_arn: 'service_access_role_arn',
          server_side_encryption_kms_key_id: 'server_side_encryption_kms_key_id',
          time_format: 'time_format',
          trim_blanks: false,
          truncate_columns: false,
          username: 'username',
          write_buffer_size: 1,
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftSettings.new
        data = {}
        data['AcceptAnyDate'] = stub[:accept_any_date] unless stub[:accept_any_date].nil?
        data['AfterConnectScript'] = stub[:after_connect_script] unless stub[:after_connect_script].nil?
        data['BucketFolder'] = stub[:bucket_folder] unless stub[:bucket_folder].nil?
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['CaseSensitiveNames'] = stub[:case_sensitive_names] unless stub[:case_sensitive_names].nil?
        data['CompUpdate'] = stub[:comp_update] unless stub[:comp_update].nil?
        data['ConnectionTimeout'] = stub[:connection_timeout] unless stub[:connection_timeout].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['DateFormat'] = stub[:date_format] unless stub[:date_format].nil?
        data['EmptyAsNull'] = stub[:empty_as_null] unless stub[:empty_as_null].nil?
        data['EncryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['ExplicitIds'] = stub[:explicit_ids] unless stub[:explicit_ids].nil?
        data['FileTransferUploadStreams'] = stub[:file_transfer_upload_streams] unless stub[:file_transfer_upload_streams].nil?
        data['LoadTimeout'] = stub[:load_timeout] unless stub[:load_timeout].nil?
        data['MaxFileSize'] = stub[:max_file_size] unless stub[:max_file_size].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['RemoveQuotes'] = stub[:remove_quotes] unless stub[:remove_quotes].nil?
        data['ReplaceInvalidChars'] = stub[:replace_invalid_chars] unless stub[:replace_invalid_chars].nil?
        data['ReplaceChars'] = stub[:replace_chars] unless stub[:replace_chars].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['ServerSideEncryptionKmsKeyId'] = stub[:server_side_encryption_kms_key_id] unless stub[:server_side_encryption_kms_key_id].nil?
        data['TimeFormat'] = stub[:time_format] unless stub[:time_format].nil?
        data['TrimBlanks'] = stub[:trim_blanks] unless stub[:trim_blanks].nil?
        data['TruncateColumns'] = stub[:truncate_columns] unless stub[:truncate_columns].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['WriteBufferSize'] = stub[:write_buffer_size] unless stub[:write_buffer_size].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for NeptuneSettings
    class NeptuneSettings
      def self.default(visited=[])
        return nil if visited.include?('NeptuneSettings')
        visited = visited + ['NeptuneSettings']
        {
          service_access_role_arn: 'service_access_role_arn',
          s3_bucket_name: 's3_bucket_name',
          s3_bucket_folder: 's3_bucket_folder',
          error_retry_duration: 1,
          max_file_size: 1,
          max_retry_count: 1,
          iam_auth_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NeptuneSettings.new
        data = {}
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3BucketFolder'] = stub[:s3_bucket_folder] unless stub[:s3_bucket_folder].nil?
        data['ErrorRetryDuration'] = stub[:error_retry_duration] unless stub[:error_retry_duration].nil?
        data['MaxFileSize'] = stub[:max_file_size] unless stub[:max_file_size].nil?
        data['MaxRetryCount'] = stub[:max_retry_count] unless stub[:max_retry_count].nil?
        data['IamAuthEnabled'] = stub[:iam_auth_enabled] unless stub[:iam_auth_enabled].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchSettings
    class ElasticsearchSettings
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchSettings')
        visited = visited + ['ElasticsearchSettings']
        {
          service_access_role_arn: 'service_access_role_arn',
          endpoint_uri: 'endpoint_uri',
          full_load_error_percentage: 1,
          error_retry_duration: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchSettings.new
        data = {}
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['EndpointUri'] = stub[:endpoint_uri] unless stub[:endpoint_uri].nil?
        data['FullLoadErrorPercentage'] = stub[:full_load_error_percentage] unless stub[:full_load_error_percentage].nil?
        data['ErrorRetryDuration'] = stub[:error_retry_duration] unless stub[:error_retry_duration].nil?
        data
      end
    end

    # Structure Stubber for KafkaSettings
    class KafkaSettings
      def self.default(visited=[])
        return nil if visited.include?('KafkaSettings')
        visited = visited + ['KafkaSettings']
        {
          broker: 'broker',
          topic: 'topic',
          message_format: 'message_format',
          include_transaction_details: false,
          include_partition_value: false,
          partition_include_schema_table: false,
          include_table_alter_operations: false,
          include_control_details: false,
          message_max_bytes: 1,
          include_null_and_empty: false,
          security_protocol: 'security_protocol',
          ssl_client_certificate_arn: 'ssl_client_certificate_arn',
          ssl_client_key_arn: 'ssl_client_key_arn',
          ssl_client_key_password: 'ssl_client_key_password',
          ssl_ca_certificate_arn: 'ssl_ca_certificate_arn',
          sasl_username: 'sasl_username',
          sasl_password: 'sasl_password',
          no_hex_prefix: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaSettings.new
        data = {}
        data['Broker'] = stub[:broker] unless stub[:broker].nil?
        data['Topic'] = stub[:topic] unless stub[:topic].nil?
        data['MessageFormat'] = stub[:message_format] unless stub[:message_format].nil?
        data['IncludeTransactionDetails'] = stub[:include_transaction_details] unless stub[:include_transaction_details].nil?
        data['IncludePartitionValue'] = stub[:include_partition_value] unless stub[:include_partition_value].nil?
        data['PartitionIncludeSchemaTable'] = stub[:partition_include_schema_table] unless stub[:partition_include_schema_table].nil?
        data['IncludeTableAlterOperations'] = stub[:include_table_alter_operations] unless stub[:include_table_alter_operations].nil?
        data['IncludeControlDetails'] = stub[:include_control_details] unless stub[:include_control_details].nil?
        data['MessageMaxBytes'] = stub[:message_max_bytes] unless stub[:message_max_bytes].nil?
        data['IncludeNullAndEmpty'] = stub[:include_null_and_empty] unless stub[:include_null_and_empty].nil?
        data['SecurityProtocol'] = stub[:security_protocol] unless stub[:security_protocol].nil?
        data['SslClientCertificateArn'] = stub[:ssl_client_certificate_arn] unless stub[:ssl_client_certificate_arn].nil?
        data['SslClientKeyArn'] = stub[:ssl_client_key_arn] unless stub[:ssl_client_key_arn].nil?
        data['SslClientKeyPassword'] = stub[:ssl_client_key_password] unless stub[:ssl_client_key_password].nil?
        data['SslCaCertificateArn'] = stub[:ssl_ca_certificate_arn] unless stub[:ssl_ca_certificate_arn].nil?
        data['SaslUsername'] = stub[:sasl_username] unless stub[:sasl_username].nil?
        data['SaslPassword'] = stub[:sasl_password] unless stub[:sasl_password].nil?
        data['NoHexPrefix'] = stub[:no_hex_prefix] unless stub[:no_hex_prefix].nil?
        data
      end
    end

    # Structure Stubber for KinesisSettings
    class KinesisSettings
      def self.default(visited=[])
        return nil if visited.include?('KinesisSettings')
        visited = visited + ['KinesisSettings']
        {
          stream_arn: 'stream_arn',
          message_format: 'message_format',
          service_access_role_arn: 'service_access_role_arn',
          include_transaction_details: false,
          include_partition_value: false,
          partition_include_schema_table: false,
          include_table_alter_operations: false,
          include_control_details: false,
          include_null_and_empty: false,
          no_hex_prefix: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisSettings.new
        data = {}
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['MessageFormat'] = stub[:message_format] unless stub[:message_format].nil?
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['IncludeTransactionDetails'] = stub[:include_transaction_details] unless stub[:include_transaction_details].nil?
        data['IncludePartitionValue'] = stub[:include_partition_value] unless stub[:include_partition_value].nil?
        data['PartitionIncludeSchemaTable'] = stub[:partition_include_schema_table] unless stub[:partition_include_schema_table].nil?
        data['IncludeTableAlterOperations'] = stub[:include_table_alter_operations] unless stub[:include_table_alter_operations].nil?
        data['IncludeControlDetails'] = stub[:include_control_details] unless stub[:include_control_details].nil?
        data['IncludeNullAndEmpty'] = stub[:include_null_and_empty] unless stub[:include_null_and_empty].nil?
        data['NoHexPrefix'] = stub[:no_hex_prefix] unless stub[:no_hex_prefix].nil?
        data
      end
    end

    # Structure Stubber for MongoDbSettings
    class MongoDbSettings
      def self.default(visited=[])
        return nil if visited.include?('MongoDbSettings')
        visited = visited + ['MongoDbSettings']
        {
          username: 'username',
          password: 'password',
          server_name: 'server_name',
          port: 1,
          database_name: 'database_name',
          auth_type: 'auth_type',
          auth_mechanism: 'auth_mechanism',
          nesting_level: 'nesting_level',
          extract_doc_id: 'extract_doc_id',
          docs_to_investigate: 'docs_to_investigate',
          auth_source: 'auth_source',
          kms_key_id: 'kms_key_id',
          secrets_manager_access_role_arn: 'secrets_manager_access_role_arn',
          secrets_manager_secret_id: 'secrets_manager_secret_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MongoDbSettings.new
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['AuthType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data['AuthMechanism'] = stub[:auth_mechanism] unless stub[:auth_mechanism].nil?
        data['NestingLevel'] = stub[:nesting_level] unless stub[:nesting_level].nil?
        data['ExtractDocId'] = stub[:extract_doc_id] unless stub[:extract_doc_id].nil?
        data['DocsToInvestigate'] = stub[:docs_to_investigate] unless stub[:docs_to_investigate].nil?
        data['AuthSource'] = stub[:auth_source] unless stub[:auth_source].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['SecretsManagerAccessRoleArn'] = stub[:secrets_manager_access_role_arn] unless stub[:secrets_manager_access_role_arn].nil?
        data['SecretsManagerSecretId'] = stub[:secrets_manager_secret_id] unless stub[:secrets_manager_secret_id].nil?
        data
      end
    end

    # Structure Stubber for DmsTransferSettings
    class DmsTransferSettings
      def self.default(visited=[])
        return nil if visited.include?('DmsTransferSettings')
        visited = visited + ['DmsTransferSettings']
        {
          service_access_role_arn: 'service_access_role_arn',
          bucket_name: 'bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DmsTransferSettings.new
        data = {}
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data
      end
    end

    # Structure Stubber for S3Settings
    class S3Settings
      def self.default(visited=[])
        return nil if visited.include?('S3Settings')
        visited = visited + ['S3Settings']
        {
          service_access_role_arn: 'service_access_role_arn',
          external_table_definition: 'external_table_definition',
          csv_row_delimiter: 'csv_row_delimiter',
          csv_delimiter: 'csv_delimiter',
          bucket_folder: 'bucket_folder',
          bucket_name: 'bucket_name',
          compression_type: 'compression_type',
          encryption_mode: 'encryption_mode',
          server_side_encryption_kms_key_id: 'server_side_encryption_kms_key_id',
          data_format: 'data_format',
          encoding_type: 'encoding_type',
          dict_page_size_limit: 1,
          row_group_length: 1,
          data_page_size: 1,
          parquet_version: 'parquet_version',
          enable_statistics: false,
          include_op_for_full_load: false,
          cdc_inserts_only: false,
          timestamp_column_name: 'timestamp_column_name',
          parquet_timestamp_in_millisecond: false,
          cdc_inserts_and_updates: false,
          date_partition_enabled: false,
          date_partition_sequence: 'date_partition_sequence',
          date_partition_delimiter: 'date_partition_delimiter',
          use_csv_no_sup_value: false,
          csv_no_sup_value: 'csv_no_sup_value',
          preserve_transactions: false,
          cdc_path: 'cdc_path',
          use_task_start_time_for_full_load_timestamp: false,
          canned_acl_for_objects: 'canned_acl_for_objects',
          add_column_name: false,
          cdc_max_batch_interval: 1,
          cdc_min_file_size: 1,
          csv_null_value: 'csv_null_value',
          ignore_header_rows: 1,
          max_file_size: 1,
          rfc4180: false,
          date_partition_timezone: 'date_partition_timezone',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Settings.new
        data = {}
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['ExternalTableDefinition'] = stub[:external_table_definition] unless stub[:external_table_definition].nil?
        data['CsvRowDelimiter'] = stub[:csv_row_delimiter] unless stub[:csv_row_delimiter].nil?
        data['CsvDelimiter'] = stub[:csv_delimiter] unless stub[:csv_delimiter].nil?
        data['BucketFolder'] = stub[:bucket_folder] unless stub[:bucket_folder].nil?
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['EncryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['ServerSideEncryptionKmsKeyId'] = stub[:server_side_encryption_kms_key_id] unless stub[:server_side_encryption_kms_key_id].nil?
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['EncodingType'] = stub[:encoding_type] unless stub[:encoding_type].nil?
        data['DictPageSizeLimit'] = stub[:dict_page_size_limit] unless stub[:dict_page_size_limit].nil?
        data['RowGroupLength'] = stub[:row_group_length] unless stub[:row_group_length].nil?
        data['DataPageSize'] = stub[:data_page_size] unless stub[:data_page_size].nil?
        data['ParquetVersion'] = stub[:parquet_version] unless stub[:parquet_version].nil?
        data['EnableStatistics'] = stub[:enable_statistics] unless stub[:enable_statistics].nil?
        data['IncludeOpForFullLoad'] = stub[:include_op_for_full_load] unless stub[:include_op_for_full_load].nil?
        data['CdcInsertsOnly'] = stub[:cdc_inserts_only] unless stub[:cdc_inserts_only].nil?
        data['TimestampColumnName'] = stub[:timestamp_column_name] unless stub[:timestamp_column_name].nil?
        data['ParquetTimestampInMillisecond'] = stub[:parquet_timestamp_in_millisecond] unless stub[:parquet_timestamp_in_millisecond].nil?
        data['CdcInsertsAndUpdates'] = stub[:cdc_inserts_and_updates] unless stub[:cdc_inserts_and_updates].nil?
        data['DatePartitionEnabled'] = stub[:date_partition_enabled] unless stub[:date_partition_enabled].nil?
        data['DatePartitionSequence'] = stub[:date_partition_sequence] unless stub[:date_partition_sequence].nil?
        data['DatePartitionDelimiter'] = stub[:date_partition_delimiter] unless stub[:date_partition_delimiter].nil?
        data['UseCsvNoSupValue'] = stub[:use_csv_no_sup_value] unless stub[:use_csv_no_sup_value].nil?
        data['CsvNoSupValue'] = stub[:csv_no_sup_value] unless stub[:csv_no_sup_value].nil?
        data['PreserveTransactions'] = stub[:preserve_transactions] unless stub[:preserve_transactions].nil?
        data['CdcPath'] = stub[:cdc_path] unless stub[:cdc_path].nil?
        data['UseTaskStartTimeForFullLoadTimestamp'] = stub[:use_task_start_time_for_full_load_timestamp] unless stub[:use_task_start_time_for_full_load_timestamp].nil?
        data['CannedAclForObjects'] = stub[:canned_acl_for_objects] unless stub[:canned_acl_for_objects].nil?
        data['AddColumnName'] = stub[:add_column_name] unless stub[:add_column_name].nil?
        data['CdcMaxBatchInterval'] = stub[:cdc_max_batch_interval] unless stub[:cdc_max_batch_interval].nil?
        data['CdcMinFileSize'] = stub[:cdc_min_file_size] unless stub[:cdc_min_file_size].nil?
        data['CsvNullValue'] = stub[:csv_null_value] unless stub[:csv_null_value].nil?
        data['IgnoreHeaderRows'] = stub[:ignore_header_rows] unless stub[:ignore_header_rows].nil?
        data['MaxFileSize'] = stub[:max_file_size] unless stub[:max_file_size].nil?
        data['Rfc4180'] = stub[:rfc4180] unless stub[:rfc4180].nil?
        data['DatePartitionTimezone'] = stub[:date_partition_timezone] unless stub[:date_partition_timezone].nil?
        data
      end
    end

    # Structure Stubber for DynamoDbSettings
    class DynamoDbSettings
      def self.default(visited=[])
        return nil if visited.include?('DynamoDbSettings')
        visited = visited + ['DynamoDbSettings']
        {
          service_access_role_arn: 'service_access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDbSettings.new
        data = {}
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateEventSubscription
    class CreateEventSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventSubscription'] = EventSubscription.stub(stub[:event_subscription]) unless stub[:event_subscription].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EventSubscription
    class EventSubscription
      def self.default(visited=[])
        return nil if visited.include?('EventSubscription')
        visited = visited + ['EventSubscription']
        {
          customer_aws_id: 'customer_aws_id',
          cust_subscription_id: 'cust_subscription_id',
          sns_topic_arn: 'sns_topic_arn',
          status: 'status',
          subscription_creation_time: 'subscription_creation_time',
          source_type: 'source_type',
          source_ids_list: SourceIdsList.default(visited),
          event_categories_list: EventCategoriesList.default(visited),
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSubscription.new
        data = {}
        data['CustomerAwsId'] = stub[:customer_aws_id] unless stub[:customer_aws_id].nil?
        data['CustSubscriptionId'] = stub[:cust_subscription_id] unless stub[:cust_subscription_id].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SubscriptionCreationTime'] = stub[:subscription_creation_time] unless stub[:subscription_creation_time].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['SourceIdsList'] = SourceIdsList.stub(stub[:source_ids_list]) unless stub[:source_ids_list].nil?
        data['EventCategoriesList'] = EventCategoriesList.stub(stub[:event_categories_list]) unless stub[:event_categories_list].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # List Stubber for EventCategoriesList
    class EventCategoriesList
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesList')
        visited = visited + ['EventCategoriesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SourceIdsList
    class SourceIdsList
      def self.default(visited=[])
        return nil if visited.include?('SourceIdsList')
        visited = visited + ['SourceIdsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateFleetAdvisorCollector
    class CreateFleetAdvisorCollector
      def self.default(visited=[])
        {
          collector_referenced_id: 'collector_referenced_id',
          collector_name: 'collector_name',
          description: 'description',
          service_access_role_arn: 'service_access_role_arn',
          s3_bucket_name: 's3_bucket_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CollectorReferencedId'] = stub[:collector_referenced_id] unless stub[:collector_referenced_id].nil?
        data['CollectorName'] = stub[:collector_name] unless stub[:collector_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReplicationInstance
    class CreateReplicationInstance
      def self.default(visited=[])
        {
          replication_instance: ReplicationInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationInstance'] = ReplicationInstance.stub(stub[:replication_instance]) unless stub[:replication_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReplicationInstance
    class ReplicationInstance
      def self.default(visited=[])
        return nil if visited.include?('ReplicationInstance')
        visited = visited + ['ReplicationInstance']
        {
          replication_instance_identifier: 'replication_instance_identifier',
          replication_instance_class: 'replication_instance_class',
          replication_instance_status: 'replication_instance_status',
          allocated_storage: 1,
          instance_create_time: Time.now,
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          availability_zone: 'availability_zone',
          replication_subnet_group: ReplicationSubnetGroup.default(visited),
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_modified_values: ReplicationPendingModifiedValues.default(visited),
          multi_az: false,
          engine_version: 'engine_version',
          auto_minor_version_upgrade: false,
          kms_key_id: 'kms_key_id',
          replication_instance_arn: 'replication_instance_arn',
          replication_instance_public_ip_address: 'replication_instance_public_ip_address',
          replication_instance_private_ip_address: 'replication_instance_private_ip_address',
          replication_instance_public_ip_addresses: ReplicationInstancePublicIpAddressList.default(visited),
          replication_instance_private_ip_addresses: ReplicationInstancePrivateIpAddressList.default(visited),
          publicly_accessible: false,
          secondary_availability_zone: 'secondary_availability_zone',
          free_until: Time.now,
          dns_name_servers: 'dns_name_servers',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationInstance.new
        data = {}
        data['ReplicationInstanceIdentifier'] = stub[:replication_instance_identifier] unless stub[:replication_instance_identifier].nil?
        data['ReplicationInstanceClass'] = stub[:replication_instance_class] unless stub[:replication_instance_class].nil?
        data['ReplicationInstanceStatus'] = stub[:replication_instance_status] unless stub[:replication_instance_status].nil?
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['InstanceCreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:instance_create_time]).to_i unless stub[:instance_create_time].nil?
        data['VpcSecurityGroups'] = VpcSecurityGroupMembershipList.stub(stub[:vpc_security_groups]) unless stub[:vpc_security_groups].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['ReplicationSubnetGroup'] = ReplicationSubnetGroup.stub(stub[:replication_subnet_group]) unless stub[:replication_subnet_group].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['PendingModifiedValues'] = ReplicationPendingModifiedValues.stub(stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        data['MultiAZ'] = stub[:multi_az] unless stub[:multi_az].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['AutoMinorVersionUpgrade'] = stub[:auto_minor_version_upgrade] unless stub[:auto_minor_version_upgrade].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ReplicationInstanceArn'] = stub[:replication_instance_arn] unless stub[:replication_instance_arn].nil?
        data['ReplicationInstancePublicIpAddress'] = stub[:replication_instance_public_ip_address] unless stub[:replication_instance_public_ip_address].nil?
        data['ReplicationInstancePrivateIpAddress'] = stub[:replication_instance_private_ip_address] unless stub[:replication_instance_private_ip_address].nil?
        data['ReplicationInstancePublicIpAddresses'] = ReplicationInstancePublicIpAddressList.stub(stub[:replication_instance_public_ip_addresses]) unless stub[:replication_instance_public_ip_addresses].nil?
        data['ReplicationInstancePrivateIpAddresses'] = ReplicationInstancePrivateIpAddressList.stub(stub[:replication_instance_private_ip_addresses]) unless stub[:replication_instance_private_ip_addresses].nil?
        data['PubliclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['SecondaryAvailabilityZone'] = stub[:secondary_availability_zone] unless stub[:secondary_availability_zone].nil?
        data['FreeUntil'] = Hearth::TimeHelper.to_epoch_seconds(stub[:free_until]).to_i unless stub[:free_until].nil?
        data['DnsNameServers'] = stub[:dns_name_servers] unless stub[:dns_name_servers].nil?
        data
      end
    end

    # List Stubber for ReplicationInstancePrivateIpAddressList
    class ReplicationInstancePrivateIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationInstancePrivateIpAddressList')
        visited = visited + ['ReplicationInstancePrivateIpAddressList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ReplicationInstancePublicIpAddressList
    class ReplicationInstancePublicIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationInstancePublicIpAddressList')
        visited = visited + ['ReplicationInstancePublicIpAddressList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationPendingModifiedValues
    class ReplicationPendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('ReplicationPendingModifiedValues')
        visited = visited + ['ReplicationPendingModifiedValues']
        {
          replication_instance_class: 'replication_instance_class',
          allocated_storage: 1,
          multi_az: false,
          engine_version: 'engine_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationPendingModifiedValues.new
        data = {}
        data['ReplicationInstanceClass'] = stub[:replication_instance_class] unless stub[:replication_instance_class].nil?
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['MultiAZ'] = stub[:multi_az] unless stub[:multi_az].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data
      end
    end

    # Structure Stubber for ReplicationSubnetGroup
    class ReplicationSubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('ReplicationSubnetGroup')
        visited = visited + ['ReplicationSubnetGroup']
        {
          replication_subnet_group_identifier: 'replication_subnet_group_identifier',
          replication_subnet_group_description: 'replication_subnet_group_description',
          vpc_id: 'vpc_id',
          subnet_group_status: 'subnet_group_status',
          subnets: SubnetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationSubnetGroup.new
        data = {}
        data['ReplicationSubnetGroupIdentifier'] = stub[:replication_subnet_group_identifier] unless stub[:replication_subnet_group_identifier].nil?
        data['ReplicationSubnetGroupDescription'] = stub[:replication_subnet_group_description] unless stub[:replication_subnet_group_description].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetGroupStatus'] = stub[:subnet_group_status] unless stub[:subnet_group_status].nil?
        data['Subnets'] = SubnetList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
        [
          Subnet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Subnet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Subnet
    class Subnet
      def self.default(visited=[])
        return nil if visited.include?('Subnet')
        visited = visited + ['Subnet']
        {
          subnet_identifier: 'subnet_identifier',
          subnet_availability_zone: AvailabilityZone.default(visited),
          subnet_status: 'subnet_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subnet.new
        data = {}
        data['SubnetIdentifier'] = stub[:subnet_identifier] unless stub[:subnet_identifier].nil?
        data['SubnetAvailabilityZone'] = AvailabilityZone.stub(stub[:subnet_availability_zone]) unless stub[:subnet_availability_zone].nil?
        data['SubnetStatus'] = stub[:subnet_status] unless stub[:subnet_status].nil?
        data
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailabilityZone.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for VpcSecurityGroupMembershipList
    class VpcSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembershipList')
        visited = visited + ['VpcSecurityGroupMembershipList']
        [
          VpcSecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VpcSecurityGroupMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VpcSecurityGroupMembership
    class VpcSecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembership')
        visited = visited + ['VpcSecurityGroupMembership']
        {
          vpc_security_group_id: 'vpc_security_group_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcSecurityGroupMembership.new
        data = {}
        data['VpcSecurityGroupId'] = stub[:vpc_security_group_id] unless stub[:vpc_security_group_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateReplicationSubnetGroup
    class CreateReplicationSubnetGroup
      def self.default(visited=[])
        {
          replication_subnet_group: ReplicationSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationSubnetGroup'] = ReplicationSubnetGroup.stub(stub[:replication_subnet_group]) unless stub[:replication_subnet_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReplicationTask
    class CreateReplicationTask
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReplicationTask
    class ReplicationTask
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTask')
        visited = visited + ['ReplicationTask']
        {
          replication_task_identifier: 'replication_task_identifier',
          source_endpoint_arn: 'source_endpoint_arn',
          target_endpoint_arn: 'target_endpoint_arn',
          replication_instance_arn: 'replication_instance_arn',
          migration_type: 'migration_type',
          table_mappings: 'table_mappings',
          replication_task_settings: 'replication_task_settings',
          status: 'status',
          last_failure_message: 'last_failure_message',
          stop_reason: 'stop_reason',
          replication_task_creation_date: Time.now,
          replication_task_start_date: Time.now,
          cdc_start_position: 'cdc_start_position',
          cdc_stop_position: 'cdc_stop_position',
          recovery_checkpoint: 'recovery_checkpoint',
          replication_task_arn: 'replication_task_arn',
          replication_task_stats: ReplicationTaskStats.default(visited),
          task_data: 'task_data',
          target_replication_instance_arn: 'target_replication_instance_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationTask.new
        data = {}
        data['ReplicationTaskIdentifier'] = stub[:replication_task_identifier] unless stub[:replication_task_identifier].nil?
        data['SourceEndpointArn'] = stub[:source_endpoint_arn] unless stub[:source_endpoint_arn].nil?
        data['TargetEndpointArn'] = stub[:target_endpoint_arn] unless stub[:target_endpoint_arn].nil?
        data['ReplicationInstanceArn'] = stub[:replication_instance_arn] unless stub[:replication_instance_arn].nil?
        data['MigrationType'] = stub[:migration_type] unless stub[:migration_type].nil?
        data['TableMappings'] = stub[:table_mappings] unless stub[:table_mappings].nil?
        data['ReplicationTaskSettings'] = stub[:replication_task_settings] unless stub[:replication_task_settings].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastFailureMessage'] = stub[:last_failure_message] unless stub[:last_failure_message].nil?
        data['StopReason'] = stub[:stop_reason] unless stub[:stop_reason].nil?
        data['ReplicationTaskCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replication_task_creation_date]).to_i unless stub[:replication_task_creation_date].nil?
        data['ReplicationTaskStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replication_task_start_date]).to_i unless stub[:replication_task_start_date].nil?
        data['CdcStartPosition'] = stub[:cdc_start_position] unless stub[:cdc_start_position].nil?
        data['CdcStopPosition'] = stub[:cdc_stop_position] unless stub[:cdc_stop_position].nil?
        data['RecoveryCheckpoint'] = stub[:recovery_checkpoint] unless stub[:recovery_checkpoint].nil?
        data['ReplicationTaskArn'] = stub[:replication_task_arn] unless stub[:replication_task_arn].nil?
        data['ReplicationTaskStats'] = ReplicationTaskStats.stub(stub[:replication_task_stats]) unless stub[:replication_task_stats].nil?
        data['TaskData'] = stub[:task_data] unless stub[:task_data].nil?
        data['TargetReplicationInstanceArn'] = stub[:target_replication_instance_arn] unless stub[:target_replication_instance_arn].nil?
        data
      end
    end

    # Structure Stubber for ReplicationTaskStats
    class ReplicationTaskStats
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskStats')
        visited = visited + ['ReplicationTaskStats']
        {
          full_load_progress_percent: 1,
          elapsed_time_millis: 1,
          tables_loaded: 1,
          tables_loading: 1,
          tables_queued: 1,
          tables_errored: 1,
          fresh_start_date: Time.now,
          start_date: Time.now,
          stop_date: Time.now,
          full_load_start_date: Time.now,
          full_load_finish_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationTaskStats.new
        data = {}
        data['FullLoadProgressPercent'] = stub[:full_load_progress_percent] unless stub[:full_load_progress_percent].nil?
        data['ElapsedTimeMillis'] = stub[:elapsed_time_millis] unless stub[:elapsed_time_millis].nil?
        data['TablesLoaded'] = stub[:tables_loaded] unless stub[:tables_loaded].nil?
        data['TablesLoading'] = stub[:tables_loading] unless stub[:tables_loading].nil?
        data['TablesQueued'] = stub[:tables_queued] unless stub[:tables_queued].nil?
        data['TablesErrored'] = stub[:tables_errored] unless stub[:tables_errored].nil?
        data['FreshStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:fresh_start_date]).to_i unless stub[:fresh_start_date].nil?
        data['StartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['StopDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_date]).to_i unless stub[:stop_date].nil?
        data['FullLoadStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:full_load_start_date]).to_i unless stub[:full_load_start_date].nil?
        data['FullLoadFinishDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:full_load_finish_date]).to_i unless stub[:full_load_finish_date].nil?
        data
      end
    end

    # Operation Stubber for DeleteCertificate
    class DeleteCertificate
      def self.default(visited=[])
        {
          certificate: Certificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = Certificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          certificate_identifier: 'certificate_identifier',
          certificate_creation_date: Time.now,
          certificate_pem: 'certificate_pem',
          certificate_wallet: 'certificate_wallet',
          certificate_arn: 'certificate_arn',
          certificate_owner: 'certificate_owner',
          valid_from_date: Time.now,
          valid_to_date: Time.now,
          signing_algorithm: 'signing_algorithm',
          key_length: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['CertificateIdentifier'] = stub[:certificate_identifier] unless stub[:certificate_identifier].nil?
        data['CertificateCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:certificate_creation_date]).to_i unless stub[:certificate_creation_date].nil?
        data['CertificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        data['CertificateWallet'] = ::Base64::encode64(stub[:certificate_wallet]) unless stub[:certificate_wallet].nil?
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['CertificateOwner'] = stub[:certificate_owner] unless stub[:certificate_owner].nil?
        data['ValidFromDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:valid_from_date]).to_i unless stub[:valid_from_date].nil?
        data['ValidToDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:valid_to_date]).to_i unless stub[:valid_to_date].nil?
        data['SigningAlgorithm'] = stub[:signing_algorithm] unless stub[:signing_algorithm].nil?
        data['KeyLength'] = stub[:key_length] unless stub[:key_length].nil?
        data
      end
    end

    # Operation Stubber for DeleteConnection
    class DeleteConnection
      def self.default(visited=[])
        {
          connection: Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connection'] = Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Connection
    class Connection
      def self.default(visited=[])
        return nil if visited.include?('Connection')
        visited = visited + ['Connection']
        {
          replication_instance_arn: 'replication_instance_arn',
          endpoint_arn: 'endpoint_arn',
          status: 'status',
          last_failure_message: 'last_failure_message',
          endpoint_identifier: 'endpoint_identifier',
          replication_instance_identifier: 'replication_instance_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['ReplicationInstanceArn'] = stub[:replication_instance_arn] unless stub[:replication_instance_arn].nil?
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastFailureMessage'] = stub[:last_failure_message] unless stub[:last_failure_message].nil?
        data['EndpointIdentifier'] = stub[:endpoint_identifier] unless stub[:endpoint_identifier].nil?
        data['ReplicationInstanceIdentifier'] = stub[:replication_instance_identifier] unless stub[:replication_instance_identifier].nil?
        data
      end
    end

    # Operation Stubber for DeleteEndpoint
    class DeleteEndpoint
      def self.default(visited=[])
        {
          endpoint: Endpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoint'] = Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventSubscription
    class DeleteEventSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventSubscription'] = EventSubscription.stub(stub[:event_subscription]) unless stub[:event_subscription].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFleetAdvisorCollector
    class DeleteFleetAdvisorCollector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFleetAdvisorDatabases
    class DeleteFleetAdvisorDatabases
      def self.default(visited=[])
        {
          database_ids: StringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatabaseIds'] = StringList.stub(stub[:database_ids]) unless stub[:database_ids].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteReplicationInstance
    class DeleteReplicationInstance
      def self.default(visited=[])
        {
          replication_instance: ReplicationInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationInstance'] = ReplicationInstance.stub(stub[:replication_instance]) unless stub[:replication_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReplicationSubnetGroup
    class DeleteReplicationSubnetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReplicationTask
    class DeleteReplicationTask
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReplicationTaskAssessmentRun
    class DeleteReplicationTaskAssessmentRun
      def self.default(visited=[])
        {
          replication_task_assessment_run: ReplicationTaskAssessmentRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTaskAssessmentRun'] = ReplicationTaskAssessmentRun.stub(stub[:replication_task_assessment_run]) unless stub[:replication_task_assessment_run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.default(visited=[])
        {
          account_quotas: AccountQuotaList.default(visited),
          unique_account_identifier: 'unique_account_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountQuotas'] = AccountQuotaList.stub(stub[:account_quotas]) unless stub[:account_quotas].nil?
        data['UniqueAccountIdentifier'] = stub[:unique_account_identifier] unless stub[:unique_account_identifier].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountQuotaList
    class AccountQuotaList
      def self.default(visited=[])
        return nil if visited.include?('AccountQuotaList')
        visited = visited + ['AccountQuotaList']
        [
          AccountQuota.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccountQuota.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountQuota
    class AccountQuota
      def self.default(visited=[])
        return nil if visited.include?('AccountQuota')
        visited = visited + ['AccountQuota']
        {
          account_quota_name: 'account_quota_name',
          used: 1,
          max: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountQuota.new
        data = {}
        data['AccountQuotaName'] = stub[:account_quota_name] unless stub[:account_quota_name].nil?
        data['Used'] = stub[:used] unless stub[:used].nil?
        data['Max'] = stub[:max] unless stub[:max].nil?
        data
      end
    end

    # Operation Stubber for DescribeApplicableIndividualAssessments
    class DescribeApplicableIndividualAssessments
      def self.default(visited=[])
        {
          individual_assessment_names: IndividualAssessmentNameList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IndividualAssessmentNames'] = IndividualAssessmentNameList.stub(stub[:individual_assessment_names]) unless stub[:individual_assessment_names].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IndividualAssessmentNameList
    class IndividualAssessmentNameList
      def self.default(visited=[])
        return nil if visited.include?('IndividualAssessmentNameList')
        visited = visited + ['IndividualAssessmentNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeCertificates
    class DescribeCertificates
      def self.default(visited=[])
        {
          marker: 'marker',
          certificates: CertificateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Certificates'] = CertificateList.stub(stub[:certificates]) unless stub[:certificates].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CertificateList
    class CertificateList
      def self.default(visited=[])
        return nil if visited.include?('CertificateList')
        visited = visited + ['CertificateList']
        [
          Certificate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Certificate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeConnections
    class DescribeConnections
      def self.default(visited=[])
        {
          marker: 'marker',
          connections: ConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionList
    class ConnectionList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionList')
        visited = visited + ['ConnectionList']
        [
          Connection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Connection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEndpointSettings
    class DescribeEndpointSettings
      def self.default(visited=[])
        {
          marker: 'marker',
          endpoint_settings: EndpointSettingsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['EndpointSettings'] = EndpointSettingsList.stub(stub[:endpoint_settings]) unless stub[:endpoint_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointSettingsList
    class EndpointSettingsList
      def self.default(visited=[])
        return nil if visited.include?('EndpointSettingsList')
        visited = visited + ['EndpointSettingsList']
        [
          EndpointSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EndpointSetting
    class EndpointSetting
      def self.default(visited=[])
        return nil if visited.include?('EndpointSetting')
        visited = visited + ['EndpointSetting']
        {
          name: 'name',
          type: 'type',
          enum_values: EndpointSettingEnumValues.default(visited),
          sensitive: false,
          units: 'units',
          applicability: 'applicability',
          int_value_min: 1,
          int_value_max: 1,
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointSetting.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['EnumValues'] = EndpointSettingEnumValues.stub(stub[:enum_values]) unless stub[:enum_values].nil?
        data['Sensitive'] = stub[:sensitive] unless stub[:sensitive].nil?
        data['Units'] = stub[:units] unless stub[:units].nil?
        data['Applicability'] = stub[:applicability] unless stub[:applicability].nil?
        data['IntValueMin'] = stub[:int_value_min] unless stub[:int_value_min].nil?
        data['IntValueMax'] = stub[:int_value_max] unless stub[:int_value_max].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # List Stubber for EndpointSettingEnumValues
    class EndpointSettingEnumValues
      def self.default(visited=[])
        return nil if visited.include?('EndpointSettingEnumValues')
        visited = visited + ['EndpointSettingEnumValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEndpointTypes
    class DescribeEndpointTypes
      def self.default(visited=[])
        {
          marker: 'marker',
          supported_endpoint_types: SupportedEndpointTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['SupportedEndpointTypes'] = SupportedEndpointTypeList.stub(stub[:supported_endpoint_types]) unless stub[:supported_endpoint_types].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SupportedEndpointTypeList
    class SupportedEndpointTypeList
      def self.default(visited=[])
        return nil if visited.include?('SupportedEndpointTypeList')
        visited = visited + ['SupportedEndpointTypeList']
        [
          SupportedEndpointType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SupportedEndpointType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SupportedEndpointType
    class SupportedEndpointType
      def self.default(visited=[])
        return nil if visited.include?('SupportedEndpointType')
        visited = visited + ['SupportedEndpointType']
        {
          engine_name: 'engine_name',
          supports_cdc: false,
          endpoint_type: 'endpoint_type',
          replication_instance_engine_minimum_version: 'replication_instance_engine_minimum_version',
          engine_display_name: 'engine_display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SupportedEndpointType.new
        data = {}
        data['EngineName'] = stub[:engine_name] unless stub[:engine_name].nil?
        data['SupportsCDC'] = stub[:supports_cdc] unless stub[:supports_cdc].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['ReplicationInstanceEngineMinimumVersion'] = stub[:replication_instance_engine_minimum_version] unless stub[:replication_instance_engine_minimum_version].nil?
        data['EngineDisplayName'] = stub[:engine_display_name] unless stub[:engine_display_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeEndpoints
    class DescribeEndpoints
      def self.default(visited=[])
        {
          marker: 'marker',
          endpoints: EndpointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Endpoints'] = EndpointList.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointList
    class EndpointList
      def self.default(visited=[])
        return nil if visited.include?('EndpointList')
        visited = visited + ['EndpointList']
        [
          Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Endpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEventCategories
    class DescribeEventCategories
      def self.default(visited=[])
        {
          event_category_group_list: EventCategoryGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventCategoryGroupList'] = EventCategoryGroupList.stub(stub[:event_category_group_list]) unless stub[:event_category_group_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventCategoryGroupList
    class EventCategoryGroupList
      def self.default(visited=[])
        return nil if visited.include?('EventCategoryGroupList')
        visited = visited + ['EventCategoryGroupList']
        [
          EventCategoryGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventCategoryGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventCategoryGroup
    class EventCategoryGroup
      def self.default(visited=[])
        return nil if visited.include?('EventCategoryGroup')
        visited = visited + ['EventCategoryGroup']
        {
          source_type: 'source_type',
          event_categories: EventCategoriesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventCategoryGroup.new
        data = {}
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['EventCategories'] = EventCategoriesList.stub(stub[:event_categories]) unless stub[:event_categories].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.default(visited=[])
        {
          marker: 'marker',
          event_subscriptions_list: EventSubscriptionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['EventSubscriptionsList'] = EventSubscriptionsList.stub(stub[:event_subscriptions_list]) unless stub[:event_subscriptions_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventSubscriptionsList
    class EventSubscriptionsList
      def self.default(visited=[])
        return nil if visited.include?('EventSubscriptionsList')
        visited = visited + ['EventSubscriptionsList']
        [
          EventSubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventSubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          marker: 'marker',
          events: EventList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Events'] = EventList.stub(stub[:events]) unless stub[:events].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
        [
          Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          source_identifier: 'source_identifier',
          source_type: 'source_type',
          message: 'message',
          event_categories: EventCategoriesList.default(visited),
          date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['SourceIdentifier'] = stub[:source_identifier] unless stub[:source_identifier].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['EventCategories'] = EventCategoriesList.stub(stub[:event_categories]) unless stub[:event_categories].nil?
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetAdvisorCollectors
    class DescribeFleetAdvisorCollectors
      def self.default(visited=[])
        {
          collectors: CollectorResponses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Collectors'] = CollectorResponses.stub(stub[:collectors]) unless stub[:collectors].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CollectorResponses
    class CollectorResponses
      def self.default(visited=[])
        return nil if visited.include?('CollectorResponses')
        visited = visited + ['CollectorResponses']
        [
          CollectorResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CollectorResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CollectorResponse
    class CollectorResponse
      def self.default(visited=[])
        return nil if visited.include?('CollectorResponse')
        visited = visited + ['CollectorResponse']
        {
          collector_referenced_id: 'collector_referenced_id',
          collector_name: 'collector_name',
          collector_version: 'collector_version',
          version_status: 'version_status',
          description: 'description',
          s3_bucket_name: 's3_bucket_name',
          service_access_role_arn: 'service_access_role_arn',
          collector_health_check: CollectorHealthCheck.default(visited),
          last_data_received: 'last_data_received',
          registered_date: 'registered_date',
          created_date: 'created_date',
          modified_date: 'modified_date',
          inventory_data: InventoryData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CollectorResponse.new
        data = {}
        data['CollectorReferencedId'] = stub[:collector_referenced_id] unless stub[:collector_referenced_id].nil?
        data['CollectorName'] = stub[:collector_name] unless stub[:collector_name].nil?
        data['CollectorVersion'] = stub[:collector_version] unless stub[:collector_version].nil?
        data['VersionStatus'] = stub[:version_status] unless stub[:version_status].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['ServiceAccessRoleArn'] = stub[:service_access_role_arn] unless stub[:service_access_role_arn].nil?
        data['CollectorHealthCheck'] = CollectorHealthCheck.stub(stub[:collector_health_check]) unless stub[:collector_health_check].nil?
        data['LastDataReceived'] = stub[:last_data_received] unless stub[:last_data_received].nil?
        data['RegisteredDate'] = stub[:registered_date] unless stub[:registered_date].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['ModifiedDate'] = stub[:modified_date] unless stub[:modified_date].nil?
        data['InventoryData'] = InventoryData.stub(stub[:inventory_data]) unless stub[:inventory_data].nil?
        data
      end
    end

    # Structure Stubber for InventoryData
    class InventoryData
      def self.default(visited=[])
        return nil if visited.include?('InventoryData')
        visited = visited + ['InventoryData']
        {
          number_of_databases: 1,
          number_of_schemas: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryData.new
        data = {}
        data['NumberOfDatabases'] = stub[:number_of_databases] unless stub[:number_of_databases].nil?
        data['NumberOfSchemas'] = stub[:number_of_schemas] unless stub[:number_of_schemas].nil?
        data
      end
    end

    # Structure Stubber for CollectorHealthCheck
    class CollectorHealthCheck
      def self.default(visited=[])
        return nil if visited.include?('CollectorHealthCheck')
        visited = visited + ['CollectorHealthCheck']
        {
          collector_status: 'collector_status',
          local_collector_s3_access: false,
          web_collector_s3_access: false,
          web_collector_granted_role_based_access: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CollectorHealthCheck.new
        data = {}
        data['CollectorStatus'] = stub[:collector_status] unless stub[:collector_status].nil?
        data['LocalCollectorS3Access'] = stub[:local_collector_s3_access] unless stub[:local_collector_s3_access].nil?
        data['WebCollectorS3Access'] = stub[:web_collector_s3_access] unless stub[:web_collector_s3_access].nil?
        data['WebCollectorGrantedRoleBasedAccess'] = stub[:web_collector_granted_role_based_access] unless stub[:web_collector_granted_role_based_access].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetAdvisorDatabases
    class DescribeFleetAdvisorDatabases
      def self.default(visited=[])
        {
          databases: DatabaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Databases'] = DatabaseList.stub(stub[:databases]) unless stub[:databases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatabaseList
    class DatabaseList
      def self.default(visited=[])
        return nil if visited.include?('DatabaseList')
        visited = visited + ['DatabaseList']
        [
          DatabaseResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatabaseResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatabaseResponse
    class DatabaseResponse
      def self.default(visited=[])
        return nil if visited.include?('DatabaseResponse')
        visited = visited + ['DatabaseResponse']
        {
          database_id: 'database_id',
          database_name: 'database_name',
          ip_address: 'ip_address',
          number_of_schemas: 1,
          server: ServerShortInfoResponse.default(visited),
          software_details: DatabaseInstanceSoftwareDetailsResponse.default(visited),
          collectors: CollectorsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseResponse.new
        data = {}
        data['DatabaseId'] = stub[:database_id] unless stub[:database_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['NumberOfSchemas'] = stub[:number_of_schemas] unless stub[:number_of_schemas].nil?
        data['Server'] = ServerShortInfoResponse.stub(stub[:server]) unless stub[:server].nil?
        data['SoftwareDetails'] = DatabaseInstanceSoftwareDetailsResponse.stub(stub[:software_details]) unless stub[:software_details].nil?
        data['Collectors'] = CollectorsList.stub(stub[:collectors]) unless stub[:collectors].nil?
        data
      end
    end

    # List Stubber for CollectorsList
    class CollectorsList
      def self.default(visited=[])
        return nil if visited.include?('CollectorsList')
        visited = visited + ['CollectorsList']
        [
          CollectorShortInfoResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CollectorShortInfoResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CollectorShortInfoResponse
    class CollectorShortInfoResponse
      def self.default(visited=[])
        return nil if visited.include?('CollectorShortInfoResponse')
        visited = visited + ['CollectorShortInfoResponse']
        {
          collector_referenced_id: 'collector_referenced_id',
          collector_name: 'collector_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CollectorShortInfoResponse.new
        data = {}
        data['CollectorReferencedId'] = stub[:collector_referenced_id] unless stub[:collector_referenced_id].nil?
        data['CollectorName'] = stub[:collector_name] unless stub[:collector_name].nil?
        data
      end
    end

    # Structure Stubber for DatabaseInstanceSoftwareDetailsResponse
    class DatabaseInstanceSoftwareDetailsResponse
      def self.default(visited=[])
        return nil if visited.include?('DatabaseInstanceSoftwareDetailsResponse')
        visited = visited + ['DatabaseInstanceSoftwareDetailsResponse']
        {
          engine: 'engine',
          engine_version: 'engine_version',
          engine_edition: 'engine_edition',
          service_pack: 'service_pack',
          support_level: 'support_level',
          os_architecture: 1,
          tooltip: 'tooltip',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseInstanceSoftwareDetailsResponse.new
        data = {}
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['EngineEdition'] = stub[:engine_edition] unless stub[:engine_edition].nil?
        data['ServicePack'] = stub[:service_pack] unless stub[:service_pack].nil?
        data['SupportLevel'] = stub[:support_level] unless stub[:support_level].nil?
        data['OsArchitecture'] = stub[:os_architecture] unless stub[:os_architecture].nil?
        data['Tooltip'] = stub[:tooltip] unless stub[:tooltip].nil?
        data
      end
    end

    # Structure Stubber for ServerShortInfoResponse
    class ServerShortInfoResponse
      def self.default(visited=[])
        return nil if visited.include?('ServerShortInfoResponse')
        visited = visited + ['ServerShortInfoResponse']
        {
          server_id: 'server_id',
          ip_address: 'ip_address',
          server_name: 'server_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerShortInfoResponse.new
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetAdvisorLsaAnalysis
    class DescribeFleetAdvisorLsaAnalysis
      def self.default(visited=[])
        {
          analysis: FleetAdvisorLsaAnalysisResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Analysis'] = FleetAdvisorLsaAnalysisResponseList.stub(stub[:analysis]) unless stub[:analysis].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetAdvisorLsaAnalysisResponseList
    class FleetAdvisorLsaAnalysisResponseList
      def self.default(visited=[])
        return nil if visited.include?('FleetAdvisorLsaAnalysisResponseList')
        visited = visited + ['FleetAdvisorLsaAnalysisResponseList']
        [
          FleetAdvisorLsaAnalysisResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FleetAdvisorLsaAnalysisResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FleetAdvisorLsaAnalysisResponse
    class FleetAdvisorLsaAnalysisResponse
      def self.default(visited=[])
        return nil if visited.include?('FleetAdvisorLsaAnalysisResponse')
        visited = visited + ['FleetAdvisorLsaAnalysisResponse']
        {
          lsa_analysis_id: 'lsa_analysis_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetAdvisorLsaAnalysisResponse.new
        data = {}
        data['LsaAnalysisId'] = stub[:lsa_analysis_id] unless stub[:lsa_analysis_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetAdvisorSchemaObjectSummary
    class DescribeFleetAdvisorSchemaObjectSummary
      def self.default(visited=[])
        {
          fleet_advisor_schema_objects: FleetAdvisorSchemaObjectList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetAdvisorSchemaObjects'] = FleetAdvisorSchemaObjectList.stub(stub[:fleet_advisor_schema_objects]) unless stub[:fleet_advisor_schema_objects].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetAdvisorSchemaObjectList
    class FleetAdvisorSchemaObjectList
      def self.default(visited=[])
        return nil if visited.include?('FleetAdvisorSchemaObjectList')
        visited = visited + ['FleetAdvisorSchemaObjectList']
        [
          FleetAdvisorSchemaObjectResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FleetAdvisorSchemaObjectResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FleetAdvisorSchemaObjectResponse
    class FleetAdvisorSchemaObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('FleetAdvisorSchemaObjectResponse')
        visited = visited + ['FleetAdvisorSchemaObjectResponse']
        {
          schema_id: 'schema_id',
          object_type: 'object_type',
          number_of_objects: 1,
          code_line_count: 1,
          code_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetAdvisorSchemaObjectResponse.new
        data = {}
        data['SchemaId'] = stub[:schema_id] unless stub[:schema_id].nil?
        data['ObjectType'] = stub[:object_type] unless stub[:object_type].nil?
        data['NumberOfObjects'] = stub[:number_of_objects] unless stub[:number_of_objects].nil?
        data['CodeLineCount'] = stub[:code_line_count] unless stub[:code_line_count].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetAdvisorSchemas
    class DescribeFleetAdvisorSchemas
      def self.default(visited=[])
        {
          fleet_advisor_schemas: FleetAdvisorSchemaList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetAdvisorSchemas'] = FleetAdvisorSchemaList.stub(stub[:fleet_advisor_schemas]) unless stub[:fleet_advisor_schemas].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetAdvisorSchemaList
    class FleetAdvisorSchemaList
      def self.default(visited=[])
        return nil if visited.include?('FleetAdvisorSchemaList')
        visited = visited + ['FleetAdvisorSchemaList']
        [
          SchemaResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaResponse
    class SchemaResponse
      def self.default(visited=[])
        return nil if visited.include?('SchemaResponse')
        visited = visited + ['SchemaResponse']
        {
          code_line_count: 1,
          code_size: 1,
          complexity: 'complexity',
          server: ServerShortInfoResponse.default(visited),
          database_instance: DatabaseShortInfoResponse.default(visited),
          schema_id: 'schema_id',
          schema_name: 'schema_name',
          original_schema: SchemaShortInfoResponse.default(visited),
          similarity: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaResponse.new
        data = {}
        data['CodeLineCount'] = stub[:code_line_count] unless stub[:code_line_count].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Complexity'] = stub[:complexity] unless stub[:complexity].nil?
        data['Server'] = ServerShortInfoResponse.stub(stub[:server]) unless stub[:server].nil?
        data['DatabaseInstance'] = DatabaseShortInfoResponse.stub(stub[:database_instance]) unless stub[:database_instance].nil?
        data['SchemaId'] = stub[:schema_id] unless stub[:schema_id].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['OriginalSchema'] = SchemaShortInfoResponse.stub(stub[:original_schema]) unless stub[:original_schema].nil?
        data['Similarity'] = Hearth::NumberHelper.serialize(stub[:similarity])
        data
      end
    end

    # Structure Stubber for SchemaShortInfoResponse
    class SchemaShortInfoResponse
      def self.default(visited=[])
        return nil if visited.include?('SchemaShortInfoResponse')
        visited = visited + ['SchemaShortInfoResponse']
        {
          schema_id: 'schema_id',
          schema_name: 'schema_name',
          database_id: 'database_id',
          database_name: 'database_name',
          database_ip_address: 'database_ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaShortInfoResponse.new
        data = {}
        data['SchemaId'] = stub[:schema_id] unless stub[:schema_id].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['DatabaseId'] = stub[:database_id] unless stub[:database_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['DatabaseIpAddress'] = stub[:database_ip_address] unless stub[:database_ip_address].nil?
        data
      end
    end

    # Structure Stubber for DatabaseShortInfoResponse
    class DatabaseShortInfoResponse
      def self.default(visited=[])
        return nil if visited.include?('DatabaseShortInfoResponse')
        visited = visited + ['DatabaseShortInfoResponse']
        {
          database_id: 'database_id',
          database_name: 'database_name',
          database_ip_address: 'database_ip_address',
          database_engine: 'database_engine',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseShortInfoResponse.new
        data = {}
        data['DatabaseId'] = stub[:database_id] unless stub[:database_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['DatabaseIpAddress'] = stub[:database_ip_address] unless stub[:database_ip_address].nil?
        data['DatabaseEngine'] = stub[:database_engine] unless stub[:database_engine].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrderableReplicationInstances
    class DescribeOrderableReplicationInstances
      def self.default(visited=[])
        {
          orderable_replication_instances: OrderableReplicationInstanceList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrderableReplicationInstances'] = OrderableReplicationInstanceList.stub(stub[:orderable_replication_instances]) unless stub[:orderable_replication_instances].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrderableReplicationInstanceList
    class OrderableReplicationInstanceList
      def self.default(visited=[])
        return nil if visited.include?('OrderableReplicationInstanceList')
        visited = visited + ['OrderableReplicationInstanceList']
        [
          OrderableReplicationInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrderableReplicationInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrderableReplicationInstance
    class OrderableReplicationInstance
      def self.default(visited=[])
        return nil if visited.include?('OrderableReplicationInstance')
        visited = visited + ['OrderableReplicationInstance']
        {
          engine_version: 'engine_version',
          replication_instance_class: 'replication_instance_class',
          storage_type: 'storage_type',
          min_allocated_storage: 1,
          max_allocated_storage: 1,
          default_allocated_storage: 1,
          included_allocated_storage: 1,
          availability_zones: AvailabilityZonesList.default(visited),
          release_status: 'release_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrderableReplicationInstance.new
        data = {}
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['ReplicationInstanceClass'] = stub[:replication_instance_class] unless stub[:replication_instance_class].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['MinAllocatedStorage'] = stub[:min_allocated_storage] unless stub[:min_allocated_storage].nil?
        data['MaxAllocatedStorage'] = stub[:max_allocated_storage] unless stub[:max_allocated_storage].nil?
        data['DefaultAllocatedStorage'] = stub[:default_allocated_storage] unless stub[:default_allocated_storage].nil?
        data['IncludedAllocatedStorage'] = stub[:included_allocated_storage] unless stub[:included_allocated_storage].nil?
        data['AvailabilityZones'] = AvailabilityZonesList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['ReleaseStatus'] = stub[:release_status] unless stub[:release_status].nil?
        data
      end
    end

    # List Stubber for AvailabilityZonesList
    class AvailabilityZonesList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZonesList')
        visited = visited + ['AvailabilityZonesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribePendingMaintenanceActions
    class DescribePendingMaintenanceActions
      def self.default(visited=[])
        {
          pending_maintenance_actions: PendingMaintenanceActions.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PendingMaintenanceActions'] = PendingMaintenanceActions.stub(stub[:pending_maintenance_actions]) unless stub[:pending_maintenance_actions].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PendingMaintenanceActions
    class PendingMaintenanceActions
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceActions')
        visited = visited + ['PendingMaintenanceActions']
        [
          ResourcePendingMaintenanceActions.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourcePendingMaintenanceActions.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeRefreshSchemasStatus
    class DescribeRefreshSchemasStatus
      def self.default(visited=[])
        {
          refresh_schemas_status: RefreshSchemasStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RefreshSchemasStatus'] = RefreshSchemasStatus.stub(stub[:refresh_schemas_status]) unless stub[:refresh_schemas_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RefreshSchemasStatus
    class RefreshSchemasStatus
      def self.default(visited=[])
        return nil if visited.include?('RefreshSchemasStatus')
        visited = visited + ['RefreshSchemasStatus']
        {
          endpoint_arn: 'endpoint_arn',
          replication_instance_arn: 'replication_instance_arn',
          status: 'status',
          last_refresh_date: Time.now,
          last_failure_message: 'last_failure_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RefreshSchemasStatus.new
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['ReplicationInstanceArn'] = stub[:replication_instance_arn] unless stub[:replication_instance_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastRefreshDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_refresh_date]).to_i unless stub[:last_refresh_date].nil?
        data['LastFailureMessage'] = stub[:last_failure_message] unless stub[:last_failure_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeReplicationInstanceTaskLogs
    class DescribeReplicationInstanceTaskLogs
      def self.default(visited=[])
        {
          replication_instance_arn: 'replication_instance_arn',
          replication_instance_task_logs: ReplicationInstanceTaskLogsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationInstanceArn'] = stub[:replication_instance_arn] unless stub[:replication_instance_arn].nil?
        data['ReplicationInstanceTaskLogs'] = ReplicationInstanceTaskLogsList.stub(stub[:replication_instance_task_logs]) unless stub[:replication_instance_task_logs].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationInstanceTaskLogsList
    class ReplicationInstanceTaskLogsList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationInstanceTaskLogsList')
        visited = visited + ['ReplicationInstanceTaskLogsList']
        [
          ReplicationInstanceTaskLog.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationInstanceTaskLog.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationInstanceTaskLog
    class ReplicationInstanceTaskLog
      def self.default(visited=[])
        return nil if visited.include?('ReplicationInstanceTaskLog')
        visited = visited + ['ReplicationInstanceTaskLog']
        {
          replication_task_name: 'replication_task_name',
          replication_task_arn: 'replication_task_arn',
          replication_instance_task_log_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationInstanceTaskLog.new
        data = {}
        data['ReplicationTaskName'] = stub[:replication_task_name] unless stub[:replication_task_name].nil?
        data['ReplicationTaskArn'] = stub[:replication_task_arn] unless stub[:replication_task_arn].nil?
        data['ReplicationInstanceTaskLogSize'] = stub[:replication_instance_task_log_size] unless stub[:replication_instance_task_log_size].nil?
        data
      end
    end

    # Operation Stubber for DescribeReplicationInstances
    class DescribeReplicationInstances
      def self.default(visited=[])
        {
          marker: 'marker',
          replication_instances: ReplicationInstanceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['ReplicationInstances'] = ReplicationInstanceList.stub(stub[:replication_instances]) unless stub[:replication_instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationInstanceList
    class ReplicationInstanceList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationInstanceList')
        visited = visited + ['ReplicationInstanceList']
        [
          ReplicationInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReplicationSubnetGroups
    class DescribeReplicationSubnetGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          replication_subnet_groups: ReplicationSubnetGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['ReplicationSubnetGroups'] = ReplicationSubnetGroups.stub(stub[:replication_subnet_groups]) unless stub[:replication_subnet_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationSubnetGroups
    class ReplicationSubnetGroups
      def self.default(visited=[])
        return nil if visited.include?('ReplicationSubnetGroups')
        visited = visited + ['ReplicationSubnetGroups']
        [
          ReplicationSubnetGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationSubnetGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReplicationTaskAssessmentResults
    class DescribeReplicationTaskAssessmentResults
      def self.default(visited=[])
        {
          marker: 'marker',
          bucket_name: 'bucket_name',
          replication_task_assessment_results: ReplicationTaskAssessmentResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['ReplicationTaskAssessmentResults'] = ReplicationTaskAssessmentResultList.stub(stub[:replication_task_assessment_results]) unless stub[:replication_task_assessment_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationTaskAssessmentResultList
    class ReplicationTaskAssessmentResultList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskAssessmentResultList')
        visited = visited + ['ReplicationTaskAssessmentResultList']
        [
          ReplicationTaskAssessmentResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationTaskAssessmentResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationTaskAssessmentResult
    class ReplicationTaskAssessmentResult
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskAssessmentResult')
        visited = visited + ['ReplicationTaskAssessmentResult']
        {
          replication_task_identifier: 'replication_task_identifier',
          replication_task_arn: 'replication_task_arn',
          replication_task_last_assessment_date: Time.now,
          assessment_status: 'assessment_status',
          assessment_results_file: 'assessment_results_file',
          assessment_results: 'assessment_results',
          s3_object_url: 's3_object_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationTaskAssessmentResult.new
        data = {}
        data['ReplicationTaskIdentifier'] = stub[:replication_task_identifier] unless stub[:replication_task_identifier].nil?
        data['ReplicationTaskArn'] = stub[:replication_task_arn] unless stub[:replication_task_arn].nil?
        data['ReplicationTaskLastAssessmentDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replication_task_last_assessment_date]).to_i unless stub[:replication_task_last_assessment_date].nil?
        data['AssessmentStatus'] = stub[:assessment_status] unless stub[:assessment_status].nil?
        data['AssessmentResultsFile'] = stub[:assessment_results_file] unless stub[:assessment_results_file].nil?
        data['AssessmentResults'] = stub[:assessment_results] unless stub[:assessment_results].nil?
        data['S3ObjectUrl'] = stub[:s3_object_url] unless stub[:s3_object_url].nil?
        data
      end
    end

    # Operation Stubber for DescribeReplicationTaskAssessmentRuns
    class DescribeReplicationTaskAssessmentRuns
      def self.default(visited=[])
        {
          marker: 'marker',
          replication_task_assessment_runs: ReplicationTaskAssessmentRunList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['ReplicationTaskAssessmentRuns'] = ReplicationTaskAssessmentRunList.stub(stub[:replication_task_assessment_runs]) unless stub[:replication_task_assessment_runs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationTaskAssessmentRunList
    class ReplicationTaskAssessmentRunList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskAssessmentRunList')
        visited = visited + ['ReplicationTaskAssessmentRunList']
        [
          ReplicationTaskAssessmentRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationTaskAssessmentRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReplicationTaskIndividualAssessments
    class DescribeReplicationTaskIndividualAssessments
      def self.default(visited=[])
        {
          marker: 'marker',
          replication_task_individual_assessments: ReplicationTaskIndividualAssessmentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['ReplicationTaskIndividualAssessments'] = ReplicationTaskIndividualAssessmentList.stub(stub[:replication_task_individual_assessments]) unless stub[:replication_task_individual_assessments].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationTaskIndividualAssessmentList
    class ReplicationTaskIndividualAssessmentList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskIndividualAssessmentList')
        visited = visited + ['ReplicationTaskIndividualAssessmentList']
        [
          ReplicationTaskIndividualAssessment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationTaskIndividualAssessment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationTaskIndividualAssessment
    class ReplicationTaskIndividualAssessment
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskIndividualAssessment')
        visited = visited + ['ReplicationTaskIndividualAssessment']
        {
          replication_task_individual_assessment_arn: 'replication_task_individual_assessment_arn',
          replication_task_assessment_run_arn: 'replication_task_assessment_run_arn',
          individual_assessment_name: 'individual_assessment_name',
          status: 'status',
          replication_task_individual_assessment_start_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationTaskIndividualAssessment.new
        data = {}
        data['ReplicationTaskIndividualAssessmentArn'] = stub[:replication_task_individual_assessment_arn] unless stub[:replication_task_individual_assessment_arn].nil?
        data['ReplicationTaskAssessmentRunArn'] = stub[:replication_task_assessment_run_arn] unless stub[:replication_task_assessment_run_arn].nil?
        data['IndividualAssessmentName'] = stub[:individual_assessment_name] unless stub[:individual_assessment_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ReplicationTaskIndividualAssessmentStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replication_task_individual_assessment_start_date]).to_i unless stub[:replication_task_individual_assessment_start_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeReplicationTasks
    class DescribeReplicationTasks
      def self.default(visited=[])
        {
          marker: 'marker',
          replication_tasks: ReplicationTaskList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['ReplicationTasks'] = ReplicationTaskList.stub(stub[:replication_tasks]) unless stub[:replication_tasks].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationTaskList
    class ReplicationTaskList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTaskList')
        visited = visited + ['ReplicationTaskList']
        [
          ReplicationTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSchemas
    class DescribeSchemas
      def self.default(visited=[])
        {
          marker: 'marker',
          schemas: SchemaList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Schemas'] = SchemaList.stub(stub[:schemas]) unless stub[:schemas].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SchemaList
    class SchemaList
      def self.default(visited=[])
        return nil if visited.include?('SchemaList')
        visited = visited + ['SchemaList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeTableStatistics
    class DescribeTableStatistics
      def self.default(visited=[])
        {
          replication_task_arn: 'replication_task_arn',
          table_statistics: TableStatisticsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTaskArn'] = stub[:replication_task_arn] unless stub[:replication_task_arn].nil?
        data['TableStatistics'] = TableStatisticsList.stub(stub[:table_statistics]) unless stub[:table_statistics].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableStatisticsList
    class TableStatisticsList
      def self.default(visited=[])
        return nil if visited.include?('TableStatisticsList')
        visited = visited + ['TableStatisticsList']
        [
          TableStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableStatistics
    class TableStatistics
      def self.default(visited=[])
        return nil if visited.include?('TableStatistics')
        visited = visited + ['TableStatistics']
        {
          schema_name: 'schema_name',
          table_name: 'table_name',
          inserts: 1,
          deletes: 1,
          updates: 1,
          ddls: 1,
          full_load_rows: 1,
          full_load_condtnl_chk_failed_rows: 1,
          full_load_error_rows: 1,
          full_load_start_time: Time.now,
          full_load_end_time: Time.now,
          full_load_reloaded: false,
          last_update_time: Time.now,
          table_state: 'table_state',
          validation_pending_records: 1,
          validation_failed_records: 1,
          validation_suspended_records: 1,
          validation_state: 'validation_state',
          validation_state_details: 'validation_state_details',
        }
      end

      def self.stub(stub)
        stub ||= Types::TableStatistics.new
        data = {}
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Inserts'] = stub[:inserts] unless stub[:inserts].nil?
        data['Deletes'] = stub[:deletes] unless stub[:deletes].nil?
        data['Updates'] = stub[:updates] unless stub[:updates].nil?
        data['Ddls'] = stub[:ddls] unless stub[:ddls].nil?
        data['FullLoadRows'] = stub[:full_load_rows] unless stub[:full_load_rows].nil?
        data['FullLoadCondtnlChkFailedRows'] = stub[:full_load_condtnl_chk_failed_rows] unless stub[:full_load_condtnl_chk_failed_rows].nil?
        data['FullLoadErrorRows'] = stub[:full_load_error_rows] unless stub[:full_load_error_rows].nil?
        data['FullLoadStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:full_load_start_time]).to_i unless stub[:full_load_start_time].nil?
        data['FullLoadEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:full_load_end_time]).to_i unless stub[:full_load_end_time].nil?
        data['FullLoadReloaded'] = stub[:full_load_reloaded] unless stub[:full_load_reloaded].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['TableState'] = stub[:table_state] unless stub[:table_state].nil?
        data['ValidationPendingRecords'] = stub[:validation_pending_records] unless stub[:validation_pending_records].nil?
        data['ValidationFailedRecords'] = stub[:validation_failed_records] unless stub[:validation_failed_records].nil?
        data['ValidationSuspendedRecords'] = stub[:validation_suspended_records] unless stub[:validation_suspended_records].nil?
        data['ValidationState'] = stub[:validation_state] unless stub[:validation_state].nil?
        data['ValidationStateDetails'] = stub[:validation_state_details] unless stub[:validation_state_details].nil?
        data
      end
    end

    # Operation Stubber for ImportCertificate
    class ImportCertificate
      def self.default(visited=[])
        {
          certificate: Certificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = Certificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Operation Stubber for ModifyEndpoint
    class ModifyEndpoint
      def self.default(visited=[])
        {
          endpoint: Endpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoint'] = Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyEventSubscription
    class ModifyEventSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventSubscription'] = EventSubscription.stub(stub[:event_subscription]) unless stub[:event_subscription].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyReplicationInstance
    class ModifyReplicationInstance
      def self.default(visited=[])
        {
          replication_instance: ReplicationInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationInstance'] = ReplicationInstance.stub(stub[:replication_instance]) unless stub[:replication_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyReplicationSubnetGroup
    class ModifyReplicationSubnetGroup
      def self.default(visited=[])
        {
          replication_subnet_group: ReplicationSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationSubnetGroup'] = ReplicationSubnetGroup.stub(stub[:replication_subnet_group]) unless stub[:replication_subnet_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyReplicationTask
    class ModifyReplicationTask
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for MoveReplicationTask
    class MoveReplicationTask
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootReplicationInstance
    class RebootReplicationInstance
      def self.default(visited=[])
        {
          replication_instance: ReplicationInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationInstance'] = ReplicationInstance.stub(stub[:replication_instance]) unless stub[:replication_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RefreshSchemas
    class RefreshSchemas
      def self.default(visited=[])
        {
          refresh_schemas_status: RefreshSchemasStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RefreshSchemasStatus'] = RefreshSchemasStatus.stub(stub[:refresh_schemas_status]) unless stub[:refresh_schemas_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReloadTables
    class ReloadTables
      def self.default(visited=[])
        {
          replication_task_arn: 'replication_task_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTaskArn'] = stub[:replication_task_arn] unless stub[:replication_task_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RunFleetAdvisorLsaAnalysis
    class RunFleetAdvisorLsaAnalysis
      def self.default(visited=[])
        {
          lsa_analysis_id: 'lsa_analysis_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LsaAnalysisId'] = stub[:lsa_analysis_id] unless stub[:lsa_analysis_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartReplicationTask
    class StartReplicationTask
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartReplicationTaskAssessment
    class StartReplicationTaskAssessment
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartReplicationTaskAssessmentRun
    class StartReplicationTaskAssessmentRun
      def self.default(visited=[])
        {
          replication_task_assessment_run: ReplicationTaskAssessmentRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTaskAssessmentRun'] = ReplicationTaskAssessmentRun.stub(stub[:replication_task_assessment_run]) unless stub[:replication_task_assessment_run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopReplicationTask
    class StopReplicationTask
      def self.default(visited=[])
        {
          replication_task: ReplicationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicationTask'] = ReplicationTask.stub(stub[:replication_task]) unless stub[:replication_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestConnection
    class TestConnection
      def self.default(visited=[])
        {
          connection: Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connection'] = Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
