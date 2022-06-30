# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DatabaseMigrationService
  module Validators

    class AccessDeniedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountQuota, context: context)
        Hearth::Validator.validate!(input[:account_quota_name], ::String, context: "#{context}[:account_quota_name]")
        Hearth::Validator.validate!(input[:used], ::Integer, context: "#{context}[:used]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AccountQuotaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountQuota.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
      end
    end

    class ApplyPendingMaintenanceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyPendingMaintenanceActionInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:apply_action], ::String, context: "#{context}[:apply_action]")
        Hearth::Validator.validate!(input[:opt_in_type], ::String, context: "#{context}[:opt_in_type]")
      end
    end

    class ApplyPendingMaintenanceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyPendingMaintenanceActionOutput, context: context)
        Validators::ResourcePendingMaintenanceActions.validate!(input[:resource_pending_maintenance_actions], context: "#{context}[:resource_pending_maintenance_actions]") unless input[:resource_pending_maintenance_actions].nil?
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AvailabilityZonesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CancelReplicationTaskAssessmentRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelReplicationTaskAssessmentRunInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_assessment_run_arn], ::String, context: "#{context}[:replication_task_assessment_run_arn]")
      end
    end

    class CancelReplicationTaskAssessmentRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelReplicationTaskAssessmentRunOutput, context: context)
        Validators::ReplicationTaskAssessmentRun.validate!(input[:replication_task_assessment_run], context: "#{context}[:replication_task_assessment_run]") unless input[:replication_task_assessment_run].nil?
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_identifier], ::String, context: "#{context}[:certificate_identifier]")
        Hearth::Validator.validate!(input[:certificate_creation_date], ::Time, context: "#{context}[:certificate_creation_date]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Hearth::Validator.validate!(input[:certificate_wallet], ::String, context: "#{context}[:certificate_wallet]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_owner], ::String, context: "#{context}[:certificate_owner]")
        Hearth::Validator.validate!(input[:valid_from_date], ::Time, context: "#{context}[:valid_from_date]")
        Hearth::Validator.validate!(input[:valid_to_date], ::Time, context: "#{context}[:valid_to_date]")
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
        Hearth::Validator.validate!(input[:key_length], ::Integer, context: "#{context}[:key_length]")
      end
    end

    class CertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Certificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CollectorHealthCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CollectorHealthCheck, context: context)
        Hearth::Validator.validate!(input[:collector_status], ::String, context: "#{context}[:collector_status]")
        Hearth::Validator.validate!(input[:local_collector_s3_access], ::TrueClass, ::FalseClass, context: "#{context}[:local_collector_s3_access]")
        Hearth::Validator.validate!(input[:web_collector_s3_access], ::TrueClass, ::FalseClass, context: "#{context}[:web_collector_s3_access]")
        Hearth::Validator.validate!(input[:web_collector_granted_role_based_access], ::TrueClass, ::FalseClass, context: "#{context}[:web_collector_granted_role_based_access]")
      end
    end

    class CollectorNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CollectorNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CollectorResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CollectorResponse, context: context)
        Hearth::Validator.validate!(input[:collector_referenced_id], ::String, context: "#{context}[:collector_referenced_id]")
        Hearth::Validator.validate!(input[:collector_name], ::String, context: "#{context}[:collector_name]")
        Hearth::Validator.validate!(input[:collector_version], ::String, context: "#{context}[:collector_version]")
        Hearth::Validator.validate!(input[:version_status], ::String, context: "#{context}[:version_status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Validators::CollectorHealthCheck.validate!(input[:collector_health_check], context: "#{context}[:collector_health_check]") unless input[:collector_health_check].nil?
        Hearth::Validator.validate!(input[:last_data_received], ::String, context: "#{context}[:last_data_received]")
        Hearth::Validator.validate!(input[:registered_date], ::String, context: "#{context}[:registered_date]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:modified_date], ::String, context: "#{context}[:modified_date]")
        Validators::InventoryData.validate!(input[:inventory_data], context: "#{context}[:inventory_data]") unless input[:inventory_data].nil?
      end
    end

    class CollectorResponses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CollectorResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CollectorShortInfoResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CollectorShortInfoResponse, context: context)
        Hearth::Validator.validate!(input[:collector_referenced_id], ::String, context: "#{context}[:collector_referenced_id]")
        Hearth::Validator.validate!(input[:collector_name], ::String, context: "#{context}[:collector_name]")
      end
    end

    class CollectorsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CollectorShortInfoResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:endpoint_identifier], ::String, context: "#{context}[:endpoint_identifier]")
        Hearth::Validator.validate!(input[:replication_instance_identifier], ::String, context: "#{context}[:replication_instance_identifier]")
      end
    end

    class ConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_identifier], ::String, context: "#{context}[:endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:extra_connection_attributes], ::String, context: "#{context}[:extra_connection_attributes]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:ssl_mode], ::String, context: "#{context}[:ssl_mode]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:external_table_definition], ::String, context: "#{context}[:external_table_definition]")
        Validators::DynamoDbSettings.validate!(input[:dynamo_db_settings], context: "#{context}[:dynamo_db_settings]") unless input[:dynamo_db_settings].nil?
        Validators::S3Settings.validate!(input[:s3_settings], context: "#{context}[:s3_settings]") unless input[:s3_settings].nil?
        Validators::DmsTransferSettings.validate!(input[:dms_transfer_settings], context: "#{context}[:dms_transfer_settings]") unless input[:dms_transfer_settings].nil?
        Validators::MongoDbSettings.validate!(input[:mongo_db_settings], context: "#{context}[:mongo_db_settings]") unless input[:mongo_db_settings].nil?
        Validators::KinesisSettings.validate!(input[:kinesis_settings], context: "#{context}[:kinesis_settings]") unless input[:kinesis_settings].nil?
        Validators::KafkaSettings.validate!(input[:kafka_settings], context: "#{context}[:kafka_settings]") unless input[:kafka_settings].nil?
        Validators::ElasticsearchSettings.validate!(input[:elasticsearch_settings], context: "#{context}[:elasticsearch_settings]") unless input[:elasticsearch_settings].nil?
        Validators::NeptuneSettings.validate!(input[:neptune_settings], context: "#{context}[:neptune_settings]") unless input[:neptune_settings].nil?
        Validators::RedshiftSettings.validate!(input[:redshift_settings], context: "#{context}[:redshift_settings]") unless input[:redshift_settings].nil?
        Validators::PostgreSQLSettings.validate!(input[:postgre_sql_settings], context: "#{context}[:postgre_sql_settings]") unless input[:postgre_sql_settings].nil?
        Validators::MySQLSettings.validate!(input[:my_sql_settings], context: "#{context}[:my_sql_settings]") unless input[:my_sql_settings].nil?
        Validators::OracleSettings.validate!(input[:oracle_settings], context: "#{context}[:oracle_settings]") unless input[:oracle_settings].nil?
        Validators::SybaseSettings.validate!(input[:sybase_settings], context: "#{context}[:sybase_settings]") unless input[:sybase_settings].nil?
        Validators::MicrosoftSQLServerSettings.validate!(input[:microsoft_sql_server_settings], context: "#{context}[:microsoft_sql_server_settings]") unless input[:microsoft_sql_server_settings].nil?
        Validators::IBMDb2Settings.validate!(input[:ibm_db2_settings], context: "#{context}[:ibm_db2_settings]") unless input[:ibm_db2_settings].nil?
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Validators::DocDbSettings.validate!(input[:doc_db_settings], context: "#{context}[:doc_db_settings]") unless input[:doc_db_settings].nil?
        Validators::RedisSettings.validate!(input[:redis_settings], context: "#{context}[:redis_settings]") unless input[:redis_settings].nil?
        Validators::GcpMySQLSettings.validate!(input[:gcp_my_sql_settings], context: "#{context}[:gcp_my_sql_settings]") unless input[:gcp_my_sql_settings].nil?
      end
    end

    class CreateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointOutput, context: context)
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class CreateEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Validators::SourceIdsList.validate!(input[:source_ids], context: "#{context}[:source_ids]") unless input[:source_ids].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class CreateFleetAdvisorCollectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetAdvisorCollectorInput, context: context)
        Hearth::Validator.validate!(input[:collector_name], ::String, context: "#{context}[:collector_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
      end
    end

    class CreateFleetAdvisorCollectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetAdvisorCollectorOutput, context: context)
        Hearth::Validator.validate!(input[:collector_referenced_id], ::String, context: "#{context}[:collector_referenced_id]")
        Hearth::Validator.validate!(input[:collector_name], ::String, context: "#{context}[:collector_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
      end
    end

    class CreateReplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_identifier], ::String, context: "#{context}[:replication_instance_identifier]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:replication_instance_class], ::String, context: "#{context}[:replication_instance_class]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:replication_subnet_group_identifier], ::String, context: "#{context}[:replication_subnet_group_identifier]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:dns_name_servers], ::String, context: "#{context}[:dns_name_servers]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
      end
    end

    class CreateReplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationInstanceOutput, context: context)
        Validators::ReplicationInstance.validate!(input[:replication_instance], context: "#{context}[:replication_instance]") unless input[:replication_instance].nil?
      end
    end

    class CreateReplicationSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:replication_subnet_group_identifier], ::String, context: "#{context}[:replication_subnet_group_identifier]")
        Hearth::Validator.validate!(input[:replication_subnet_group_description], ::String, context: "#{context}[:replication_subnet_group_description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateReplicationSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationSubnetGroupOutput, context: context)
        Validators::ReplicationSubnetGroup.validate!(input[:replication_subnet_group], context: "#{context}[:replication_subnet_group]") unless input[:replication_subnet_group].nil?
      end
    end

    class CreateReplicationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationTaskInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_identifier], ::String, context: "#{context}[:replication_task_identifier]")
        Hearth::Validator.validate!(input[:source_endpoint_arn], ::String, context: "#{context}[:source_endpoint_arn]")
        Hearth::Validator.validate!(input[:target_endpoint_arn], ::String, context: "#{context}[:target_endpoint_arn]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:migration_type], ::String, context: "#{context}[:migration_type]")
        Hearth::Validator.validate!(input[:table_mappings], ::String, context: "#{context}[:table_mappings]")
        Hearth::Validator.validate!(input[:replication_task_settings], ::String, context: "#{context}[:replication_task_settings]")
        Hearth::Validator.validate!(input[:cdc_start_time], ::Time, context: "#{context}[:cdc_start_time]")
        Hearth::Validator.validate!(input[:cdc_start_position], ::String, context: "#{context}[:cdc_start_position]")
        Hearth::Validator.validate!(input[:cdc_stop_position], ::String, context: "#{context}[:cdc_stop_position]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:task_data], ::String, context: "#{context}[:task_data]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
      end
    end

    class CreateReplicationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationTaskOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class DatabaseInstanceSoftwareDetailsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseInstanceSoftwareDetailsResponse, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:engine_edition], ::String, context: "#{context}[:engine_edition]")
        Hearth::Validator.validate!(input[:service_pack], ::String, context: "#{context}[:service_pack]")
        Hearth::Validator.validate!(input[:support_level], ::String, context: "#{context}[:support_level]")
        Hearth::Validator.validate!(input[:os_architecture], ::Integer, context: "#{context}[:os_architecture]")
        Hearth::Validator.validate!(input[:tooltip], ::String, context: "#{context}[:tooltip]")
      end
    end

    class DatabaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatabaseResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatabaseResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseResponse, context: context)
        Hearth::Validator.validate!(input[:database_id], ::String, context: "#{context}[:database_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:number_of_schemas], ::Integer, context: "#{context}[:number_of_schemas]")
        Validators::ServerShortInfoResponse.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
        Validators::DatabaseInstanceSoftwareDetailsResponse.validate!(input[:software_details], context: "#{context}[:software_details]") unless input[:software_details].nil?
        Validators::CollectorsList.validate!(input[:collectors], context: "#{context}[:collectors]") unless input[:collectors].nil?
      end
    end

    class DatabaseShortInfoResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseShortInfoResponse, context: context)
        Hearth::Validator.validate!(input[:database_id], ::String, context: "#{context}[:database_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:database_ip_address], ::String, context: "#{context}[:database_ip_address]")
        Hearth::Validator.validate!(input[:database_engine], ::String, context: "#{context}[:database_engine]")
      end
    end

    class DeleteCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class DeleteCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateOutput, context: context)
        Validators::Certificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class DeleteEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DeleteEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointOutput, context: context)
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class DeleteEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
      end
    end

    class DeleteEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class DeleteFleetAdvisorCollectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetAdvisorCollectorInput, context: context)
        Hearth::Validator.validate!(input[:collector_referenced_id], ::String, context: "#{context}[:collector_referenced_id]")
      end
    end

    class DeleteFleetAdvisorCollectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetAdvisorCollectorOutput, context: context)
      end
    end

    class DeleteFleetAdvisorDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetAdvisorDatabasesInput, context: context)
        Validators::StringList.validate!(input[:database_ids], context: "#{context}[:database_ids]") unless input[:database_ids].nil?
      end
    end

    class DeleteFleetAdvisorDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetAdvisorDatabasesOutput, context: context)
        Validators::StringList.validate!(input[:database_ids], context: "#{context}[:database_ids]") unless input[:database_ids].nil?
      end
    end

    class DeleteReplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
      end
    end

    class DeleteReplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationInstanceOutput, context: context)
        Validators::ReplicationInstance.validate!(input[:replication_instance], context: "#{context}[:replication_instance]") unless input[:replication_instance].nil?
      end
    end

    class DeleteReplicationSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:replication_subnet_group_identifier], ::String, context: "#{context}[:replication_subnet_group_identifier]")
      end
    end

    class DeleteReplicationSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationSubnetGroupOutput, context: context)
      end
    end

    class DeleteReplicationTaskAssessmentRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationTaskAssessmentRunInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_assessment_run_arn], ::String, context: "#{context}[:replication_task_assessment_run_arn]")
      end
    end

    class DeleteReplicationTaskAssessmentRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationTaskAssessmentRunOutput, context: context)
        Validators::ReplicationTaskAssessmentRun.validate!(input[:replication_task_assessment_run], context: "#{context}[:replication_task_assessment_run]") unless input[:replication_task_assessment_run].nil?
      end
    end

    class DeleteReplicationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationTaskInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
      end
    end

    class DeleteReplicationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationTaskOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
      end
    end

    class DescribeAccountAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesOutput, context: context)
        Validators::AccountQuotaList.validate!(input[:account_quotas], context: "#{context}[:account_quotas]") unless input[:account_quotas].nil?
        Hearth::Validator.validate!(input[:unique_account_identifier], ::String, context: "#{context}[:unique_account_identifier]")
      end
    end

    class DescribeApplicableIndividualAssessmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicableIndividualAssessmentsInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:source_engine_name], ::String, context: "#{context}[:source_engine_name]")
        Hearth::Validator.validate!(input[:target_engine_name], ::String, context: "#{context}[:target_engine_name]")
        Hearth::Validator.validate!(input[:migration_type], ::String, context: "#{context}[:migration_type]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeApplicableIndividualAssessmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicableIndividualAssessmentsOutput, context: context)
        Validators::IndividualAssessmentNameList.validate!(input[:individual_assessment_names], context: "#{context}[:individual_assessment_names]") unless input[:individual_assessment_names].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificatesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificatesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
      end
    end

    class DescribeConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
      end
    end

    class DescribeEndpointSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointSettingsInput, context: context)
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEndpointSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EndpointSettingsList.validate!(input[:endpoint_settings], context: "#{context}[:endpoint_settings]") unless input[:endpoint_settings].nil?
      end
    end

    class DescribeEndpointTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointTypesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEndpointTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointTypesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::SupportedEndpointTypeList.validate!(input[:supported_endpoint_types], context: "#{context}[:supported_endpoint_types]") unless input[:supported_endpoint_types].nil?
      end
    end

    class DescribeEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EndpointList.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class DescribeEventCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeEventCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesOutput, context: context)
        Validators::EventCategoryGroupList.validate!(input[:event_category_group_list], context: "#{context}[:event_category_group_list]") unless input[:event_category_group_list].nil?
      end
    end

    class DescribeEventSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EventSubscriptionsList.validate!(input[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless input[:event_subscriptions_list].nil?
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeFleetAdvisorCollectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorCollectorsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorCollectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorCollectorsOutput, context: context)
        Validators::CollectorResponses.validate!(input[:collectors], context: "#{context}[:collectors]") unless input[:collectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorDatabasesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorDatabasesOutput, context: context)
        Validators::DatabaseList.validate!(input[:databases], context: "#{context}[:databases]") unless input[:databases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorLsaAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorLsaAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorLsaAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorLsaAnalysisOutput, context: context)
        Validators::FleetAdvisorLsaAnalysisResponseList.validate!(input[:analysis], context: "#{context}[:analysis]") unless input[:analysis].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorSchemaObjectSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorSchemaObjectSummaryInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorSchemaObjectSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorSchemaObjectSummaryOutput, context: context)
        Validators::FleetAdvisorSchemaObjectList.validate!(input[:fleet_advisor_schema_objects], context: "#{context}[:fleet_advisor_schema_objects]") unless input[:fleet_advisor_schema_objects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorSchemasInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAdvisorSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAdvisorSchemasOutput, context: context)
        Validators::FleetAdvisorSchemaList.validate!(input[:fleet_advisor_schemas], context: "#{context}[:fleet_advisor_schemas]") unless input[:fleet_advisor_schemas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrderableReplicationInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableReplicationInstancesInput, context: context)
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOrderableReplicationInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableReplicationInstancesOutput, context: context)
        Validators::OrderableReplicationInstanceList.validate!(input[:orderable_replication_instances], context: "#{context}[:orderable_replication_instances]") unless input[:orderable_replication_instances].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribePendingMaintenanceActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingMaintenanceActionsInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribePendingMaintenanceActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingMaintenanceActionsOutput, context: context)
        Validators::PendingMaintenanceActions.validate!(input[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless input[:pending_maintenance_actions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeRefreshSchemasStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRefreshSchemasStatusInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DescribeRefreshSchemasStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRefreshSchemasStatusOutput, context: context)
        Validators::RefreshSchemasStatus.validate!(input[:refresh_schemas_status], context: "#{context}[:refresh_schemas_status]") unless input[:refresh_schemas_status].nil?
      end
    end

    class DescribeReplicationInstanceTaskLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationInstanceTaskLogsInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationInstanceTaskLogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationInstanceTaskLogsOutput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Validators::ReplicationInstanceTaskLogsList.validate!(input[:replication_instance_task_logs], context: "#{context}[:replication_instance_task_logs]") unless input[:replication_instance_task_logs].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationInstancesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReplicationInstanceList.validate!(input[:replication_instances], context: "#{context}[:replication_instances]") unless input[:replication_instances].nil?
      end
    end

    class DescribeReplicationSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationSubnetGroupsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReplicationSubnetGroups.validate!(input[:replication_subnet_groups], context: "#{context}[:replication_subnet_groups]") unless input[:replication_subnet_groups].nil?
      end
    end

    class DescribeReplicationTaskAssessmentResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTaskAssessmentResultsInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationTaskAssessmentResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTaskAssessmentResultsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Validators::ReplicationTaskAssessmentResultList.validate!(input[:replication_task_assessment_results], context: "#{context}[:replication_task_assessment_results]") unless input[:replication_task_assessment_results].nil?
      end
    end

    class DescribeReplicationTaskAssessmentRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTaskAssessmentRunsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationTaskAssessmentRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTaskAssessmentRunsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReplicationTaskAssessmentRunList.validate!(input[:replication_task_assessment_runs], context: "#{context}[:replication_task_assessment_runs]") unless input[:replication_task_assessment_runs].nil?
      end
    end

    class DescribeReplicationTaskIndividualAssessmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTaskIndividualAssessmentsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationTaskIndividualAssessmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTaskIndividualAssessmentsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReplicationTaskIndividualAssessmentList.validate!(input[:replication_task_individual_assessments], context: "#{context}[:replication_task_individual_assessments]") unless input[:replication_task_individual_assessments].nil?
      end
    end

    class DescribeReplicationTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTasksInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:without_settings], ::TrueClass, ::FalseClass, context: "#{context}[:without_settings]")
      end
    end

    class DescribeReplicationTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationTasksOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReplicationTaskList.validate!(input[:replication_tasks], context: "#{context}[:replication_tasks]") unless input[:replication_tasks].nil?
      end
    end

    class DescribeSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchemasInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchemasOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::SchemaList.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
      end
    end

    class DescribeTableStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeTableStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableStatisticsOutput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Validators::TableStatisticsList.validate!(input[:table_statistics], context: "#{context}[:table_statistics]") unless input[:table_statistics].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DmsTransferSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DmsTransferSettings, context: context)
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class DocDbSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocDbSettings, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:nesting_level], ::String, context: "#{context}[:nesting_level]")
        Hearth::Validator.validate!(input[:extract_doc_id], ::TrueClass, ::FalseClass, context: "#{context}[:extract_doc_id]")
        Hearth::Validator.validate!(input[:docs_to_investigate], ::Integer, context: "#{context}[:docs_to_investigate]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class DynamoDbSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDbSettings, context: context)
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
      end
    end

    class ElasticsearchSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchSettings, context: context)
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:endpoint_uri], ::String, context: "#{context}[:endpoint_uri]")
        Hearth::Validator.validate!(input[:full_load_error_percentage], ::Integer, context: "#{context}[:full_load_error_percentage]")
        Hearth::Validator.validate!(input[:error_retry_duration], ::Integer, context: "#{context}[:error_retry_duration]")
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_identifier], ::String, context: "#{context}[:endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:engine_display_name], ::String, context: "#{context}[:engine_display_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:extra_connection_attributes], ::String, context: "#{context}[:extra_connection_attributes]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:ssl_mode], ::String, context: "#{context}[:ssl_mode]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:external_table_definition], ::String, context: "#{context}[:external_table_definition]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Validators::DynamoDbSettings.validate!(input[:dynamo_db_settings], context: "#{context}[:dynamo_db_settings]") unless input[:dynamo_db_settings].nil?
        Validators::S3Settings.validate!(input[:s3_settings], context: "#{context}[:s3_settings]") unless input[:s3_settings].nil?
        Validators::DmsTransferSettings.validate!(input[:dms_transfer_settings], context: "#{context}[:dms_transfer_settings]") unless input[:dms_transfer_settings].nil?
        Validators::MongoDbSettings.validate!(input[:mongo_db_settings], context: "#{context}[:mongo_db_settings]") unless input[:mongo_db_settings].nil?
        Validators::KinesisSettings.validate!(input[:kinesis_settings], context: "#{context}[:kinesis_settings]") unless input[:kinesis_settings].nil?
        Validators::KafkaSettings.validate!(input[:kafka_settings], context: "#{context}[:kafka_settings]") unless input[:kafka_settings].nil?
        Validators::ElasticsearchSettings.validate!(input[:elasticsearch_settings], context: "#{context}[:elasticsearch_settings]") unless input[:elasticsearch_settings].nil?
        Validators::NeptuneSettings.validate!(input[:neptune_settings], context: "#{context}[:neptune_settings]") unless input[:neptune_settings].nil?
        Validators::RedshiftSettings.validate!(input[:redshift_settings], context: "#{context}[:redshift_settings]") unless input[:redshift_settings].nil?
        Validators::PostgreSQLSettings.validate!(input[:postgre_sql_settings], context: "#{context}[:postgre_sql_settings]") unless input[:postgre_sql_settings].nil?
        Validators::MySQLSettings.validate!(input[:my_sql_settings], context: "#{context}[:my_sql_settings]") unless input[:my_sql_settings].nil?
        Validators::OracleSettings.validate!(input[:oracle_settings], context: "#{context}[:oracle_settings]") unless input[:oracle_settings].nil?
        Validators::SybaseSettings.validate!(input[:sybase_settings], context: "#{context}[:sybase_settings]") unless input[:sybase_settings].nil?
        Validators::MicrosoftSQLServerSettings.validate!(input[:microsoft_sql_server_settings], context: "#{context}[:microsoft_sql_server_settings]") unless input[:microsoft_sql_server_settings].nil?
        Validators::IBMDb2Settings.validate!(input[:ibm_db2_settings], context: "#{context}[:ibm_db2_settings]") unless input[:ibm_db2_settings].nil?
        Validators::DocDbSettings.validate!(input[:doc_db_settings], context: "#{context}[:doc_db_settings]") unless input[:doc_db_settings].nil?
        Validators::RedisSettings.validate!(input[:redis_settings], context: "#{context}[:redis_settings]") unless input[:redis_settings].nil?
        Validators::GcpMySQLSettings.validate!(input[:gcp_my_sql_settings], context: "#{context}[:gcp_my_sql_settings]") unless input[:gcp_my_sql_settings].nil?
      end
    end

    class EndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointSetting, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::EndpointSettingEnumValues.validate!(input[:enum_values], context: "#{context}[:enum_values]") unless input[:enum_values].nil?
        Hearth::Validator.validate!(input[:sensitive], ::TrueClass, ::FalseClass, context: "#{context}[:sensitive]")
        Hearth::Validator.validate!(input[:units], ::String, context: "#{context}[:units]")
        Hearth::Validator.validate!(input[:applicability], ::String, context: "#{context}[:applicability]")
        Hearth::Validator.validate!(input[:int_value_min], ::Integer, context: "#{context}[:int_value_min]")
        Hearth::Validator.validate!(input[:int_value_max], ::Integer, context: "#{context}[:int_value_max]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class EndpointSettingEnumValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EndpointSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndpointSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
      end
    end

    class EventCategoriesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventCategoryGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventCategoryGroup, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
      end
    end

    class EventCategoryGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventCategoryGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSubscription, context: context)
        Hearth::Validator.validate!(input[:customer_aws_id], ::String, context: "#{context}[:customer_aws_id]")
        Hearth::Validator.validate!(input[:cust_subscription_id], ::String, context: "#{context}[:cust_subscription_id]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:subscription_creation_time], ::String, context: "#{context}[:subscription_creation_time]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::SourceIdsList.validate!(input[:source_ids_list], context: "#{context}[:source_ids_list]") unless input[:source_ids_list].nil?
        Validators::EventCategoriesList.validate!(input[:event_categories_list], context: "#{context}[:event_categories_list]") unless input[:event_categories_list].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class EventSubscriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExcludeTestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FleetAdvisorLsaAnalysisResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetAdvisorLsaAnalysisResponse, context: context)
        Hearth::Validator.validate!(input[:lsa_analysis_id], ::String, context: "#{context}[:lsa_analysis_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class FleetAdvisorLsaAnalysisResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FleetAdvisorLsaAnalysisResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetAdvisorSchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SchemaResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetAdvisorSchemaObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FleetAdvisorSchemaObjectResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetAdvisorSchemaObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetAdvisorSchemaObjectResponse, context: context)
        Hearth::Validator.validate!(input[:schema_id], ::String, context: "#{context}[:schema_id]")
        Hearth::Validator.validate!(input[:object_type], ::String, context: "#{context}[:object_type]")
        Hearth::Validator.validate!(input[:number_of_objects], ::Integer, context: "#{context}[:number_of_objects]")
        Hearth::Validator.validate!(input[:code_line_count], ::Integer, context: "#{context}[:code_line_count]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
      end
    end

    class GcpMySQLSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GcpMySQLSettings, context: context)
        Hearth::Validator.validate!(input[:after_connect_script], ::String, context: "#{context}[:after_connect_script]")
        Hearth::Validator.validate!(input[:clean_source_metadata_on_mismatch], ::TrueClass, ::FalseClass, context: "#{context}[:clean_source_metadata_on_mismatch]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:events_poll_interval], ::Integer, context: "#{context}[:events_poll_interval]")
        Hearth::Validator.validate!(input[:target_db_type], ::String, context: "#{context}[:target_db_type]")
        Hearth::Validator.validate!(input[:max_file_size], ::Integer, context: "#{context}[:max_file_size]")
        Hearth::Validator.validate!(input[:parallel_load_threads], ::Integer, context: "#{context}[:parallel_load_threads]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:server_timezone], ::String, context: "#{context}[:server_timezone]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class IBMDb2Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IBMDb2Settings, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:set_data_capture_changes], ::TrueClass, ::FalseClass, context: "#{context}[:set_data_capture_changes]")
        Hearth::Validator.validate!(input[:current_lsn], ::String, context: "#{context}[:current_lsn]")
        Hearth::Validator.validate!(input[:max_k_bytes_per_read], ::Integer, context: "#{context}[:max_k_bytes_per_read]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class ImportCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_identifier], ::String, context: "#{context}[:certificate_identifier]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Hearth::Validator.validate!(input[:certificate_wallet], ::String, context: "#{context}[:certificate_wallet]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImportCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCertificateOutput, context: context)
        Validators::Certificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class IncludeTestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IndividualAssessmentNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsufficientResourceCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientResourceCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IntegerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidCertificateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCertificateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InventoryData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryData, context: context)
        Hearth::Validator.validate!(input[:number_of_databases], ::Integer, context: "#{context}[:number_of_databases]")
        Hearth::Validator.validate!(input[:number_of_schemas], ::Integer, context: "#{context}[:number_of_schemas]")
      end
    end

    class KMSAccessDeniedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSAccessDeniedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSDisabledFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSDisabledFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSKeyNotAccessibleFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSKeyNotAccessibleFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSThrottlingFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSThrottlingFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KafkaSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaSettings, context: context)
        Hearth::Validator.validate!(input[:broker], ::String, context: "#{context}[:broker]")
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
        Hearth::Validator.validate!(input[:include_transaction_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_transaction_details]")
        Hearth::Validator.validate!(input[:include_partition_value], ::TrueClass, ::FalseClass, context: "#{context}[:include_partition_value]")
        Hearth::Validator.validate!(input[:partition_include_schema_table], ::TrueClass, ::FalseClass, context: "#{context}[:partition_include_schema_table]")
        Hearth::Validator.validate!(input[:include_table_alter_operations], ::TrueClass, ::FalseClass, context: "#{context}[:include_table_alter_operations]")
        Hearth::Validator.validate!(input[:include_control_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_control_details]")
        Hearth::Validator.validate!(input[:message_max_bytes], ::Integer, context: "#{context}[:message_max_bytes]")
        Hearth::Validator.validate!(input[:include_null_and_empty], ::TrueClass, ::FalseClass, context: "#{context}[:include_null_and_empty]")
        Hearth::Validator.validate!(input[:security_protocol], ::String, context: "#{context}[:security_protocol]")
        Hearth::Validator.validate!(input[:ssl_client_certificate_arn], ::String, context: "#{context}[:ssl_client_certificate_arn]")
        Hearth::Validator.validate!(input[:ssl_client_key_arn], ::String, context: "#{context}[:ssl_client_key_arn]")
        Hearth::Validator.validate!(input[:ssl_client_key_password], ::String, context: "#{context}[:ssl_client_key_password]")
        Hearth::Validator.validate!(input[:ssl_ca_certificate_arn], ::String, context: "#{context}[:ssl_ca_certificate_arn]")
        Hearth::Validator.validate!(input[:sasl_username], ::String, context: "#{context}[:sasl_username]")
        Hearth::Validator.validate!(input[:sasl_password], ::String, context: "#{context}[:sasl_password]")
        Hearth::Validator.validate!(input[:no_hex_prefix], ::TrueClass, ::FalseClass, context: "#{context}[:no_hex_prefix]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KinesisSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisSettings, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:include_transaction_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_transaction_details]")
        Hearth::Validator.validate!(input[:include_partition_value], ::TrueClass, ::FalseClass, context: "#{context}[:include_partition_value]")
        Hearth::Validator.validate!(input[:partition_include_schema_table], ::TrueClass, ::FalseClass, context: "#{context}[:partition_include_schema_table]")
        Hearth::Validator.validate!(input[:include_table_alter_operations], ::TrueClass, ::FalseClass, context: "#{context}[:include_table_alter_operations]")
        Hearth::Validator.validate!(input[:include_control_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_control_details]")
        Hearth::Validator.validate!(input[:include_null_and_empty], ::TrueClass, ::FalseClass, context: "#{context}[:include_null_and_empty]")
        Hearth::Validator.validate!(input[:no_hex_prefix], ::TrueClass, ::FalseClass, context: "#{context}[:no_hex_prefix]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::ArnList.validate!(input[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless input[:resource_arn_list].nil?
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class MicrosoftSQLServerSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MicrosoftSQLServerSettings, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:bcp_packet_size], ::Integer, context: "#{context}[:bcp_packet_size]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:control_tables_file_group], ::String, context: "#{context}[:control_tables_file_group]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:query_single_always_on_node], ::TrueClass, ::FalseClass, context: "#{context}[:query_single_always_on_node]")
        Hearth::Validator.validate!(input[:read_backup_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_backup_only]")
        Hearth::Validator.validate!(input[:safeguard_policy], ::String, context: "#{context}[:safeguard_policy]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:use_bcp_full_load], ::TrueClass, ::FalseClass, context: "#{context}[:use_bcp_full_load]")
        Hearth::Validator.validate!(input[:use_third_party_backup_device], ::TrueClass, ::FalseClass, context: "#{context}[:use_third_party_backup_device]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class ModifyEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:endpoint_identifier], ::String, context: "#{context}[:endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:extra_connection_attributes], ::String, context: "#{context}[:extra_connection_attributes]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:ssl_mode], ::String, context: "#{context}[:ssl_mode]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:external_table_definition], ::String, context: "#{context}[:external_table_definition]")
        Validators::DynamoDbSettings.validate!(input[:dynamo_db_settings], context: "#{context}[:dynamo_db_settings]") unless input[:dynamo_db_settings].nil?
        Validators::S3Settings.validate!(input[:s3_settings], context: "#{context}[:s3_settings]") unless input[:s3_settings].nil?
        Validators::DmsTransferSettings.validate!(input[:dms_transfer_settings], context: "#{context}[:dms_transfer_settings]") unless input[:dms_transfer_settings].nil?
        Validators::MongoDbSettings.validate!(input[:mongo_db_settings], context: "#{context}[:mongo_db_settings]") unless input[:mongo_db_settings].nil?
        Validators::KinesisSettings.validate!(input[:kinesis_settings], context: "#{context}[:kinesis_settings]") unless input[:kinesis_settings].nil?
        Validators::KafkaSettings.validate!(input[:kafka_settings], context: "#{context}[:kafka_settings]") unless input[:kafka_settings].nil?
        Validators::ElasticsearchSettings.validate!(input[:elasticsearch_settings], context: "#{context}[:elasticsearch_settings]") unless input[:elasticsearch_settings].nil?
        Validators::NeptuneSettings.validate!(input[:neptune_settings], context: "#{context}[:neptune_settings]") unless input[:neptune_settings].nil?
        Validators::RedshiftSettings.validate!(input[:redshift_settings], context: "#{context}[:redshift_settings]") unless input[:redshift_settings].nil?
        Validators::PostgreSQLSettings.validate!(input[:postgre_sql_settings], context: "#{context}[:postgre_sql_settings]") unless input[:postgre_sql_settings].nil?
        Validators::MySQLSettings.validate!(input[:my_sql_settings], context: "#{context}[:my_sql_settings]") unless input[:my_sql_settings].nil?
        Validators::OracleSettings.validate!(input[:oracle_settings], context: "#{context}[:oracle_settings]") unless input[:oracle_settings].nil?
        Validators::SybaseSettings.validate!(input[:sybase_settings], context: "#{context}[:sybase_settings]") unless input[:sybase_settings].nil?
        Validators::MicrosoftSQLServerSettings.validate!(input[:microsoft_sql_server_settings], context: "#{context}[:microsoft_sql_server_settings]") unless input[:microsoft_sql_server_settings].nil?
        Validators::IBMDb2Settings.validate!(input[:ibm_db2_settings], context: "#{context}[:ibm_db2_settings]") unless input[:ibm_db2_settings].nil?
        Validators::DocDbSettings.validate!(input[:doc_db_settings], context: "#{context}[:doc_db_settings]") unless input[:doc_db_settings].nil?
        Validators::RedisSettings.validate!(input[:redis_settings], context: "#{context}[:redis_settings]") unless input[:redis_settings].nil?
        Hearth::Validator.validate!(input[:exact_settings], ::TrueClass, ::FalseClass, context: "#{context}[:exact_settings]")
        Validators::GcpMySQLSettings.validate!(input[:gcp_my_sql_settings], context: "#{context}[:gcp_my_sql_settings]") unless input[:gcp_my_sql_settings].nil?
      end
    end

    class ModifyEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEndpointOutput, context: context)
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class ModifyEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ModifyEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class ModifyReplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:replication_instance_class], ::String, context: "#{context}[:replication_instance_class]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:allow_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_major_version_upgrade]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:replication_instance_identifier], ::String, context: "#{context}[:replication_instance_identifier]")
      end
    end

    class ModifyReplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationInstanceOutput, context: context)
        Validators::ReplicationInstance.validate!(input[:replication_instance], context: "#{context}[:replication_instance]") unless input[:replication_instance].nil?
      end
    end

    class ModifyReplicationSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:replication_subnet_group_identifier], ::String, context: "#{context}[:replication_subnet_group_identifier]")
        Hearth::Validator.validate!(input[:replication_subnet_group_description], ::String, context: "#{context}[:replication_subnet_group_description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class ModifyReplicationSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationSubnetGroupOutput, context: context)
        Validators::ReplicationSubnetGroup.validate!(input[:replication_subnet_group], context: "#{context}[:replication_subnet_group]") unless input[:replication_subnet_group].nil?
      end
    end

    class ModifyReplicationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationTaskInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:replication_task_identifier], ::String, context: "#{context}[:replication_task_identifier]")
        Hearth::Validator.validate!(input[:migration_type], ::String, context: "#{context}[:migration_type]")
        Hearth::Validator.validate!(input[:table_mappings], ::String, context: "#{context}[:table_mappings]")
        Hearth::Validator.validate!(input[:replication_task_settings], ::String, context: "#{context}[:replication_task_settings]")
        Hearth::Validator.validate!(input[:cdc_start_time], ::Time, context: "#{context}[:cdc_start_time]")
        Hearth::Validator.validate!(input[:cdc_start_position], ::String, context: "#{context}[:cdc_start_position]")
        Hearth::Validator.validate!(input[:cdc_stop_position], ::String, context: "#{context}[:cdc_stop_position]")
        Hearth::Validator.validate!(input[:task_data], ::String, context: "#{context}[:task_data]")
      end
    end

    class ModifyReplicationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationTaskOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class MongoDbSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MongoDbSettings, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:auth_mechanism], ::String, context: "#{context}[:auth_mechanism]")
        Hearth::Validator.validate!(input[:nesting_level], ::String, context: "#{context}[:nesting_level]")
        Hearth::Validator.validate!(input[:extract_doc_id], ::String, context: "#{context}[:extract_doc_id]")
        Hearth::Validator.validate!(input[:docs_to_investigate], ::String, context: "#{context}[:docs_to_investigate]")
        Hearth::Validator.validate!(input[:auth_source], ::String, context: "#{context}[:auth_source]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class MoveReplicationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MoveReplicationTaskInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:target_replication_instance_arn], ::String, context: "#{context}[:target_replication_instance_arn]")
      end
    end

    class MoveReplicationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MoveReplicationTaskOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class MySQLSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MySQLSettings, context: context)
        Hearth::Validator.validate!(input[:after_connect_script], ::String, context: "#{context}[:after_connect_script]")
        Hearth::Validator.validate!(input[:clean_source_metadata_on_mismatch], ::TrueClass, ::FalseClass, context: "#{context}[:clean_source_metadata_on_mismatch]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:events_poll_interval], ::Integer, context: "#{context}[:events_poll_interval]")
        Hearth::Validator.validate!(input[:target_db_type], ::String, context: "#{context}[:target_db_type]")
        Hearth::Validator.validate!(input[:max_file_size], ::Integer, context: "#{context}[:max_file_size]")
        Hearth::Validator.validate!(input[:parallel_load_threads], ::Integer, context: "#{context}[:parallel_load_threads]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:server_timezone], ::String, context: "#{context}[:server_timezone]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class NeptuneSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NeptuneSettings, context: context)
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_bucket_folder], ::String, context: "#{context}[:s3_bucket_folder]")
        Hearth::Validator.validate!(input[:error_retry_duration], ::Integer, context: "#{context}[:error_retry_duration]")
        Hearth::Validator.validate!(input[:max_file_size], ::Integer, context: "#{context}[:max_file_size]")
        Hearth::Validator.validate!(input[:max_retry_count], ::Integer, context: "#{context}[:max_retry_count]")
        Hearth::Validator.validate!(input[:iam_auth_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_auth_enabled]")
      end
    end

    class OracleSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OracleSettings, context: context)
        Hearth::Validator.validate!(input[:add_supplemental_logging], ::TrueClass, ::FalseClass, context: "#{context}[:add_supplemental_logging]")
        Hearth::Validator.validate!(input[:archived_log_dest_id], ::Integer, context: "#{context}[:archived_log_dest_id]")
        Hearth::Validator.validate!(input[:additional_archived_log_dest_id], ::Integer, context: "#{context}[:additional_archived_log_dest_id]")
        Validators::IntegerList.validate!(input[:extra_archived_log_dest_ids], context: "#{context}[:extra_archived_log_dest_ids]") unless input[:extra_archived_log_dest_ids].nil?
        Hearth::Validator.validate!(input[:allow_select_nested_tables], ::TrueClass, ::FalseClass, context: "#{context}[:allow_select_nested_tables]")
        Hearth::Validator.validate!(input[:parallel_asm_read_threads], ::Integer, context: "#{context}[:parallel_asm_read_threads]")
        Hearth::Validator.validate!(input[:read_ahead_blocks], ::Integer, context: "#{context}[:read_ahead_blocks]")
        Hearth::Validator.validate!(input[:access_alternate_directly], ::TrueClass, ::FalseClass, context: "#{context}[:access_alternate_directly]")
        Hearth::Validator.validate!(input[:use_alternate_folder_for_online], ::TrueClass, ::FalseClass, context: "#{context}[:use_alternate_folder_for_online]")
        Hearth::Validator.validate!(input[:oracle_path_prefix], ::String, context: "#{context}[:oracle_path_prefix]")
        Hearth::Validator.validate!(input[:use_path_prefix], ::String, context: "#{context}[:use_path_prefix]")
        Hearth::Validator.validate!(input[:replace_path_prefix], ::TrueClass, ::FalseClass, context: "#{context}[:replace_path_prefix]")
        Hearth::Validator.validate!(input[:enable_homogenous_tablespace], ::TrueClass, ::FalseClass, context: "#{context}[:enable_homogenous_tablespace]")
        Hearth::Validator.validate!(input[:direct_path_no_log], ::TrueClass, ::FalseClass, context: "#{context}[:direct_path_no_log]")
        Hearth::Validator.validate!(input[:archived_logs_only], ::TrueClass, ::FalseClass, context: "#{context}[:archived_logs_only]")
        Hearth::Validator.validate!(input[:asm_password], ::String, context: "#{context}[:asm_password]")
        Hearth::Validator.validate!(input[:asm_server], ::String, context: "#{context}[:asm_server]")
        Hearth::Validator.validate!(input[:asm_user], ::String, context: "#{context}[:asm_user]")
        Hearth::Validator.validate!(input[:char_length_semantics], ::String, context: "#{context}[:char_length_semantics]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:direct_path_parallel_load], ::TrueClass, ::FalseClass, context: "#{context}[:direct_path_parallel_load]")
        Hearth::Validator.validate!(input[:fail_tasks_on_lob_truncation], ::TrueClass, ::FalseClass, context: "#{context}[:fail_tasks_on_lob_truncation]")
        Hearth::Validator.validate!(input[:number_datatype_scale], ::Integer, context: "#{context}[:number_datatype_scale]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:read_table_space_name], ::TrueClass, ::FalseClass, context: "#{context}[:read_table_space_name]")
        Hearth::Validator.validate!(input[:retry_interval], ::Integer, context: "#{context}[:retry_interval]")
        Hearth::Validator.validate!(input[:security_db_encryption], ::String, context: "#{context}[:security_db_encryption]")
        Hearth::Validator.validate!(input[:security_db_encryption_name], ::String, context: "#{context}[:security_db_encryption_name]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:spatial_data_option_to_geo_json_function_name], ::String, context: "#{context}[:spatial_data_option_to_geo_json_function_name]")
        Hearth::Validator.validate!(input[:standby_delay_time], ::Integer, context: "#{context}[:standby_delay_time]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:use_b_file], ::TrueClass, ::FalseClass, context: "#{context}[:use_b_file]")
        Hearth::Validator.validate!(input[:use_direct_path_full_load], ::TrueClass, ::FalseClass, context: "#{context}[:use_direct_path_full_load]")
        Hearth::Validator.validate!(input[:use_logminer_reader], ::TrueClass, ::FalseClass, context: "#{context}[:use_logminer_reader]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
        Hearth::Validator.validate!(input[:secrets_manager_oracle_asm_access_role_arn], ::String, context: "#{context}[:secrets_manager_oracle_asm_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_oracle_asm_secret_id], ::String, context: "#{context}[:secrets_manager_oracle_asm_secret_id]")
      end
    end

    class OrderableReplicationInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderableReplicationInstance, context: context)
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:replication_instance_class], ::String, context: "#{context}[:replication_instance_class]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:min_allocated_storage], ::Integer, context: "#{context}[:min_allocated_storage]")
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Hearth::Validator.validate!(input[:default_allocated_storage], ::Integer, context: "#{context}[:default_allocated_storage]")
        Hearth::Validator.validate!(input[:included_allocated_storage], ::Integer, context: "#{context}[:included_allocated_storage]")
        Validators::AvailabilityZonesList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:release_status], ::String, context: "#{context}[:release_status]")
      end
    end

    class OrderableReplicationInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OrderableReplicationInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingMaintenanceAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingMaintenanceAction, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:auto_applied_after_date], ::Time, context: "#{context}[:auto_applied_after_date]")
        Hearth::Validator.validate!(input[:forced_apply_date], ::Time, context: "#{context}[:forced_apply_date]")
        Hearth::Validator.validate!(input[:opt_in_status], ::String, context: "#{context}[:opt_in_status]")
        Hearth::Validator.validate!(input[:current_apply_date], ::Time, context: "#{context}[:current_apply_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class PendingMaintenanceActionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PendingMaintenanceAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingMaintenanceActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePendingMaintenanceActions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PostgreSQLSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostgreSQLSettings, context: context)
        Hearth::Validator.validate!(input[:after_connect_script], ::String, context: "#{context}[:after_connect_script]")
        Hearth::Validator.validate!(input[:capture_ddls], ::TrueClass, ::FalseClass, context: "#{context}[:capture_ddls]")
        Hearth::Validator.validate!(input[:max_file_size], ::Integer, context: "#{context}[:max_file_size]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:ddl_artifacts_schema], ::String, context: "#{context}[:ddl_artifacts_schema]")
        Hearth::Validator.validate!(input[:execute_timeout], ::Integer, context: "#{context}[:execute_timeout]")
        Hearth::Validator.validate!(input[:fail_tasks_on_lob_truncation], ::TrueClass, ::FalseClass, context: "#{context}[:fail_tasks_on_lob_truncation]")
        Hearth::Validator.validate!(input[:heartbeat_enable], ::TrueClass, ::FalseClass, context: "#{context}[:heartbeat_enable]")
        Hearth::Validator.validate!(input[:heartbeat_schema], ::String, context: "#{context}[:heartbeat_schema]")
        Hearth::Validator.validate!(input[:heartbeat_frequency], ::Integer, context: "#{context}[:heartbeat_frequency]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:plugin_name], ::String, context: "#{context}[:plugin_name]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class RebootReplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootReplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:force_failover], ::TrueClass, ::FalseClass, context: "#{context}[:force_failover]")
        Hearth::Validator.validate!(input[:force_planned_failover], ::TrueClass, ::FalseClass, context: "#{context}[:force_planned_failover]")
      end
    end

    class RebootReplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootReplicationInstanceOutput, context: context)
        Validators::ReplicationInstance.validate!(input[:replication_instance], context: "#{context}[:replication_instance]") unless input[:replication_instance].nil?
      end
    end

    class RedisSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedisSettings, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:ssl_security_protocol], ::String, context: "#{context}[:ssl_security_protocol]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:auth_user_name], ::String, context: "#{context}[:auth_user_name]")
        Hearth::Validator.validate!(input[:auth_password], ::String, context: "#{context}[:auth_password]")
        Hearth::Validator.validate!(input[:ssl_ca_certificate_arn], ::String, context: "#{context}[:ssl_ca_certificate_arn]")
      end
    end

    class RedshiftSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftSettings, context: context)
        Hearth::Validator.validate!(input[:accept_any_date], ::TrueClass, ::FalseClass, context: "#{context}[:accept_any_date]")
        Hearth::Validator.validate!(input[:after_connect_script], ::String, context: "#{context}[:after_connect_script]")
        Hearth::Validator.validate!(input[:bucket_folder], ::String, context: "#{context}[:bucket_folder]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:case_sensitive_names], ::TrueClass, ::FalseClass, context: "#{context}[:case_sensitive_names]")
        Hearth::Validator.validate!(input[:comp_update], ::TrueClass, ::FalseClass, context: "#{context}[:comp_update]")
        Hearth::Validator.validate!(input[:connection_timeout], ::Integer, context: "#{context}[:connection_timeout]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:date_format], ::String, context: "#{context}[:date_format]")
        Hearth::Validator.validate!(input[:empty_as_null], ::TrueClass, ::FalseClass, context: "#{context}[:empty_as_null]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:explicit_ids], ::TrueClass, ::FalseClass, context: "#{context}[:explicit_ids]")
        Hearth::Validator.validate!(input[:file_transfer_upload_streams], ::Integer, context: "#{context}[:file_transfer_upload_streams]")
        Hearth::Validator.validate!(input[:load_timeout], ::Integer, context: "#{context}[:load_timeout]")
        Hearth::Validator.validate!(input[:max_file_size], ::Integer, context: "#{context}[:max_file_size]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:remove_quotes], ::TrueClass, ::FalseClass, context: "#{context}[:remove_quotes]")
        Hearth::Validator.validate!(input[:replace_invalid_chars], ::String, context: "#{context}[:replace_invalid_chars]")
        Hearth::Validator.validate!(input[:replace_chars], ::String, context: "#{context}[:replace_chars]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:server_side_encryption_kms_key_id], ::String, context: "#{context}[:server_side_encryption_kms_key_id]")
        Hearth::Validator.validate!(input[:time_format], ::String, context: "#{context}[:time_format]")
        Hearth::Validator.validate!(input[:trim_blanks], ::TrueClass, ::FalseClass, context: "#{context}[:trim_blanks]")
        Hearth::Validator.validate!(input[:truncate_columns], ::TrueClass, ::FalseClass, context: "#{context}[:truncate_columns]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:write_buffer_size], ::Integer, context: "#{context}[:write_buffer_size]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class RefreshSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshSchemasInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
      end
    end

    class RefreshSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshSchemasOutput, context: context)
        Validators::RefreshSchemasStatus.validate!(input[:refresh_schemas_status], context: "#{context}[:refresh_schemas_status]") unless input[:refresh_schemas_status].nil?
      end
    end

    class RefreshSchemasStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshSchemasStatus, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_refresh_date], ::Time, context: "#{context}[:last_refresh_date]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
      end
    end

    class ReloadTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReloadTablesInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Validators::TableListToReload.validate!(input[:tables_to_reload], context: "#{context}[:tables_to_reload]") unless input[:tables_to_reload].nil?
        Hearth::Validator.validate!(input[:reload_option], ::String, context: "#{context}[:reload_option]")
      end
    end

    class ReloadTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReloadTablesOutput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
      end
    end

    class ReplicationInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationInstance, context: context)
        Hearth::Validator.validate!(input[:replication_instance_identifier], ::String, context: "#{context}[:replication_instance_identifier]")
        Hearth::Validator.validate!(input[:replication_instance_class], ::String, context: "#{context}[:replication_instance_class]")
        Hearth::Validator.validate!(input[:replication_instance_status], ::String, context: "#{context}[:replication_instance_status]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:instance_create_time], ::Time, context: "#{context}[:instance_create_time]")
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Validators::ReplicationSubnetGroup.validate!(input[:replication_subnet_group], context: "#{context}[:replication_subnet_group]") unless input[:replication_subnet_group].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::ReplicationPendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:replication_instance_public_ip_address], ::String, context: "#{context}[:replication_instance_public_ip_address]")
        Hearth::Validator.validate!(input[:replication_instance_private_ip_address], ::String, context: "#{context}[:replication_instance_private_ip_address]")
        Validators::ReplicationInstancePublicIpAddressList.validate!(input[:replication_instance_public_ip_addresses], context: "#{context}[:replication_instance_public_ip_addresses]") unless input[:replication_instance_public_ip_addresses].nil?
        Validators::ReplicationInstancePrivateIpAddressList.validate!(input[:replication_instance_private_ip_addresses], context: "#{context}[:replication_instance_private_ip_addresses]") unless input[:replication_instance_private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:secondary_availability_zone], ::String, context: "#{context}[:secondary_availability_zone]")
        Hearth::Validator.validate!(input[:free_until], ::Time, context: "#{context}[:free_until]")
        Hearth::Validator.validate!(input[:dns_name_servers], ::String, context: "#{context}[:dns_name_servers]")
      end
    end

    class ReplicationInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationInstancePrivateIpAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationInstancePublicIpAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationInstanceTaskLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationInstanceTaskLog, context: context)
        Hearth::Validator.validate!(input[:replication_task_name], ::String, context: "#{context}[:replication_task_name]")
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:replication_instance_task_log_size], ::Integer, context: "#{context}[:replication_instance_task_log_size]")
      end
    end

    class ReplicationInstanceTaskLogsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationInstanceTaskLog.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationPendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationPendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:replication_instance_class], ::String, context: "#{context}[:replication_instance_class]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
      end
    end

    class ReplicationSubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationSubnetGroup, context: context)
        Hearth::Validator.validate!(input[:replication_subnet_group_identifier], ::String, context: "#{context}[:replication_subnet_group_identifier]")
        Hearth::Validator.validate!(input[:replication_subnet_group_description], ::String, context: "#{context}[:replication_subnet_group_description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_group_status], ::String, context: "#{context}[:subnet_group_status]")
        Validators::SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class ReplicationSubnetGroupDoesNotCoverEnoughAZs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationSubnetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationSubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTask, context: context)
        Hearth::Validator.validate!(input[:replication_task_identifier], ::String, context: "#{context}[:replication_task_identifier]")
        Hearth::Validator.validate!(input[:source_endpoint_arn], ::String, context: "#{context}[:source_endpoint_arn]")
        Hearth::Validator.validate!(input[:target_endpoint_arn], ::String, context: "#{context}[:target_endpoint_arn]")
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:migration_type], ::String, context: "#{context}[:migration_type]")
        Hearth::Validator.validate!(input[:table_mappings], ::String, context: "#{context}[:table_mappings]")
        Hearth::Validator.validate!(input[:replication_task_settings], ::String, context: "#{context}[:replication_task_settings]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:stop_reason], ::String, context: "#{context}[:stop_reason]")
        Hearth::Validator.validate!(input[:replication_task_creation_date], ::Time, context: "#{context}[:replication_task_creation_date]")
        Hearth::Validator.validate!(input[:replication_task_start_date], ::Time, context: "#{context}[:replication_task_start_date]")
        Hearth::Validator.validate!(input[:cdc_start_position], ::String, context: "#{context}[:cdc_start_position]")
        Hearth::Validator.validate!(input[:cdc_stop_position], ::String, context: "#{context}[:cdc_stop_position]")
        Hearth::Validator.validate!(input[:recovery_checkpoint], ::String, context: "#{context}[:recovery_checkpoint]")
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Validators::ReplicationTaskStats.validate!(input[:replication_task_stats], context: "#{context}[:replication_task_stats]") unless input[:replication_task_stats].nil?
        Hearth::Validator.validate!(input[:task_data], ::String, context: "#{context}[:task_data]")
        Hearth::Validator.validate!(input[:target_replication_instance_arn], ::String, context: "#{context}[:target_replication_instance_arn]")
      end
    end

    class ReplicationTaskAssessmentResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTaskAssessmentResult, context: context)
        Hearth::Validator.validate!(input[:replication_task_identifier], ::String, context: "#{context}[:replication_task_identifier]")
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:replication_task_last_assessment_date], ::Time, context: "#{context}[:replication_task_last_assessment_date]")
        Hearth::Validator.validate!(input[:assessment_status], ::String, context: "#{context}[:assessment_status]")
        Hearth::Validator.validate!(input[:assessment_results_file], ::String, context: "#{context}[:assessment_results_file]")
        Hearth::Validator.validate!(input[:assessment_results], ::String, context: "#{context}[:assessment_results]")
        Hearth::Validator.validate!(input[:s3_object_url], ::String, context: "#{context}[:s3_object_url]")
      end
    end

    class ReplicationTaskAssessmentResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationTaskAssessmentResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTaskAssessmentRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTaskAssessmentRun, context: context)
        Hearth::Validator.validate!(input[:replication_task_assessment_run_arn], ::String, context: "#{context}[:replication_task_assessment_run_arn]")
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:replication_task_assessment_run_creation_date], ::Time, context: "#{context}[:replication_task_assessment_run_creation_date]")
        Validators::ReplicationTaskAssessmentRunProgress.validate!(input[:assessment_progress], context: "#{context}[:assessment_progress]") unless input[:assessment_progress].nil?
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:result_location_bucket], ::String, context: "#{context}[:result_location_bucket]")
        Hearth::Validator.validate!(input[:result_location_folder], ::String, context: "#{context}[:result_location_folder]")
        Hearth::Validator.validate!(input[:result_encryption_mode], ::String, context: "#{context}[:result_encryption_mode]")
        Hearth::Validator.validate!(input[:result_kms_key_arn], ::String, context: "#{context}[:result_kms_key_arn]")
        Hearth::Validator.validate!(input[:assessment_run_name], ::String, context: "#{context}[:assessment_run_name]")
      end
    end

    class ReplicationTaskAssessmentRunList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationTaskAssessmentRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTaskAssessmentRunProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTaskAssessmentRunProgress, context: context)
        Hearth::Validator.validate!(input[:individual_assessment_count], ::Integer, context: "#{context}[:individual_assessment_count]")
        Hearth::Validator.validate!(input[:individual_assessment_completed_count], ::Integer, context: "#{context}[:individual_assessment_completed_count]")
      end
    end

    class ReplicationTaskIndividualAssessment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTaskIndividualAssessment, context: context)
        Hearth::Validator.validate!(input[:replication_task_individual_assessment_arn], ::String, context: "#{context}[:replication_task_individual_assessment_arn]")
        Hearth::Validator.validate!(input[:replication_task_assessment_run_arn], ::String, context: "#{context}[:replication_task_assessment_run_arn]")
        Hearth::Validator.validate!(input[:individual_assessment_name], ::String, context: "#{context}[:individual_assessment_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:replication_task_individual_assessment_start_date], ::Time, context: "#{context}[:replication_task_individual_assessment_start_date]")
      end
    end

    class ReplicationTaskIndividualAssessmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationTaskIndividualAssessment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTaskStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTaskStats, context: context)
        Hearth::Validator.validate!(input[:full_load_progress_percent], ::Integer, context: "#{context}[:full_load_progress_percent]")
        Hearth::Validator.validate!(input[:elapsed_time_millis], ::Integer, context: "#{context}[:elapsed_time_millis]")
        Hearth::Validator.validate!(input[:tables_loaded], ::Integer, context: "#{context}[:tables_loaded]")
        Hearth::Validator.validate!(input[:tables_loading], ::Integer, context: "#{context}[:tables_loading]")
        Hearth::Validator.validate!(input[:tables_queued], ::Integer, context: "#{context}[:tables_queued]")
        Hearth::Validator.validate!(input[:tables_errored], ::Integer, context: "#{context}[:tables_errored]")
        Hearth::Validator.validate!(input[:fresh_start_date], ::Time, context: "#{context}[:fresh_start_date]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:stop_date], ::Time, context: "#{context}[:stop_date]")
        Hearth::Validator.validate!(input[:full_load_start_date], ::Time, context: "#{context}[:full_load_start_date]")
        Hearth::Validator.validate!(input[:full_load_finish_date], ::Time, context: "#{context}[:full_load_finish_date]")
      end
    end

    class ResourceAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourcePendingMaintenanceActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePendingMaintenanceActions, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Validators::PendingMaintenanceActionDetails.validate!(input[:pending_maintenance_action_details], context: "#{context}[:pending_maintenance_action_details]") unless input[:pending_maintenance_action_details].nil?
      end
    end

    class ResourceQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RunFleetAdvisorLsaAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunFleetAdvisorLsaAnalysisInput, context: context)
      end
    end

    class RunFleetAdvisorLsaAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunFleetAdvisorLsaAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:lsa_analysis_id], ::String, context: "#{context}[:lsa_analysis_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class S3AccessDeniedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3AccessDeniedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3ResourceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ResourceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Settings, context: context)
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:external_table_definition], ::String, context: "#{context}[:external_table_definition]")
        Hearth::Validator.validate!(input[:csv_row_delimiter], ::String, context: "#{context}[:csv_row_delimiter]")
        Hearth::Validator.validate!(input[:csv_delimiter], ::String, context: "#{context}[:csv_delimiter]")
        Hearth::Validator.validate!(input[:bucket_folder], ::String, context: "#{context}[:bucket_folder]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:server_side_encryption_kms_key_id], ::String, context: "#{context}[:server_side_encryption_kms_key_id]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate!(input[:dict_page_size_limit], ::Integer, context: "#{context}[:dict_page_size_limit]")
        Hearth::Validator.validate!(input[:row_group_length], ::Integer, context: "#{context}[:row_group_length]")
        Hearth::Validator.validate!(input[:data_page_size], ::Integer, context: "#{context}[:data_page_size]")
        Hearth::Validator.validate!(input[:parquet_version], ::String, context: "#{context}[:parquet_version]")
        Hearth::Validator.validate!(input[:enable_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:enable_statistics]")
        Hearth::Validator.validate!(input[:include_op_for_full_load], ::TrueClass, ::FalseClass, context: "#{context}[:include_op_for_full_load]")
        Hearth::Validator.validate!(input[:cdc_inserts_only], ::TrueClass, ::FalseClass, context: "#{context}[:cdc_inserts_only]")
        Hearth::Validator.validate!(input[:timestamp_column_name], ::String, context: "#{context}[:timestamp_column_name]")
        Hearth::Validator.validate!(input[:parquet_timestamp_in_millisecond], ::TrueClass, ::FalseClass, context: "#{context}[:parquet_timestamp_in_millisecond]")
        Hearth::Validator.validate!(input[:cdc_inserts_and_updates], ::TrueClass, ::FalseClass, context: "#{context}[:cdc_inserts_and_updates]")
        Hearth::Validator.validate!(input[:date_partition_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:date_partition_enabled]")
        Hearth::Validator.validate!(input[:date_partition_sequence], ::String, context: "#{context}[:date_partition_sequence]")
        Hearth::Validator.validate!(input[:date_partition_delimiter], ::String, context: "#{context}[:date_partition_delimiter]")
        Hearth::Validator.validate!(input[:use_csv_no_sup_value], ::TrueClass, ::FalseClass, context: "#{context}[:use_csv_no_sup_value]")
        Hearth::Validator.validate!(input[:csv_no_sup_value], ::String, context: "#{context}[:csv_no_sup_value]")
        Hearth::Validator.validate!(input[:preserve_transactions], ::TrueClass, ::FalseClass, context: "#{context}[:preserve_transactions]")
        Hearth::Validator.validate!(input[:cdc_path], ::String, context: "#{context}[:cdc_path]")
        Hearth::Validator.validate!(input[:use_task_start_time_for_full_load_timestamp], ::TrueClass, ::FalseClass, context: "#{context}[:use_task_start_time_for_full_load_timestamp]")
        Hearth::Validator.validate!(input[:canned_acl_for_objects], ::String, context: "#{context}[:canned_acl_for_objects]")
        Hearth::Validator.validate!(input[:add_column_name], ::TrueClass, ::FalseClass, context: "#{context}[:add_column_name]")
        Hearth::Validator.validate!(input[:cdc_max_batch_interval], ::Integer, context: "#{context}[:cdc_max_batch_interval]")
        Hearth::Validator.validate!(input[:cdc_min_file_size], ::Integer, context: "#{context}[:cdc_min_file_size]")
        Hearth::Validator.validate!(input[:csv_null_value], ::String, context: "#{context}[:csv_null_value]")
        Hearth::Validator.validate!(input[:ignore_header_rows], ::Integer, context: "#{context}[:ignore_header_rows]")
        Hearth::Validator.validate!(input[:max_file_size], ::Integer, context: "#{context}[:max_file_size]")
        Hearth::Validator.validate!(input[:rfc4180], ::TrueClass, ::FalseClass, context: "#{context}[:rfc4180]")
        Hearth::Validator.validate!(input[:date_partition_timezone], ::String, context: "#{context}[:date_partition_timezone]")
      end
    end

    class SNSInvalidTopicFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSInvalidTopicFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SNSNoAuthorizationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSNoAuthorizationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SchemaResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaResponse, context: context)
        Hearth::Validator.validate!(input[:code_line_count], ::Integer, context: "#{context}[:code_line_count]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:complexity], ::String, context: "#{context}[:complexity]")
        Validators::ServerShortInfoResponse.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
        Validators::DatabaseShortInfoResponse.validate!(input[:database_instance], context: "#{context}[:database_instance]") unless input[:database_instance].nil?
        Hearth::Validator.validate!(input[:schema_id], ::String, context: "#{context}[:schema_id]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Validators::SchemaShortInfoResponse.validate!(input[:original_schema], context: "#{context}[:original_schema]") unless input[:original_schema].nil?
        Hearth::Validator.validate!(input[:similarity], ::Float, context: "#{context}[:similarity]")
      end
    end

    class SchemaShortInfoResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaShortInfoResponse, context: context)
        Hearth::Validator.validate!(input[:schema_id], ::String, context: "#{context}[:schema_id]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:database_id], ::String, context: "#{context}[:database_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:database_ip_address], ::String, context: "#{context}[:database_ip_address]")
      end
    end

    class ServerShortInfoResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerShortInfoResponse, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
      end
    end

    class SourceIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartReplicationTaskAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationTaskAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
      end
    end

    class StartReplicationTaskAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationTaskAssessmentOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class StartReplicationTaskAssessmentRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationTaskAssessmentRunInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:service_access_role_arn], ::String, context: "#{context}[:service_access_role_arn]")
        Hearth::Validator.validate!(input[:result_location_bucket], ::String, context: "#{context}[:result_location_bucket]")
        Hearth::Validator.validate!(input[:result_location_folder], ::String, context: "#{context}[:result_location_folder]")
        Hearth::Validator.validate!(input[:result_encryption_mode], ::String, context: "#{context}[:result_encryption_mode]")
        Hearth::Validator.validate!(input[:result_kms_key_arn], ::String, context: "#{context}[:result_kms_key_arn]")
        Hearth::Validator.validate!(input[:assessment_run_name], ::String, context: "#{context}[:assessment_run_name]")
        Validators::IncludeTestList.validate!(input[:include_only], context: "#{context}[:include_only]") unless input[:include_only].nil?
        Validators::ExcludeTestList.validate!(input[:exclude], context: "#{context}[:exclude]") unless input[:exclude].nil?
      end
    end

    class StartReplicationTaskAssessmentRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationTaskAssessmentRunOutput, context: context)
        Validators::ReplicationTaskAssessmentRun.validate!(input[:replication_task_assessment_run], context: "#{context}[:replication_task_assessment_run]") unless input[:replication_task_assessment_run].nil?
      end
    end

    class StartReplicationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationTaskInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
        Hearth::Validator.validate!(input[:start_replication_task_type], ::String, context: "#{context}[:start_replication_task_type]")
        Hearth::Validator.validate!(input[:cdc_start_time], ::Time, context: "#{context}[:cdc_start_time]")
        Hearth::Validator.validate!(input[:cdc_start_position], ::String, context: "#{context}[:cdc_start_position]")
        Hearth::Validator.validate!(input[:cdc_stop_position], ::String, context: "#{context}[:cdc_stop_position]")
      end
    end

    class StartReplicationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationTaskOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class StopReplicationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopReplicationTaskInput, context: context)
        Hearth::Validator.validate!(input[:replication_task_arn], ::String, context: "#{context}[:replication_task_arn]")
      end
    end

    class StopReplicationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopReplicationTaskOutput, context: context)
        Validators::ReplicationTask.validate!(input[:replication_task], context: "#{context}[:replication_task]") unless input[:replication_task].nil?
      end
    end

    class StorageQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        Validators::AvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
        Hearth::Validator.validate!(input[:subnet_status], ::String, context: "#{context}[:subnet_status]")
      end
    end

    class SubnetAlreadyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetAlreadyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SupportedEndpointType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SupportedEndpointType, context: context)
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:supports_cdc], ::TrueClass, ::FalseClass, context: "#{context}[:supports_cdc]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:replication_instance_engine_minimum_version], ::String, context: "#{context}[:replication_instance_engine_minimum_version]")
        Hearth::Validator.validate!(input[:engine_display_name], ::String, context: "#{context}[:engine_display_name]")
      end
    end

    class SupportedEndpointTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SupportedEndpointType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SybaseSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SybaseSettings, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:secrets_manager_access_role_arn], ::String, context: "#{context}[:secrets_manager_access_role_arn]")
        Hearth::Validator.validate!(input[:secrets_manager_secret_id], ::String, context: "#{context}[:secrets_manager_secret_id]")
      end
    end

    class TableListToReload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TableToReload.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableStatistics, context: context)
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:inserts], ::Integer, context: "#{context}[:inserts]")
        Hearth::Validator.validate!(input[:deletes], ::Integer, context: "#{context}[:deletes]")
        Hearth::Validator.validate!(input[:updates], ::Integer, context: "#{context}[:updates]")
        Hearth::Validator.validate!(input[:ddls], ::Integer, context: "#{context}[:ddls]")
        Hearth::Validator.validate!(input[:full_load_rows], ::Integer, context: "#{context}[:full_load_rows]")
        Hearth::Validator.validate!(input[:full_load_condtnl_chk_failed_rows], ::Integer, context: "#{context}[:full_load_condtnl_chk_failed_rows]")
        Hearth::Validator.validate!(input[:full_load_error_rows], ::Integer, context: "#{context}[:full_load_error_rows]")
        Hearth::Validator.validate!(input[:full_load_start_time], ::Time, context: "#{context}[:full_load_start_time]")
        Hearth::Validator.validate!(input[:full_load_end_time], ::Time, context: "#{context}[:full_load_end_time]")
        Hearth::Validator.validate!(input[:full_load_reloaded], ::TrueClass, ::FalseClass, context: "#{context}[:full_load_reloaded]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:table_state], ::String, context: "#{context}[:table_state]")
        Hearth::Validator.validate!(input[:validation_pending_records], ::Integer, context: "#{context}[:validation_pending_records]")
        Hearth::Validator.validate!(input[:validation_failed_records], ::Integer, context: "#{context}[:validation_failed_records]")
        Hearth::Validator.validate!(input[:validation_suspended_records], ::Integer, context: "#{context}[:validation_suspended_records]")
        Hearth::Validator.validate!(input[:validation_state], ::String, context: "#{context}[:validation_state]")
        Hearth::Validator.validate!(input[:validation_state_details], ::String, context: "#{context}[:validation_state_details]")
      end
    end

    class TableStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TableStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableToReload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableToReload, context: context)
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestConnectionInput, context: context)
        Hearth::Validator.validate!(input[:replication_instance_arn], ::String, context: "#{context}[:replication_instance_arn]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class TestConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class UpgradeDependencyFailureFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeDependencyFailureFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VpcSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcSecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcSecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:vpc_security_group_id], ::String, context: "#{context}[:vpc_security_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VpcSecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
