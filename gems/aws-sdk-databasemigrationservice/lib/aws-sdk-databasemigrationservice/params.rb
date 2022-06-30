# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DatabaseMigrationService
  module Params

    module AccessDeniedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedFault, context: context)
        type = Types::AccessDeniedFault.new
        type.message = params[:message]
        type
      end
    end

    module AccountQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountQuota, context: context)
        type = Types::AccountQuota.new
        type.account_quota_name = params[:account_quota_name]
        type.used = params[:used]
        type.max = params[:max]
        type
      end
    end

    module AccountQuotaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountQuota.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type
      end
    end

    module ApplyPendingMaintenanceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyPendingMaintenanceActionInput, context: context)
        type = Types::ApplyPendingMaintenanceActionInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.apply_action = params[:apply_action]
        type.opt_in_type = params[:opt_in_type]
        type
      end
    end

    module ApplyPendingMaintenanceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyPendingMaintenanceActionOutput, context: context)
        type = Types::ApplyPendingMaintenanceActionOutput.new
        type.resource_pending_maintenance_actions = ResourcePendingMaintenanceActions.build(params[:resource_pending_maintenance_actions], context: "#{context}[:resource_pending_maintenance_actions]") unless params[:resource_pending_maintenance_actions].nil?
        type
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.name = params[:name]
        type
      end
    end

    module AvailabilityZonesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CancelReplicationTaskAssessmentRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelReplicationTaskAssessmentRunInput, context: context)
        type = Types::CancelReplicationTaskAssessmentRunInput.new
        type.replication_task_assessment_run_arn = params[:replication_task_assessment_run_arn]
        type
      end
    end

    module CancelReplicationTaskAssessmentRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelReplicationTaskAssessmentRunOutput, context: context)
        type = Types::CancelReplicationTaskAssessmentRunOutput.new
        type.replication_task_assessment_run = ReplicationTaskAssessmentRun.build(params[:replication_task_assessment_run], context: "#{context}[:replication_task_assessment_run]") unless params[:replication_task_assessment_run].nil?
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.certificate_identifier = params[:certificate_identifier]
        type.certificate_creation_date = params[:certificate_creation_date]
        type.certificate_pem = params[:certificate_pem]
        type.certificate_wallet = params[:certificate_wallet]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_owner = params[:certificate_owner]
        type.valid_from_date = params[:valid_from_date]
        type.valid_to_date = params[:valid_to_date]
        type.signing_algorithm = params[:signing_algorithm]
        type.key_length = params[:key_length]
        type
      end
    end

    module CertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Certificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CollectorHealthCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CollectorHealthCheck, context: context)
        type = Types::CollectorHealthCheck.new
        type.collector_status = params[:collector_status]
        type.local_collector_s3_access = params[:local_collector_s3_access]
        type.web_collector_s3_access = params[:web_collector_s3_access]
        type.web_collector_granted_role_based_access = params[:web_collector_granted_role_based_access]
        type
      end
    end

    module CollectorNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CollectorNotFoundFault, context: context)
        type = Types::CollectorNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CollectorResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CollectorResponse, context: context)
        type = Types::CollectorResponse.new
        type.collector_referenced_id = params[:collector_referenced_id]
        type.collector_name = params[:collector_name]
        type.collector_version = params[:collector_version]
        type.version_status = params[:version_status]
        type.description = params[:description]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.collector_health_check = CollectorHealthCheck.build(params[:collector_health_check], context: "#{context}[:collector_health_check]") unless params[:collector_health_check].nil?
        type.last_data_received = params[:last_data_received]
        type.registered_date = params[:registered_date]
        type.created_date = params[:created_date]
        type.modified_date = params[:modified_date]
        type.inventory_data = InventoryData.build(params[:inventory_data], context: "#{context}[:inventory_data]") unless params[:inventory_data].nil?
        type
      end
    end

    module CollectorResponses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CollectorResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CollectorShortInfoResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CollectorShortInfoResponse, context: context)
        type = Types::CollectorShortInfoResponse.new
        type.collector_referenced_id = params[:collector_referenced_id]
        type.collector_name = params[:collector_name]
        type
      end
    end

    module CollectorsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CollectorShortInfoResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.endpoint_arn = params[:endpoint_arn]
        type.status = params[:status]
        type.last_failure_message = params[:last_failure_message]
        type.endpoint_identifier = params[:endpoint_identifier]
        type.replication_instance_identifier = params[:replication_instance_identifier]
        type
      end
    end

    module ConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointInput, context: context)
        type = Types::CreateEndpointInput.new
        type.endpoint_identifier = params[:endpoint_identifier]
        type.endpoint_type = params[:endpoint_type]
        type.engine_name = params[:engine_name]
        type.username = params[:username]
        type.password = params[:password]
        type.server_name = params[:server_name]
        type.port = params[:port]
        type.database_name = params[:database_name]
        type.extra_connection_attributes = params[:extra_connection_attributes]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.certificate_arn = params[:certificate_arn]
        type.ssl_mode = params[:ssl_mode]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.external_table_definition = params[:external_table_definition]
        type.dynamo_db_settings = DynamoDbSettings.build(params[:dynamo_db_settings], context: "#{context}[:dynamo_db_settings]") unless params[:dynamo_db_settings].nil?
        type.s3_settings = S3Settings.build(params[:s3_settings], context: "#{context}[:s3_settings]") unless params[:s3_settings].nil?
        type.dms_transfer_settings = DmsTransferSettings.build(params[:dms_transfer_settings], context: "#{context}[:dms_transfer_settings]") unless params[:dms_transfer_settings].nil?
        type.mongo_db_settings = MongoDbSettings.build(params[:mongo_db_settings], context: "#{context}[:mongo_db_settings]") unless params[:mongo_db_settings].nil?
        type.kinesis_settings = KinesisSettings.build(params[:kinesis_settings], context: "#{context}[:kinesis_settings]") unless params[:kinesis_settings].nil?
        type.kafka_settings = KafkaSettings.build(params[:kafka_settings], context: "#{context}[:kafka_settings]") unless params[:kafka_settings].nil?
        type.elasticsearch_settings = ElasticsearchSettings.build(params[:elasticsearch_settings], context: "#{context}[:elasticsearch_settings]") unless params[:elasticsearch_settings].nil?
        type.neptune_settings = NeptuneSettings.build(params[:neptune_settings], context: "#{context}[:neptune_settings]") unless params[:neptune_settings].nil?
        type.redshift_settings = RedshiftSettings.build(params[:redshift_settings], context: "#{context}[:redshift_settings]") unless params[:redshift_settings].nil?
        type.postgre_sql_settings = PostgreSQLSettings.build(params[:postgre_sql_settings], context: "#{context}[:postgre_sql_settings]") unless params[:postgre_sql_settings].nil?
        type.my_sql_settings = MySQLSettings.build(params[:my_sql_settings], context: "#{context}[:my_sql_settings]") unless params[:my_sql_settings].nil?
        type.oracle_settings = OracleSettings.build(params[:oracle_settings], context: "#{context}[:oracle_settings]") unless params[:oracle_settings].nil?
        type.sybase_settings = SybaseSettings.build(params[:sybase_settings], context: "#{context}[:sybase_settings]") unless params[:sybase_settings].nil?
        type.microsoft_sql_server_settings = MicrosoftSQLServerSettings.build(params[:microsoft_sql_server_settings], context: "#{context}[:microsoft_sql_server_settings]") unless params[:microsoft_sql_server_settings].nil?
        type.ibm_db2_settings = IBMDb2Settings.build(params[:ibm_db2_settings], context: "#{context}[:ibm_db2_settings]") unless params[:ibm_db2_settings].nil?
        type.resource_identifier = params[:resource_identifier]
        type.doc_db_settings = DocDbSettings.build(params[:doc_db_settings], context: "#{context}[:doc_db_settings]") unless params[:doc_db_settings].nil?
        type.redis_settings = RedisSettings.build(params[:redis_settings], context: "#{context}[:redis_settings]") unless params[:redis_settings].nil?
        type.gcp_my_sql_settings = GcpMySQLSettings.build(params[:gcp_my_sql_settings], context: "#{context}[:gcp_my_sql_settings]") unless params[:gcp_my_sql_settings].nil?
        type
      end
    end

    module CreateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointOutput, context: context)
        type = Types::CreateEndpointOutput.new
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module CreateEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSubscriptionInput, context: context)
        type = Types::CreateEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_type = params[:source_type]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.source_ids = SourceIdsList.build(params[:source_ids], context: "#{context}[:source_ids]") unless params[:source_ids].nil?
        type.enabled = params[:enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSubscriptionOutput, context: context)
        type = Types::CreateEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module CreateFleetAdvisorCollectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetAdvisorCollectorInput, context: context)
        type = Types::CreateFleetAdvisorCollectorInput.new
        type.collector_name = params[:collector_name]
        type.description = params[:description]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type
      end
    end

    module CreateFleetAdvisorCollectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetAdvisorCollectorOutput, context: context)
        type = Types::CreateFleetAdvisorCollectorOutput.new
        type.collector_referenced_id = params[:collector_referenced_id]
        type.collector_name = params[:collector_name]
        type.description = params[:description]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type
      end
    end

    module CreateReplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationInstanceInput, context: context)
        type = Types::CreateReplicationInstanceInput.new
        type.replication_instance_identifier = params[:replication_instance_identifier]
        type.allocated_storage = params[:allocated_storage]
        type.replication_instance_class = params[:replication_instance_class]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.availability_zone = params[:availability_zone]
        type.replication_subnet_group_identifier = params[:replication_subnet_group_identifier]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.publicly_accessible = params[:publicly_accessible]
        type.dns_name_servers = params[:dns_name_servers]
        type.resource_identifier = params[:resource_identifier]
        type
      end
    end

    module CreateReplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationInstanceOutput, context: context)
        type = Types::CreateReplicationInstanceOutput.new
        type.replication_instance = ReplicationInstance.build(params[:replication_instance], context: "#{context}[:replication_instance]") unless params[:replication_instance].nil?
        type
      end
    end

    module CreateReplicationSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationSubnetGroupInput, context: context)
        type = Types::CreateReplicationSubnetGroupInput.new
        type.replication_subnet_group_identifier = params[:replication_subnet_group_identifier]
        type.replication_subnet_group_description = params[:replication_subnet_group_description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateReplicationSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationSubnetGroupOutput, context: context)
        type = Types::CreateReplicationSubnetGroupOutput.new
        type.replication_subnet_group = ReplicationSubnetGroup.build(params[:replication_subnet_group], context: "#{context}[:replication_subnet_group]") unless params[:replication_subnet_group].nil?
        type
      end
    end

    module CreateReplicationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationTaskInput, context: context)
        type = Types::CreateReplicationTaskInput.new
        type.replication_task_identifier = params[:replication_task_identifier]
        type.source_endpoint_arn = params[:source_endpoint_arn]
        type.target_endpoint_arn = params[:target_endpoint_arn]
        type.replication_instance_arn = params[:replication_instance_arn]
        type.migration_type = params[:migration_type]
        type.table_mappings = params[:table_mappings]
        type.replication_task_settings = params[:replication_task_settings]
        type.cdc_start_time = params[:cdc_start_time]
        type.cdc_start_position = params[:cdc_start_position]
        type.cdc_stop_position = params[:cdc_stop_position]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.task_data = params[:task_data]
        type.resource_identifier = params[:resource_identifier]
        type
      end
    end

    module CreateReplicationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationTaskOutput, context: context)
        type = Types::CreateReplicationTaskOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module DatabaseInstanceSoftwareDetailsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseInstanceSoftwareDetailsResponse, context: context)
        type = Types::DatabaseInstanceSoftwareDetailsResponse.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.engine_edition = params[:engine_edition]
        type.service_pack = params[:service_pack]
        type.support_level = params[:support_level]
        type.os_architecture = params[:os_architecture]
        type.tooltip = params[:tooltip]
        type
      end
    end

    module DatabaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatabaseResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatabaseResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseResponse, context: context)
        type = Types::DatabaseResponse.new
        type.database_id = params[:database_id]
        type.database_name = params[:database_name]
        type.ip_address = params[:ip_address]
        type.number_of_schemas = params[:number_of_schemas]
        type.server = ServerShortInfoResponse.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type.software_details = DatabaseInstanceSoftwareDetailsResponse.build(params[:software_details], context: "#{context}[:software_details]") unless params[:software_details].nil?
        type.collectors = CollectorsList.build(params[:collectors], context: "#{context}[:collectors]") unless params[:collectors].nil?
        type
      end
    end

    module DatabaseShortInfoResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseShortInfoResponse, context: context)
        type = Types::DatabaseShortInfoResponse.new
        type.database_id = params[:database_id]
        type.database_name = params[:database_name]
        type.database_ip_address = params[:database_ip_address]
        type.database_engine = params[:database_engine]
        type
      end
    end

    module DeleteCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateInput, context: context)
        type = Types::DeleteCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module DeleteCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateOutput, context: context)
        type = Types::DeleteCertificateOutput.new
        type.certificate = Certificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type.replication_instance_arn = params[:replication_instance_arn]
        type
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module DeleteEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointInput, context: context)
        type = Types::DeleteEndpointInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DeleteEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointOutput, context: context)
        type = Types::DeleteEndpointOutput.new
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module DeleteEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSubscriptionInput, context: context)
        type = Types::DeleteEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type
      end
    end

    module DeleteEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSubscriptionOutput, context: context)
        type = Types::DeleteEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module DeleteFleetAdvisorCollectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetAdvisorCollectorInput, context: context)
        type = Types::DeleteFleetAdvisorCollectorInput.new
        type.collector_referenced_id = params[:collector_referenced_id]
        type
      end
    end

    module DeleteFleetAdvisorCollectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetAdvisorCollectorOutput, context: context)
        type = Types::DeleteFleetAdvisorCollectorOutput.new
        type
      end
    end

    module DeleteFleetAdvisorDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetAdvisorDatabasesInput, context: context)
        type = Types::DeleteFleetAdvisorDatabasesInput.new
        type.database_ids = StringList.build(params[:database_ids], context: "#{context}[:database_ids]") unless params[:database_ids].nil?
        type
      end
    end

    module DeleteFleetAdvisorDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetAdvisorDatabasesOutput, context: context)
        type = Types::DeleteFleetAdvisorDatabasesOutput.new
        type.database_ids = StringList.build(params[:database_ids], context: "#{context}[:database_ids]") unless params[:database_ids].nil?
        type
      end
    end

    module DeleteReplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationInstanceInput, context: context)
        type = Types::DeleteReplicationInstanceInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type
      end
    end

    module DeleteReplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationInstanceOutput, context: context)
        type = Types::DeleteReplicationInstanceOutput.new
        type.replication_instance = ReplicationInstance.build(params[:replication_instance], context: "#{context}[:replication_instance]") unless params[:replication_instance].nil?
        type
      end
    end

    module DeleteReplicationSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationSubnetGroupInput, context: context)
        type = Types::DeleteReplicationSubnetGroupInput.new
        type.replication_subnet_group_identifier = params[:replication_subnet_group_identifier]
        type
      end
    end

    module DeleteReplicationSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationSubnetGroupOutput, context: context)
        type = Types::DeleteReplicationSubnetGroupOutput.new
        type
      end
    end

    module DeleteReplicationTaskAssessmentRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationTaskAssessmentRunInput, context: context)
        type = Types::DeleteReplicationTaskAssessmentRunInput.new
        type.replication_task_assessment_run_arn = params[:replication_task_assessment_run_arn]
        type
      end
    end

    module DeleteReplicationTaskAssessmentRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationTaskAssessmentRunOutput, context: context)
        type = Types::DeleteReplicationTaskAssessmentRunOutput.new
        type.replication_task_assessment_run = ReplicationTaskAssessmentRun.build(params[:replication_task_assessment_run], context: "#{context}[:replication_task_assessment_run]") unless params[:replication_task_assessment_run].nil?
        type
      end
    end

    module DeleteReplicationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationTaskInput, context: context)
        type = Types::DeleteReplicationTaskInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type
      end
    end

    module DeleteReplicationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationTaskOutput, context: context)
        type = Types::DeleteReplicationTaskOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type
      end
    end

    module DescribeAccountAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesOutput, context: context)
        type = Types::DescribeAccountAttributesOutput.new
        type.account_quotas = AccountQuotaList.build(params[:account_quotas], context: "#{context}[:account_quotas]") unless params[:account_quotas].nil?
        type.unique_account_identifier = params[:unique_account_identifier]
        type
      end
    end

    module DescribeApplicableIndividualAssessmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicableIndividualAssessmentsInput, context: context)
        type = Types::DescribeApplicableIndividualAssessmentsInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.replication_instance_arn = params[:replication_instance_arn]
        type.source_engine_name = params[:source_engine_name]
        type.target_engine_name = params[:target_engine_name]
        type.migration_type = params[:migration_type]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeApplicableIndividualAssessmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicableIndividualAssessmentsOutput, context: context)
        type = Types::DescribeApplicableIndividualAssessmentsOutput.new
        type.individual_assessment_names = IndividualAssessmentNameList.build(params[:individual_assessment_names], context: "#{context}[:individual_assessment_names]") unless params[:individual_assessment_names].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificatesInput, context: context)
        type = Types::DescribeCertificatesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificatesOutput, context: context)
        type = Types::DescribeCertificatesOutput.new
        type.marker = params[:marker]
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type
      end
    end

    module DescribeConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionsInput, context: context)
        type = Types::DescribeConnectionsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionsOutput, context: context)
        type = Types::DescribeConnectionsOutput.new
        type.marker = params[:marker]
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type
      end
    end

    module DescribeEndpointSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointSettingsInput, context: context)
        type = Types::DescribeEndpointSettingsInput.new
        type.engine_name = params[:engine_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEndpointSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointSettingsOutput, context: context)
        type = Types::DescribeEndpointSettingsOutput.new
        type.marker = params[:marker]
        type.endpoint_settings = EndpointSettingsList.build(params[:endpoint_settings], context: "#{context}[:endpoint_settings]") unless params[:endpoint_settings].nil?
        type
      end
    end

    module DescribeEndpointTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointTypesInput, context: context)
        type = Types::DescribeEndpointTypesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEndpointTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointTypesOutput, context: context)
        type = Types::DescribeEndpointTypesOutput.new
        type.marker = params[:marker]
        type.supported_endpoint_types = SupportedEndpointTypeList.build(params[:supported_endpoint_types], context: "#{context}[:supported_endpoint_types]") unless params[:supported_endpoint_types].nil?
        type
      end
    end

    module DescribeEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsInput, context: context)
        type = Types::DescribeEndpointsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsOutput, context: context)
        type = Types::DescribeEndpointsOutput.new
        type.marker = params[:marker]
        type.endpoints = EndpointList.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module DescribeEventCategoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventCategoriesInput, context: context)
        type = Types::DescribeEventCategoriesInput.new
        type.source_type = params[:source_type]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeEventCategoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventCategoriesOutput, context: context)
        type = Types::DescribeEventCategoriesOutput.new
        type.event_category_group_list = EventCategoryGroupList.build(params[:event_category_group_list], context: "#{context}[:event_category_group_list]") unless params[:event_category_group_list].nil?
        type
      end
    end

    module DescribeEventSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSubscriptionsInput, context: context)
        type = Types::DescribeEventSubscriptionsInput.new
        type.subscription_name = params[:subscription_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSubscriptionsOutput, context: context)
        type = Types::DescribeEventSubscriptionsOutput.new
        type.marker = params[:marker]
        type.event_subscriptions_list = EventSubscriptionsList.build(params[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless params[:event_subscriptions_list].nil?
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration = params[:duration]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.marker = params[:marker]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module DescribeFleetAdvisorCollectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorCollectorsInput, context: context)
        type = Types::DescribeFleetAdvisorCollectorsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorCollectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorCollectorsOutput, context: context)
        type = Types::DescribeFleetAdvisorCollectorsOutput.new
        type.collectors = CollectorResponses.build(params[:collectors], context: "#{context}[:collectors]") unless params[:collectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorDatabasesInput, context: context)
        type = Types::DescribeFleetAdvisorDatabasesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorDatabasesOutput, context: context)
        type = Types::DescribeFleetAdvisorDatabasesOutput.new
        type.databases = DatabaseList.build(params[:databases], context: "#{context}[:databases]") unless params[:databases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorLsaAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorLsaAnalysisInput, context: context)
        type = Types::DescribeFleetAdvisorLsaAnalysisInput.new
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorLsaAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorLsaAnalysisOutput, context: context)
        type = Types::DescribeFleetAdvisorLsaAnalysisOutput.new
        type.analysis = FleetAdvisorLsaAnalysisResponseList.build(params[:analysis], context: "#{context}[:analysis]") unless params[:analysis].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorSchemaObjectSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorSchemaObjectSummaryInput, context: context)
        type = Types::DescribeFleetAdvisorSchemaObjectSummaryInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorSchemaObjectSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorSchemaObjectSummaryOutput, context: context)
        type = Types::DescribeFleetAdvisorSchemaObjectSummaryOutput.new
        type.fleet_advisor_schema_objects = FleetAdvisorSchemaObjectList.build(params[:fleet_advisor_schema_objects], context: "#{context}[:fleet_advisor_schema_objects]") unless params[:fleet_advisor_schema_objects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorSchemasInput, context: context)
        type = Types::DescribeFleetAdvisorSchemasInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAdvisorSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAdvisorSchemasOutput, context: context)
        type = Types::DescribeFleetAdvisorSchemasOutput.new
        type.fleet_advisor_schemas = FleetAdvisorSchemaList.build(params[:fleet_advisor_schemas], context: "#{context}[:fleet_advisor_schemas]") unless params[:fleet_advisor_schemas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrderableReplicationInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableReplicationInstancesInput, context: context)
        type = Types::DescribeOrderableReplicationInstancesInput.new
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOrderableReplicationInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableReplicationInstancesOutput, context: context)
        type = Types::DescribeOrderableReplicationInstancesOutput.new
        type.orderable_replication_instances = OrderableReplicationInstanceList.build(params[:orderable_replication_instances], context: "#{context}[:orderable_replication_instances]") unless params[:orderable_replication_instances].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribePendingMaintenanceActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePendingMaintenanceActionsInput, context: context)
        type = Types::DescribePendingMaintenanceActionsInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribePendingMaintenanceActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePendingMaintenanceActionsOutput, context: context)
        type = Types::DescribePendingMaintenanceActionsOutput.new
        type.pending_maintenance_actions = PendingMaintenanceActions.build(params[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless params[:pending_maintenance_actions].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeRefreshSchemasStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRefreshSchemasStatusInput, context: context)
        type = Types::DescribeRefreshSchemasStatusInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DescribeRefreshSchemasStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRefreshSchemasStatusOutput, context: context)
        type = Types::DescribeRefreshSchemasStatusOutput.new
        type.refresh_schemas_status = RefreshSchemasStatus.build(params[:refresh_schemas_status], context: "#{context}[:refresh_schemas_status]") unless params[:refresh_schemas_status].nil?
        type
      end
    end

    module DescribeReplicationInstanceTaskLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationInstanceTaskLogsInput, context: context)
        type = Types::DescribeReplicationInstanceTaskLogsInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationInstanceTaskLogsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationInstanceTaskLogsOutput, context: context)
        type = Types::DescribeReplicationInstanceTaskLogsOutput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.replication_instance_task_logs = ReplicationInstanceTaskLogsList.build(params[:replication_instance_task_logs], context: "#{context}[:replication_instance_task_logs]") unless params[:replication_instance_task_logs].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationInstancesInput, context: context)
        type = Types::DescribeReplicationInstancesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationInstancesOutput, context: context)
        type = Types::DescribeReplicationInstancesOutput.new
        type.marker = params[:marker]
        type.replication_instances = ReplicationInstanceList.build(params[:replication_instances], context: "#{context}[:replication_instances]") unless params[:replication_instances].nil?
        type
      end
    end

    module DescribeReplicationSubnetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationSubnetGroupsInput, context: context)
        type = Types::DescribeReplicationSubnetGroupsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationSubnetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationSubnetGroupsOutput, context: context)
        type = Types::DescribeReplicationSubnetGroupsOutput.new
        type.marker = params[:marker]
        type.replication_subnet_groups = ReplicationSubnetGroups.build(params[:replication_subnet_groups], context: "#{context}[:replication_subnet_groups]") unless params[:replication_subnet_groups].nil?
        type
      end
    end

    module DescribeReplicationTaskAssessmentResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTaskAssessmentResultsInput, context: context)
        type = Types::DescribeReplicationTaskAssessmentResultsInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationTaskAssessmentResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTaskAssessmentResultsOutput, context: context)
        type = Types::DescribeReplicationTaskAssessmentResultsOutput.new
        type.marker = params[:marker]
        type.bucket_name = params[:bucket_name]
        type.replication_task_assessment_results = ReplicationTaskAssessmentResultList.build(params[:replication_task_assessment_results], context: "#{context}[:replication_task_assessment_results]") unless params[:replication_task_assessment_results].nil?
        type
      end
    end

    module DescribeReplicationTaskAssessmentRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTaskAssessmentRunsInput, context: context)
        type = Types::DescribeReplicationTaskAssessmentRunsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationTaskAssessmentRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTaskAssessmentRunsOutput, context: context)
        type = Types::DescribeReplicationTaskAssessmentRunsOutput.new
        type.marker = params[:marker]
        type.replication_task_assessment_runs = ReplicationTaskAssessmentRunList.build(params[:replication_task_assessment_runs], context: "#{context}[:replication_task_assessment_runs]") unless params[:replication_task_assessment_runs].nil?
        type
      end
    end

    module DescribeReplicationTaskIndividualAssessmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTaskIndividualAssessmentsInput, context: context)
        type = Types::DescribeReplicationTaskIndividualAssessmentsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationTaskIndividualAssessmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTaskIndividualAssessmentsOutput, context: context)
        type = Types::DescribeReplicationTaskIndividualAssessmentsOutput.new
        type.marker = params[:marker]
        type.replication_task_individual_assessments = ReplicationTaskIndividualAssessmentList.build(params[:replication_task_individual_assessments], context: "#{context}[:replication_task_individual_assessments]") unless params[:replication_task_individual_assessments].nil?
        type
      end
    end

    module DescribeReplicationTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTasksInput, context: context)
        type = Types::DescribeReplicationTasksInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.without_settings = params[:without_settings]
        type
      end
    end

    module DescribeReplicationTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationTasksOutput, context: context)
        type = Types::DescribeReplicationTasksOutput.new
        type.marker = params[:marker]
        type.replication_tasks = ReplicationTaskList.build(params[:replication_tasks], context: "#{context}[:replication_tasks]") unless params[:replication_tasks].nil?
        type
      end
    end

    module DescribeSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchemasInput, context: context)
        type = Types::DescribeSchemasInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchemasOutput, context: context)
        type = Types::DescribeSchemasOutput.new
        type.marker = params[:marker]
        type.schemas = SchemaList.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type
      end
    end

    module DescribeTableStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableStatisticsInput, context: context)
        type = Types::DescribeTableStatisticsInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeTableStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableStatisticsOutput, context: context)
        type = Types::DescribeTableStatisticsOutput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.table_statistics = TableStatisticsList.build(params[:table_statistics], context: "#{context}[:table_statistics]") unless params[:table_statistics].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DmsTransferSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DmsTransferSettings, context: context)
        type = Types::DmsTransferSettings.new
        type.service_access_role_arn = params[:service_access_role_arn]
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module DocDbSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocDbSettings, context: context)
        type = Types::DocDbSettings.new
        type.username = params[:username]
        type.password = params[:password]
        type.server_name = params[:server_name]
        type.port = params[:port]
        type.database_name = params[:database_name]
        type.nesting_level = params[:nesting_level]
        type.extract_doc_id = params[:extract_doc_id]
        type.docs_to_investigate = params[:docs_to_investigate]
        type.kms_key_id = params[:kms_key_id]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module DynamoDbSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDbSettings, context: context)
        type = Types::DynamoDbSettings.new
        type.service_access_role_arn = params[:service_access_role_arn]
        type
      end
    end

    module ElasticsearchSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchSettings, context: context)
        type = Types::ElasticsearchSettings.new
        type.service_access_role_arn = params[:service_access_role_arn]
        type.endpoint_uri = params[:endpoint_uri]
        type.full_load_error_percentage = params[:full_load_error_percentage]
        type.error_retry_duration = params[:error_retry_duration]
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.endpoint_identifier = params[:endpoint_identifier]
        type.endpoint_type = params[:endpoint_type]
        type.engine_name = params[:engine_name]
        type.engine_display_name = params[:engine_display_name]
        type.username = params[:username]
        type.server_name = params[:server_name]
        type.port = params[:port]
        type.database_name = params[:database_name]
        type.extra_connection_attributes = params[:extra_connection_attributes]
        type.status = params[:status]
        type.kms_key_id = params[:kms_key_id]
        type.endpoint_arn = params[:endpoint_arn]
        type.certificate_arn = params[:certificate_arn]
        type.ssl_mode = params[:ssl_mode]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.external_table_definition = params[:external_table_definition]
        type.external_id = params[:external_id]
        type.dynamo_db_settings = DynamoDbSettings.build(params[:dynamo_db_settings], context: "#{context}[:dynamo_db_settings]") unless params[:dynamo_db_settings].nil?
        type.s3_settings = S3Settings.build(params[:s3_settings], context: "#{context}[:s3_settings]") unless params[:s3_settings].nil?
        type.dms_transfer_settings = DmsTransferSettings.build(params[:dms_transfer_settings], context: "#{context}[:dms_transfer_settings]") unless params[:dms_transfer_settings].nil?
        type.mongo_db_settings = MongoDbSettings.build(params[:mongo_db_settings], context: "#{context}[:mongo_db_settings]") unless params[:mongo_db_settings].nil?
        type.kinesis_settings = KinesisSettings.build(params[:kinesis_settings], context: "#{context}[:kinesis_settings]") unless params[:kinesis_settings].nil?
        type.kafka_settings = KafkaSettings.build(params[:kafka_settings], context: "#{context}[:kafka_settings]") unless params[:kafka_settings].nil?
        type.elasticsearch_settings = ElasticsearchSettings.build(params[:elasticsearch_settings], context: "#{context}[:elasticsearch_settings]") unless params[:elasticsearch_settings].nil?
        type.neptune_settings = NeptuneSettings.build(params[:neptune_settings], context: "#{context}[:neptune_settings]") unless params[:neptune_settings].nil?
        type.redshift_settings = RedshiftSettings.build(params[:redshift_settings], context: "#{context}[:redshift_settings]") unless params[:redshift_settings].nil?
        type.postgre_sql_settings = PostgreSQLSettings.build(params[:postgre_sql_settings], context: "#{context}[:postgre_sql_settings]") unless params[:postgre_sql_settings].nil?
        type.my_sql_settings = MySQLSettings.build(params[:my_sql_settings], context: "#{context}[:my_sql_settings]") unless params[:my_sql_settings].nil?
        type.oracle_settings = OracleSettings.build(params[:oracle_settings], context: "#{context}[:oracle_settings]") unless params[:oracle_settings].nil?
        type.sybase_settings = SybaseSettings.build(params[:sybase_settings], context: "#{context}[:sybase_settings]") unless params[:sybase_settings].nil?
        type.microsoft_sql_server_settings = MicrosoftSQLServerSettings.build(params[:microsoft_sql_server_settings], context: "#{context}[:microsoft_sql_server_settings]") unless params[:microsoft_sql_server_settings].nil?
        type.ibm_db2_settings = IBMDb2Settings.build(params[:ibm_db2_settings], context: "#{context}[:ibm_db2_settings]") unless params[:ibm_db2_settings].nil?
        type.doc_db_settings = DocDbSettings.build(params[:doc_db_settings], context: "#{context}[:doc_db_settings]") unless params[:doc_db_settings].nil?
        type.redis_settings = RedisSettings.build(params[:redis_settings], context: "#{context}[:redis_settings]") unless params[:redis_settings].nil?
        type.gcp_my_sql_settings = GcpMySQLSettings.build(params[:gcp_my_sql_settings], context: "#{context}[:gcp_my_sql_settings]") unless params[:gcp_my_sql_settings].nil?
        type
      end
    end

    module EndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointSetting, context: context)
        type = Types::EndpointSetting.new
        type.name = params[:name]
        type.type = params[:type]
        type.enum_values = EndpointSettingEnumValues.build(params[:enum_values], context: "#{context}[:enum_values]") unless params[:enum_values].nil?
        type.sensitive = params[:sensitive]
        type.units = params[:units]
        type.applicability = params[:applicability]
        type.int_value_min = params[:int_value_min]
        type.int_value_max = params[:int_value_max]
        type.default_value = params[:default_value]
        type
      end
    end

    module EndpointSettingEnumValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EndpointSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.message = params[:message]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.date = params[:date]
        type
      end
    end

    module EventCategoriesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventCategoryGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventCategoryGroup, context: context)
        type = Types::EventCategoryGroup.new
        type.source_type = params[:source_type]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type
      end
    end

    module EventCategoryGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventCategoryGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSubscription, context: context)
        type = Types::EventSubscription.new
        type.customer_aws_id = params[:customer_aws_id]
        type.cust_subscription_id = params[:cust_subscription_id]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.status = params[:status]
        type.subscription_creation_time = params[:subscription_creation_time]
        type.source_type = params[:source_type]
        type.source_ids_list = SourceIdsList.build(params[:source_ids_list], context: "#{context}[:source_ids_list]") unless params[:source_ids_list].nil?
        type.event_categories_list = EventCategoriesList.build(params[:event_categories_list], context: "#{context}[:event_categories_list]") unless params[:event_categories_list].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module EventSubscriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExcludeTestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FleetAdvisorLsaAnalysisResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetAdvisorLsaAnalysisResponse, context: context)
        type = Types::FleetAdvisorLsaAnalysisResponse.new
        type.lsa_analysis_id = params[:lsa_analysis_id]
        type.status = params[:status]
        type
      end
    end

    module FleetAdvisorLsaAnalysisResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetAdvisorLsaAnalysisResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetAdvisorSchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetAdvisorSchemaObjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetAdvisorSchemaObjectResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetAdvisorSchemaObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetAdvisorSchemaObjectResponse, context: context)
        type = Types::FleetAdvisorSchemaObjectResponse.new
        type.schema_id = params[:schema_id]
        type.object_type = params[:object_type]
        type.number_of_objects = params[:number_of_objects]
        type.code_line_count = params[:code_line_count]
        type.code_size = params[:code_size]
        type
      end
    end

    module GcpMySQLSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GcpMySQLSettings, context: context)
        type = Types::GcpMySQLSettings.new
        type.after_connect_script = params[:after_connect_script]
        type.clean_source_metadata_on_mismatch = params[:clean_source_metadata_on_mismatch]
        type.database_name = params[:database_name]
        type.events_poll_interval = params[:events_poll_interval]
        type.target_db_type = params[:target_db_type]
        type.max_file_size = params[:max_file_size]
        type.parallel_load_threads = params[:parallel_load_threads]
        type.password = params[:password]
        type.port = params[:port]
        type.server_name = params[:server_name]
        type.server_timezone = params[:server_timezone]
        type.username = params[:username]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module IBMDb2Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IBMDb2Settings, context: context)
        type = Types::IBMDb2Settings.new
        type.database_name = params[:database_name]
        type.password = params[:password]
        type.port = params[:port]
        type.server_name = params[:server_name]
        type.set_data_capture_changes = params[:set_data_capture_changes]
        type.current_lsn = params[:current_lsn]
        type.max_k_bytes_per_read = params[:max_k_bytes_per_read]
        type.username = params[:username]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module ImportCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCertificateInput, context: context)
        type = Types::ImportCertificateInput.new
        type.certificate_identifier = params[:certificate_identifier]
        type.certificate_pem = params[:certificate_pem]
        type.certificate_wallet = params[:certificate_wallet]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImportCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCertificateOutput, context: context)
        type = Types::ImportCertificateOutput.new
        type.certificate = Certificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module IncludeTestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IndividualAssessmentNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsufficientResourceCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientResourceCapacityFault, context: context)
        type = Types::InsufficientResourceCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module IntegerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidCertificateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCertificateFault, context: context)
        type = Types::InvalidCertificateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationFault, context: context)
        type = Types::InvalidOperationFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceStateFault, context: context)
        type = Types::InvalidResourceStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnet, context: context)
        type = Types::InvalidSubnet.new
        type.message = params[:message]
        type
      end
    end

    module InventoryData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryData, context: context)
        type = Types::InventoryData.new
        type.number_of_databases = params[:number_of_databases]
        type.number_of_schemas = params[:number_of_schemas]
        type
      end
    end

    module KMSAccessDeniedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSAccessDeniedFault, context: context)
        type = Types::KMSAccessDeniedFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSDisabledFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSDisabledFault, context: context)
        type = Types::KMSDisabledFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSFault, context: context)
        type = Types::KMSFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidStateFault, context: context)
        type = Types::KMSInvalidStateFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSKeyNotAccessibleFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSKeyNotAccessibleFault, context: context)
        type = Types::KMSKeyNotAccessibleFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSNotFoundFault, context: context)
        type = Types::KMSNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSThrottlingFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSThrottlingFault, context: context)
        type = Types::KMSThrottlingFault.new
        type.message = params[:message]
        type
      end
    end

    module KafkaSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaSettings, context: context)
        type = Types::KafkaSettings.new
        type.broker = params[:broker]
        type.topic = params[:topic]
        type.message_format = params[:message_format]
        type.include_transaction_details = params[:include_transaction_details]
        type.include_partition_value = params[:include_partition_value]
        type.partition_include_schema_table = params[:partition_include_schema_table]
        type.include_table_alter_operations = params[:include_table_alter_operations]
        type.include_control_details = params[:include_control_details]
        type.message_max_bytes = params[:message_max_bytes]
        type.include_null_and_empty = params[:include_null_and_empty]
        type.security_protocol = params[:security_protocol]
        type.ssl_client_certificate_arn = params[:ssl_client_certificate_arn]
        type.ssl_client_key_arn = params[:ssl_client_key_arn]
        type.ssl_client_key_password = params[:ssl_client_key_password]
        type.ssl_ca_certificate_arn = params[:ssl_ca_certificate_arn]
        type.sasl_username = params[:sasl_username]
        type.sasl_password = params[:sasl_password]
        type.no_hex_prefix = params[:no_hex_prefix]
        type
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KinesisSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisSettings, context: context)
        type = Types::KinesisSettings.new
        type.stream_arn = params[:stream_arn]
        type.message_format = params[:message_format]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.include_transaction_details = params[:include_transaction_details]
        type.include_partition_value = params[:include_partition_value]
        type.partition_include_schema_table = params[:partition_include_schema_table]
        type.include_table_alter_operations = params[:include_table_alter_operations]
        type.include_control_details = params[:include_control_details]
        type.include_null_and_empty = params[:include_null_and_empty]
        type.no_hex_prefix = params[:no_hex_prefix]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.resource_arn_list = ArnList.build(params[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless params[:resource_arn_list].nil?
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module MicrosoftSQLServerSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MicrosoftSQLServerSettings, context: context)
        type = Types::MicrosoftSQLServerSettings.new
        type.port = params[:port]
        type.bcp_packet_size = params[:bcp_packet_size]
        type.database_name = params[:database_name]
        type.control_tables_file_group = params[:control_tables_file_group]
        type.password = params[:password]
        type.query_single_always_on_node = params[:query_single_always_on_node]
        type.read_backup_only = params[:read_backup_only]
        type.safeguard_policy = params[:safeguard_policy]
        type.server_name = params[:server_name]
        type.username = params[:username]
        type.use_bcp_full_load = params[:use_bcp_full_load]
        type.use_third_party_backup_device = params[:use_third_party_backup_device]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module ModifyEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEndpointInput, context: context)
        type = Types::ModifyEndpointInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type.endpoint_identifier = params[:endpoint_identifier]
        type.endpoint_type = params[:endpoint_type]
        type.engine_name = params[:engine_name]
        type.username = params[:username]
        type.password = params[:password]
        type.server_name = params[:server_name]
        type.port = params[:port]
        type.database_name = params[:database_name]
        type.extra_connection_attributes = params[:extra_connection_attributes]
        type.certificate_arn = params[:certificate_arn]
        type.ssl_mode = params[:ssl_mode]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.external_table_definition = params[:external_table_definition]
        type.dynamo_db_settings = DynamoDbSettings.build(params[:dynamo_db_settings], context: "#{context}[:dynamo_db_settings]") unless params[:dynamo_db_settings].nil?
        type.s3_settings = S3Settings.build(params[:s3_settings], context: "#{context}[:s3_settings]") unless params[:s3_settings].nil?
        type.dms_transfer_settings = DmsTransferSettings.build(params[:dms_transfer_settings], context: "#{context}[:dms_transfer_settings]") unless params[:dms_transfer_settings].nil?
        type.mongo_db_settings = MongoDbSettings.build(params[:mongo_db_settings], context: "#{context}[:mongo_db_settings]") unless params[:mongo_db_settings].nil?
        type.kinesis_settings = KinesisSettings.build(params[:kinesis_settings], context: "#{context}[:kinesis_settings]") unless params[:kinesis_settings].nil?
        type.kafka_settings = KafkaSettings.build(params[:kafka_settings], context: "#{context}[:kafka_settings]") unless params[:kafka_settings].nil?
        type.elasticsearch_settings = ElasticsearchSettings.build(params[:elasticsearch_settings], context: "#{context}[:elasticsearch_settings]") unless params[:elasticsearch_settings].nil?
        type.neptune_settings = NeptuneSettings.build(params[:neptune_settings], context: "#{context}[:neptune_settings]") unless params[:neptune_settings].nil?
        type.redshift_settings = RedshiftSettings.build(params[:redshift_settings], context: "#{context}[:redshift_settings]") unless params[:redshift_settings].nil?
        type.postgre_sql_settings = PostgreSQLSettings.build(params[:postgre_sql_settings], context: "#{context}[:postgre_sql_settings]") unless params[:postgre_sql_settings].nil?
        type.my_sql_settings = MySQLSettings.build(params[:my_sql_settings], context: "#{context}[:my_sql_settings]") unless params[:my_sql_settings].nil?
        type.oracle_settings = OracleSettings.build(params[:oracle_settings], context: "#{context}[:oracle_settings]") unless params[:oracle_settings].nil?
        type.sybase_settings = SybaseSettings.build(params[:sybase_settings], context: "#{context}[:sybase_settings]") unless params[:sybase_settings].nil?
        type.microsoft_sql_server_settings = MicrosoftSQLServerSettings.build(params[:microsoft_sql_server_settings], context: "#{context}[:microsoft_sql_server_settings]") unless params[:microsoft_sql_server_settings].nil?
        type.ibm_db2_settings = IBMDb2Settings.build(params[:ibm_db2_settings], context: "#{context}[:ibm_db2_settings]") unless params[:ibm_db2_settings].nil?
        type.doc_db_settings = DocDbSettings.build(params[:doc_db_settings], context: "#{context}[:doc_db_settings]") unless params[:doc_db_settings].nil?
        type.redis_settings = RedisSettings.build(params[:redis_settings], context: "#{context}[:redis_settings]") unless params[:redis_settings].nil?
        type.exact_settings = params[:exact_settings]
        type.gcp_my_sql_settings = GcpMySQLSettings.build(params[:gcp_my_sql_settings], context: "#{context}[:gcp_my_sql_settings]") unless params[:gcp_my_sql_settings].nil?
        type
      end
    end

    module ModifyEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEndpointOutput, context: context)
        type = Types::ModifyEndpointOutput.new
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module ModifyEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEventSubscriptionInput, context: context)
        type = Types::ModifyEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_type = params[:source_type]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module ModifyEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEventSubscriptionOutput, context: context)
        type = Types::ModifyEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module ModifyReplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationInstanceInput, context: context)
        type = Types::ModifyReplicationInstanceInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.allocated_storage = params[:allocated_storage]
        type.apply_immediately = params[:apply_immediately]
        type.replication_instance_class = params[:replication_instance_class]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.allow_major_version_upgrade = params[:allow_major_version_upgrade]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.replication_instance_identifier = params[:replication_instance_identifier]
        type
      end
    end

    module ModifyReplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationInstanceOutput, context: context)
        type = Types::ModifyReplicationInstanceOutput.new
        type.replication_instance = ReplicationInstance.build(params[:replication_instance], context: "#{context}[:replication_instance]") unless params[:replication_instance].nil?
        type
      end
    end

    module ModifyReplicationSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationSubnetGroupInput, context: context)
        type = Types::ModifyReplicationSubnetGroupInput.new
        type.replication_subnet_group_identifier = params[:replication_subnet_group_identifier]
        type.replication_subnet_group_description = params[:replication_subnet_group_description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module ModifyReplicationSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationSubnetGroupOutput, context: context)
        type = Types::ModifyReplicationSubnetGroupOutput.new
        type.replication_subnet_group = ReplicationSubnetGroup.build(params[:replication_subnet_group], context: "#{context}[:replication_subnet_group]") unless params[:replication_subnet_group].nil?
        type
      end
    end

    module ModifyReplicationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationTaskInput, context: context)
        type = Types::ModifyReplicationTaskInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.replication_task_identifier = params[:replication_task_identifier]
        type.migration_type = params[:migration_type]
        type.table_mappings = params[:table_mappings]
        type.replication_task_settings = params[:replication_task_settings]
        type.cdc_start_time = params[:cdc_start_time]
        type.cdc_start_position = params[:cdc_start_position]
        type.cdc_stop_position = params[:cdc_stop_position]
        type.task_data = params[:task_data]
        type
      end
    end

    module ModifyReplicationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationTaskOutput, context: context)
        type = Types::ModifyReplicationTaskOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module MongoDbSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MongoDbSettings, context: context)
        type = Types::MongoDbSettings.new
        type.username = params[:username]
        type.password = params[:password]
        type.server_name = params[:server_name]
        type.port = params[:port]
        type.database_name = params[:database_name]
        type.auth_type = params[:auth_type]
        type.auth_mechanism = params[:auth_mechanism]
        type.nesting_level = params[:nesting_level]
        type.extract_doc_id = params[:extract_doc_id]
        type.docs_to_investigate = params[:docs_to_investigate]
        type.auth_source = params[:auth_source]
        type.kms_key_id = params[:kms_key_id]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module MoveReplicationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MoveReplicationTaskInput, context: context)
        type = Types::MoveReplicationTaskInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.target_replication_instance_arn = params[:target_replication_instance_arn]
        type
      end
    end

    module MoveReplicationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MoveReplicationTaskOutput, context: context)
        type = Types::MoveReplicationTaskOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module MySQLSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MySQLSettings, context: context)
        type = Types::MySQLSettings.new
        type.after_connect_script = params[:after_connect_script]
        type.clean_source_metadata_on_mismatch = params[:clean_source_metadata_on_mismatch]
        type.database_name = params[:database_name]
        type.events_poll_interval = params[:events_poll_interval]
        type.target_db_type = params[:target_db_type]
        type.max_file_size = params[:max_file_size]
        type.parallel_load_threads = params[:parallel_load_threads]
        type.password = params[:password]
        type.port = params[:port]
        type.server_name = params[:server_name]
        type.server_timezone = params[:server_timezone]
        type.username = params[:username]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module NeptuneSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NeptuneSettings, context: context)
        type = Types::NeptuneSettings.new
        type.service_access_role_arn = params[:service_access_role_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_bucket_folder = params[:s3_bucket_folder]
        type.error_retry_duration = params[:error_retry_duration]
        type.max_file_size = params[:max_file_size]
        type.max_retry_count = params[:max_retry_count]
        type.iam_auth_enabled = params[:iam_auth_enabled]
        type
      end
    end

    module OracleSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OracleSettings, context: context)
        type = Types::OracleSettings.new
        type.add_supplemental_logging = params[:add_supplemental_logging]
        type.archived_log_dest_id = params[:archived_log_dest_id]
        type.additional_archived_log_dest_id = params[:additional_archived_log_dest_id]
        type.extra_archived_log_dest_ids = IntegerList.build(params[:extra_archived_log_dest_ids], context: "#{context}[:extra_archived_log_dest_ids]") unless params[:extra_archived_log_dest_ids].nil?
        type.allow_select_nested_tables = params[:allow_select_nested_tables]
        type.parallel_asm_read_threads = params[:parallel_asm_read_threads]
        type.read_ahead_blocks = params[:read_ahead_blocks]
        type.access_alternate_directly = params[:access_alternate_directly]
        type.use_alternate_folder_for_online = params[:use_alternate_folder_for_online]
        type.oracle_path_prefix = params[:oracle_path_prefix]
        type.use_path_prefix = params[:use_path_prefix]
        type.replace_path_prefix = params[:replace_path_prefix]
        type.enable_homogenous_tablespace = params[:enable_homogenous_tablespace]
        type.direct_path_no_log = params[:direct_path_no_log]
        type.archived_logs_only = params[:archived_logs_only]
        type.asm_password = params[:asm_password]
        type.asm_server = params[:asm_server]
        type.asm_user = params[:asm_user]
        type.char_length_semantics = params[:char_length_semantics]
        type.database_name = params[:database_name]
        type.direct_path_parallel_load = params[:direct_path_parallel_load]
        type.fail_tasks_on_lob_truncation = params[:fail_tasks_on_lob_truncation]
        type.number_datatype_scale = params[:number_datatype_scale]
        type.password = params[:password]
        type.port = params[:port]
        type.read_table_space_name = params[:read_table_space_name]
        type.retry_interval = params[:retry_interval]
        type.security_db_encryption = params[:security_db_encryption]
        type.security_db_encryption_name = params[:security_db_encryption_name]
        type.server_name = params[:server_name]
        type.spatial_data_option_to_geo_json_function_name = params[:spatial_data_option_to_geo_json_function_name]
        type.standby_delay_time = params[:standby_delay_time]
        type.username = params[:username]
        type.use_b_file = params[:use_b_file]
        type.use_direct_path_full_load = params[:use_direct_path_full_load]
        type.use_logminer_reader = params[:use_logminer_reader]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type.secrets_manager_oracle_asm_access_role_arn = params[:secrets_manager_oracle_asm_access_role_arn]
        type.secrets_manager_oracle_asm_secret_id = params[:secrets_manager_oracle_asm_secret_id]
        type
      end
    end

    module OrderableReplicationInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderableReplicationInstance, context: context)
        type = Types::OrderableReplicationInstance.new
        type.engine_version = params[:engine_version]
        type.replication_instance_class = params[:replication_instance_class]
        type.storage_type = params[:storage_type]
        type.min_allocated_storage = params[:min_allocated_storage]
        type.max_allocated_storage = params[:max_allocated_storage]
        type.default_allocated_storage = params[:default_allocated_storage]
        type.included_allocated_storage = params[:included_allocated_storage]
        type.availability_zones = AvailabilityZonesList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.release_status = params[:release_status]
        type
      end
    end

    module OrderableReplicationInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrderableReplicationInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingMaintenanceAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingMaintenanceAction, context: context)
        type = Types::PendingMaintenanceAction.new
        type.action = params[:action]
        type.auto_applied_after_date = params[:auto_applied_after_date]
        type.forced_apply_date = params[:forced_apply_date]
        type.opt_in_status = params[:opt_in_status]
        type.current_apply_date = params[:current_apply_date]
        type.description = params[:description]
        type
      end
    end

    module PendingMaintenanceActionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingMaintenanceAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingMaintenanceActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePendingMaintenanceActions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PostgreSQLSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostgreSQLSettings, context: context)
        type = Types::PostgreSQLSettings.new
        type.after_connect_script = params[:after_connect_script]
        type.capture_ddls = params[:capture_ddls]
        type.max_file_size = params[:max_file_size]
        type.database_name = params[:database_name]
        type.ddl_artifacts_schema = params[:ddl_artifacts_schema]
        type.execute_timeout = params[:execute_timeout]
        type.fail_tasks_on_lob_truncation = params[:fail_tasks_on_lob_truncation]
        type.heartbeat_enable = params[:heartbeat_enable]
        type.heartbeat_schema = params[:heartbeat_schema]
        type.heartbeat_frequency = params[:heartbeat_frequency]
        type.password = params[:password]
        type.port = params[:port]
        type.server_name = params[:server_name]
        type.username = params[:username]
        type.slot_name = params[:slot_name]
        type.plugin_name = params[:plugin_name]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module RebootReplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootReplicationInstanceInput, context: context)
        type = Types::RebootReplicationInstanceInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.force_failover = params[:force_failover]
        type.force_planned_failover = params[:force_planned_failover]
        type
      end
    end

    module RebootReplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootReplicationInstanceOutput, context: context)
        type = Types::RebootReplicationInstanceOutput.new
        type.replication_instance = ReplicationInstance.build(params[:replication_instance], context: "#{context}[:replication_instance]") unless params[:replication_instance].nil?
        type
      end
    end

    module RedisSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedisSettings, context: context)
        type = Types::RedisSettings.new
        type.server_name = params[:server_name]
        type.port = params[:port]
        type.ssl_security_protocol = params[:ssl_security_protocol]
        type.auth_type = params[:auth_type]
        type.auth_user_name = params[:auth_user_name]
        type.auth_password = params[:auth_password]
        type.ssl_ca_certificate_arn = params[:ssl_ca_certificate_arn]
        type
      end
    end

    module RedshiftSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftSettings, context: context)
        type = Types::RedshiftSettings.new
        type.accept_any_date = params[:accept_any_date]
        type.after_connect_script = params[:after_connect_script]
        type.bucket_folder = params[:bucket_folder]
        type.bucket_name = params[:bucket_name]
        type.case_sensitive_names = params[:case_sensitive_names]
        type.comp_update = params[:comp_update]
        type.connection_timeout = params[:connection_timeout]
        type.database_name = params[:database_name]
        type.date_format = params[:date_format]
        type.empty_as_null = params[:empty_as_null]
        type.encryption_mode = params[:encryption_mode]
        type.explicit_ids = params[:explicit_ids]
        type.file_transfer_upload_streams = params[:file_transfer_upload_streams]
        type.load_timeout = params[:load_timeout]
        type.max_file_size = params[:max_file_size]
        type.password = params[:password]
        type.port = params[:port]
        type.remove_quotes = params[:remove_quotes]
        type.replace_invalid_chars = params[:replace_invalid_chars]
        type.replace_chars = params[:replace_chars]
        type.server_name = params[:server_name]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.server_side_encryption_kms_key_id = params[:server_side_encryption_kms_key_id]
        type.time_format = params[:time_format]
        type.trim_blanks = params[:trim_blanks]
        type.truncate_columns = params[:truncate_columns]
        type.username = params[:username]
        type.write_buffer_size = params[:write_buffer_size]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module RefreshSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshSchemasInput, context: context)
        type = Types::RefreshSchemasInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type.replication_instance_arn = params[:replication_instance_arn]
        type
      end
    end

    module RefreshSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshSchemasOutput, context: context)
        type = Types::RefreshSchemasOutput.new
        type.refresh_schemas_status = RefreshSchemasStatus.build(params[:refresh_schemas_status], context: "#{context}[:refresh_schemas_status]") unless params[:refresh_schemas_status].nil?
        type
      end
    end

    module RefreshSchemasStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshSchemasStatus, context: context)
        type = Types::RefreshSchemasStatus.new
        type.endpoint_arn = params[:endpoint_arn]
        type.replication_instance_arn = params[:replication_instance_arn]
        type.status = params[:status]
        type.last_refresh_date = params[:last_refresh_date]
        type.last_failure_message = params[:last_failure_message]
        type
      end
    end

    module ReloadTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReloadTablesInput, context: context)
        type = Types::ReloadTablesInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.tables_to_reload = TableListToReload.build(params[:tables_to_reload], context: "#{context}[:tables_to_reload]") unless params[:tables_to_reload].nil?
        type.reload_option = params[:reload_option]
        type
      end
    end

    module ReloadTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReloadTablesOutput, context: context)
        type = Types::ReloadTablesOutput.new
        type.replication_task_arn = params[:replication_task_arn]
        type
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = KeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type
      end
    end

    module ReplicationInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationInstance, context: context)
        type = Types::ReplicationInstance.new
        type.replication_instance_identifier = params[:replication_instance_identifier]
        type.replication_instance_class = params[:replication_instance_class]
        type.replication_instance_status = params[:replication_instance_status]
        type.allocated_storage = params[:allocated_storage]
        type.instance_create_time = params[:instance_create_time]
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.availability_zone = params[:availability_zone]
        type.replication_subnet_group = ReplicationSubnetGroup.build(params[:replication_subnet_group], context: "#{context}[:replication_subnet_group]") unless params[:replication_subnet_group].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.pending_modified_values = ReplicationPendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.kms_key_id = params[:kms_key_id]
        type.replication_instance_arn = params[:replication_instance_arn]
        type.replication_instance_public_ip_address = params[:replication_instance_public_ip_address]
        type.replication_instance_private_ip_address = params[:replication_instance_private_ip_address]
        type.replication_instance_public_ip_addresses = ReplicationInstancePublicIpAddressList.build(params[:replication_instance_public_ip_addresses], context: "#{context}[:replication_instance_public_ip_addresses]") unless params[:replication_instance_public_ip_addresses].nil?
        type.replication_instance_private_ip_addresses = ReplicationInstancePrivateIpAddressList.build(params[:replication_instance_private_ip_addresses], context: "#{context}[:replication_instance_private_ip_addresses]") unless params[:replication_instance_private_ip_addresses].nil?
        type.publicly_accessible = params[:publicly_accessible]
        type.secondary_availability_zone = params[:secondary_availability_zone]
        type.free_until = params[:free_until]
        type.dns_name_servers = params[:dns_name_servers]
        type
      end
    end

    module ReplicationInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationInstancePrivateIpAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicationInstancePublicIpAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicationInstanceTaskLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationInstanceTaskLog, context: context)
        type = Types::ReplicationInstanceTaskLog.new
        type.replication_task_name = params[:replication_task_name]
        type.replication_task_arn = params[:replication_task_arn]
        type.replication_instance_task_log_size = params[:replication_instance_task_log_size]
        type
      end
    end

    module ReplicationInstanceTaskLogsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationInstanceTaskLog.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationPendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationPendingModifiedValues, context: context)
        type = Types::ReplicationPendingModifiedValues.new
        type.replication_instance_class = params[:replication_instance_class]
        type.allocated_storage = params[:allocated_storage]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type
      end
    end

    module ReplicationSubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationSubnetGroup, context: context)
        type = Types::ReplicationSubnetGroup.new
        type.replication_subnet_group_identifier = params[:replication_subnet_group_identifier]
        type.replication_subnet_group_description = params[:replication_subnet_group_description]
        type.vpc_id = params[:vpc_id]
        type.subnet_group_status = params[:subnet_group_status]
        type.subnets = SubnetList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module ReplicationSubnetGroupDoesNotCoverEnoughAZs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs, context: context)
        type = Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationSubnetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationSubnetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationTask, context: context)
        type = Types::ReplicationTask.new
        type.replication_task_identifier = params[:replication_task_identifier]
        type.source_endpoint_arn = params[:source_endpoint_arn]
        type.target_endpoint_arn = params[:target_endpoint_arn]
        type.replication_instance_arn = params[:replication_instance_arn]
        type.migration_type = params[:migration_type]
        type.table_mappings = params[:table_mappings]
        type.replication_task_settings = params[:replication_task_settings]
        type.status = params[:status]
        type.last_failure_message = params[:last_failure_message]
        type.stop_reason = params[:stop_reason]
        type.replication_task_creation_date = params[:replication_task_creation_date]
        type.replication_task_start_date = params[:replication_task_start_date]
        type.cdc_start_position = params[:cdc_start_position]
        type.cdc_stop_position = params[:cdc_stop_position]
        type.recovery_checkpoint = params[:recovery_checkpoint]
        type.replication_task_arn = params[:replication_task_arn]
        type.replication_task_stats = ReplicationTaskStats.build(params[:replication_task_stats], context: "#{context}[:replication_task_stats]") unless params[:replication_task_stats].nil?
        type.task_data = params[:task_data]
        type.target_replication_instance_arn = params[:target_replication_instance_arn]
        type
      end
    end

    module ReplicationTaskAssessmentResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationTaskAssessmentResult, context: context)
        type = Types::ReplicationTaskAssessmentResult.new
        type.replication_task_identifier = params[:replication_task_identifier]
        type.replication_task_arn = params[:replication_task_arn]
        type.replication_task_last_assessment_date = params[:replication_task_last_assessment_date]
        type.assessment_status = params[:assessment_status]
        type.assessment_results_file = params[:assessment_results_file]
        type.assessment_results = params[:assessment_results]
        type.s3_object_url = params[:s3_object_url]
        type
      end
    end

    module ReplicationTaskAssessmentResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationTaskAssessmentResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationTaskAssessmentRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationTaskAssessmentRun, context: context)
        type = Types::ReplicationTaskAssessmentRun.new
        type.replication_task_assessment_run_arn = params[:replication_task_assessment_run_arn]
        type.replication_task_arn = params[:replication_task_arn]
        type.status = params[:status]
        type.replication_task_assessment_run_creation_date = params[:replication_task_assessment_run_creation_date]
        type.assessment_progress = ReplicationTaskAssessmentRunProgress.build(params[:assessment_progress], context: "#{context}[:assessment_progress]") unless params[:assessment_progress].nil?
        type.last_failure_message = params[:last_failure_message]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.result_location_bucket = params[:result_location_bucket]
        type.result_location_folder = params[:result_location_folder]
        type.result_encryption_mode = params[:result_encryption_mode]
        type.result_kms_key_arn = params[:result_kms_key_arn]
        type.assessment_run_name = params[:assessment_run_name]
        type
      end
    end

    module ReplicationTaskAssessmentRunList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationTaskAssessmentRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationTaskAssessmentRunProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationTaskAssessmentRunProgress, context: context)
        type = Types::ReplicationTaskAssessmentRunProgress.new
        type.individual_assessment_count = params[:individual_assessment_count]
        type.individual_assessment_completed_count = params[:individual_assessment_completed_count]
        type
      end
    end

    module ReplicationTaskIndividualAssessment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationTaskIndividualAssessment, context: context)
        type = Types::ReplicationTaskIndividualAssessment.new
        type.replication_task_individual_assessment_arn = params[:replication_task_individual_assessment_arn]
        type.replication_task_assessment_run_arn = params[:replication_task_assessment_run_arn]
        type.individual_assessment_name = params[:individual_assessment_name]
        type.status = params[:status]
        type.replication_task_individual_assessment_start_date = params[:replication_task_individual_assessment_start_date]
        type
      end
    end

    module ReplicationTaskIndividualAssessmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationTaskIndividualAssessment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationTaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationTaskStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationTaskStats, context: context)
        type = Types::ReplicationTaskStats.new
        type.full_load_progress_percent = params[:full_load_progress_percent]
        type.elapsed_time_millis = params[:elapsed_time_millis]
        type.tables_loaded = params[:tables_loaded]
        type.tables_loading = params[:tables_loading]
        type.tables_queued = params[:tables_queued]
        type.tables_errored = params[:tables_errored]
        type.fresh_start_date = params[:fresh_start_date]
        type.start_date = params[:start_date]
        type.stop_date = params[:stop_date]
        type.full_load_start_date = params[:full_load_start_date]
        type.full_load_finish_date = params[:full_load_finish_date]
        type
      end
    end

    module ResourceAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsFault, context: context)
        type = Types::ResourceAlreadyExistsFault.new
        type.message = params[:message]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResourceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundFault, context: context)
        type = Types::ResourceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ResourcePendingMaintenanceActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePendingMaintenanceActions, context: context)
        type = Types::ResourcePendingMaintenanceActions.new
        type.resource_identifier = params[:resource_identifier]
        type.pending_maintenance_action_details = PendingMaintenanceActionDetails.build(params[:pending_maintenance_action_details], context: "#{context}[:pending_maintenance_action_details]") unless params[:pending_maintenance_action_details].nil?
        type
      end
    end

    module ResourceQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceQuotaExceededFault, context: context)
        type = Types::ResourceQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module RunFleetAdvisorLsaAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunFleetAdvisorLsaAnalysisInput, context: context)
        type = Types::RunFleetAdvisorLsaAnalysisInput.new
        type
      end
    end

    module RunFleetAdvisorLsaAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunFleetAdvisorLsaAnalysisOutput, context: context)
        type = Types::RunFleetAdvisorLsaAnalysisOutput.new
        type.lsa_analysis_id = params[:lsa_analysis_id]
        type.status = params[:status]
        type
      end
    end

    module S3AccessDeniedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3AccessDeniedFault, context: context)
        type = Types::S3AccessDeniedFault.new
        type.message = params[:message]
        type
      end
    end

    module S3ResourceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ResourceNotFoundFault, context: context)
        type = Types::S3ResourceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module S3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Settings, context: context)
        type = Types::S3Settings.new
        type.service_access_role_arn = params[:service_access_role_arn]
        type.external_table_definition = params[:external_table_definition]
        type.csv_row_delimiter = params[:csv_row_delimiter]
        type.csv_delimiter = params[:csv_delimiter]
        type.bucket_folder = params[:bucket_folder]
        type.bucket_name = params[:bucket_name]
        type.compression_type = params[:compression_type]
        type.encryption_mode = params[:encryption_mode]
        type.server_side_encryption_kms_key_id = params[:server_side_encryption_kms_key_id]
        type.data_format = params[:data_format]
        type.encoding_type = params[:encoding_type]
        type.dict_page_size_limit = params[:dict_page_size_limit]
        type.row_group_length = params[:row_group_length]
        type.data_page_size = params[:data_page_size]
        type.parquet_version = params[:parquet_version]
        type.enable_statistics = params[:enable_statistics]
        type.include_op_for_full_load = params[:include_op_for_full_load]
        type.cdc_inserts_only = params[:cdc_inserts_only]
        type.timestamp_column_name = params[:timestamp_column_name]
        type.parquet_timestamp_in_millisecond = params[:parquet_timestamp_in_millisecond]
        type.cdc_inserts_and_updates = params[:cdc_inserts_and_updates]
        type.date_partition_enabled = params[:date_partition_enabled]
        type.date_partition_sequence = params[:date_partition_sequence]
        type.date_partition_delimiter = params[:date_partition_delimiter]
        type.use_csv_no_sup_value = params[:use_csv_no_sup_value]
        type.csv_no_sup_value = params[:csv_no_sup_value]
        type.preserve_transactions = params[:preserve_transactions]
        type.cdc_path = params[:cdc_path]
        type.use_task_start_time_for_full_load_timestamp = params[:use_task_start_time_for_full_load_timestamp]
        type.canned_acl_for_objects = params[:canned_acl_for_objects]
        type.add_column_name = params[:add_column_name]
        type.cdc_max_batch_interval = params[:cdc_max_batch_interval]
        type.cdc_min_file_size = params[:cdc_min_file_size]
        type.csv_null_value = params[:csv_null_value]
        type.ignore_header_rows = params[:ignore_header_rows]
        type.max_file_size = params[:max_file_size]
        type.rfc4180 = params[:rfc4180]
        type.date_partition_timezone = params[:date_partition_timezone]
        type
      end
    end

    module SNSInvalidTopicFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSInvalidTopicFault, context: context)
        type = Types::SNSInvalidTopicFault.new
        type.message = params[:message]
        type
      end
    end

    module SNSNoAuthorizationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSNoAuthorizationFault, context: context)
        type = Types::SNSNoAuthorizationFault.new
        type.message = params[:message]
        type
      end
    end

    module SchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SchemaResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaResponse, context: context)
        type = Types::SchemaResponse.new
        type.code_line_count = params[:code_line_count]
        type.code_size = params[:code_size]
        type.complexity = params[:complexity]
        type.server = ServerShortInfoResponse.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type.database_instance = DatabaseShortInfoResponse.build(params[:database_instance], context: "#{context}[:database_instance]") unless params[:database_instance].nil?
        type.schema_id = params[:schema_id]
        type.schema_name = params[:schema_name]
        type.original_schema = SchemaShortInfoResponse.build(params[:original_schema], context: "#{context}[:original_schema]") unless params[:original_schema].nil?
        type.similarity = params[:similarity]
        type
      end
    end

    module SchemaShortInfoResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaShortInfoResponse, context: context)
        type = Types::SchemaShortInfoResponse.new
        type.schema_id = params[:schema_id]
        type.schema_name = params[:schema_name]
        type.database_id = params[:database_id]
        type.database_name = params[:database_name]
        type.database_ip_address = params[:database_ip_address]
        type
      end
    end

    module ServerShortInfoResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerShortInfoResponse, context: context)
        type = Types::ServerShortInfoResponse.new
        type.server_id = params[:server_id]
        type.ip_address = params[:ip_address]
        type.server_name = params[:server_name]
        type
      end
    end

    module SourceIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartReplicationTaskAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplicationTaskAssessmentInput, context: context)
        type = Types::StartReplicationTaskAssessmentInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type
      end
    end

    module StartReplicationTaskAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplicationTaskAssessmentOutput, context: context)
        type = Types::StartReplicationTaskAssessmentOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module StartReplicationTaskAssessmentRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplicationTaskAssessmentRunInput, context: context)
        type = Types::StartReplicationTaskAssessmentRunInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.service_access_role_arn = params[:service_access_role_arn]
        type.result_location_bucket = params[:result_location_bucket]
        type.result_location_folder = params[:result_location_folder]
        type.result_encryption_mode = params[:result_encryption_mode]
        type.result_kms_key_arn = params[:result_kms_key_arn]
        type.assessment_run_name = params[:assessment_run_name]
        type.include_only = IncludeTestList.build(params[:include_only], context: "#{context}[:include_only]") unless params[:include_only].nil?
        type.exclude = ExcludeTestList.build(params[:exclude], context: "#{context}[:exclude]") unless params[:exclude].nil?
        type
      end
    end

    module StartReplicationTaskAssessmentRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplicationTaskAssessmentRunOutput, context: context)
        type = Types::StartReplicationTaskAssessmentRunOutput.new
        type.replication_task_assessment_run = ReplicationTaskAssessmentRun.build(params[:replication_task_assessment_run], context: "#{context}[:replication_task_assessment_run]") unless params[:replication_task_assessment_run].nil?
        type
      end
    end

    module StartReplicationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplicationTaskInput, context: context)
        type = Types::StartReplicationTaskInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type.start_replication_task_type = params[:start_replication_task_type]
        type.cdc_start_time = params[:cdc_start_time]
        type.cdc_start_position = params[:cdc_start_position]
        type.cdc_stop_position = params[:cdc_stop_position]
        type
      end
    end

    module StartReplicationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplicationTaskOutput, context: context)
        type = Types::StartReplicationTaskOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module StopReplicationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopReplicationTaskInput, context: context)
        type = Types::StopReplicationTaskInput.new
        type.replication_task_arn = params[:replication_task_arn]
        type
      end
    end

    module StopReplicationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopReplicationTaskOutput, context: context)
        type = Types::StopReplicationTaskOutput.new
        type.replication_task = ReplicationTask.build(params[:replication_task], context: "#{context}[:replication_task]") unless params[:replication_task].nil?
        type
      end
    end

    module StorageQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageQuotaExceededFault, context: context)
        type = Types::StorageQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Subnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subnet, context: context)
        type = Types::Subnet.new
        type.subnet_identifier = params[:subnet_identifier]
        type.subnet_availability_zone = AvailabilityZone.build(params[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless params[:subnet_availability_zone].nil?
        type.subnet_status = params[:subnet_status]
        type
      end
    end

    module SubnetAlreadyInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetAlreadyInUse, context: context)
        type = Types::SubnetAlreadyInUse.new
        type.message = params[:message]
        type
      end
    end

    module SubnetIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subnet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SupportedEndpointType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SupportedEndpointType, context: context)
        type = Types::SupportedEndpointType.new
        type.engine_name = params[:engine_name]
        type.supports_cdc = params[:supports_cdc]
        type.endpoint_type = params[:endpoint_type]
        type.replication_instance_engine_minimum_version = params[:replication_instance_engine_minimum_version]
        type.engine_display_name = params[:engine_display_name]
        type
      end
    end

    module SupportedEndpointTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SupportedEndpointType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SybaseSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SybaseSettings, context: context)
        type = Types::SybaseSettings.new
        type.database_name = params[:database_name]
        type.password = params[:password]
        type.port = params[:port]
        type.server_name = params[:server_name]
        type.username = params[:username]
        type.secrets_manager_access_role_arn = params[:secrets_manager_access_role_arn]
        type.secrets_manager_secret_id = params[:secrets_manager_secret_id]
        type
      end
    end

    module TableListToReload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableToReload.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableStatistics, context: context)
        type = Types::TableStatistics.new
        type.schema_name = params[:schema_name]
        type.table_name = params[:table_name]
        type.inserts = params[:inserts]
        type.deletes = params[:deletes]
        type.updates = params[:updates]
        type.ddls = params[:ddls]
        type.full_load_rows = params[:full_load_rows]
        type.full_load_condtnl_chk_failed_rows = params[:full_load_condtnl_chk_failed_rows]
        type.full_load_error_rows = params[:full_load_error_rows]
        type.full_load_start_time = params[:full_load_start_time]
        type.full_load_end_time = params[:full_load_end_time]
        type.full_load_reloaded = params[:full_load_reloaded]
        type.last_update_time = params[:last_update_time]
        type.table_state = params[:table_state]
        type.validation_pending_records = params[:validation_pending_records]
        type.validation_failed_records = params[:validation_failed_records]
        type.validation_suspended_records = params[:validation_suspended_records]
        type.validation_state = params[:validation_state]
        type.validation_state_details = params[:validation_state_details]
        type
      end
    end

    module TableStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableToReload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableToReload, context: context)
        type = Types::TableToReload.new
        type.schema_name = params[:schema_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestConnectionInput, context: context)
        type = Types::TestConnectionInput.new
        type.replication_instance_arn = params[:replication_instance_arn]
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module TestConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestConnectionOutput, context: context)
        type = Types::TestConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module UpgradeDependencyFailureFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeDependencyFailureFault, context: context)
        type = Types::UpgradeDependencyFailureFault.new
        type.message = params[:message]
        type
      end
    end

    module VpcSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcSecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcSecurityGroupMembership, context: context)
        type = Types::VpcSecurityGroupMembership.new
        type.vpc_security_group_id = params[:vpc_security_group_id]
        type.status = params[:status]
        type
      end
    end

    module VpcSecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcSecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
