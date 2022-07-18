# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glue
  module Parsers

    # Operation Parser for BatchCreatePartition
    class BatchCreatePartition
      def self.parse(http_resp)
        data = Types::BatchCreatePartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::PartitionErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class PartitionErrors
      def self.parse(list)
        list.map do |value|
          Parsers::PartitionError.parse(value) unless value.nil?
        end
      end
    end

    class PartitionError
      def self.parse(map)
        data = Types::PartitionError.new
        data.partition_values = (Parsers::ValueStringList.parse(map['PartitionValues']) unless map['PartitionValues'].nil?)
        data.error_detail = (Parsers::ErrorDetail.parse(map['ErrorDetail']) unless map['ErrorDetail'].nil?)
        return data
      end
    end

    class ErrorDetail
      def self.parse(map)
        data = Types::ErrorDetail.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class ValueStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for GlueEncryptionException
    class GlueEncryptionException
      def self.parse(http_resp)
        data = Types::GlueEncryptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EntityNotFoundException
    class EntityNotFoundException
      def self.parse(http_resp)
        data = Types::EntityNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OperationTimeoutException
    class OperationTimeoutException
      def self.parse(http_resp)
        data = Types::OperationTimeoutException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNumberLimitExceededException
    class ResourceNumberLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceNumberLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchDeleteConnection
    class BatchDeleteConnection
      def self.parse(http_resp)
        data = Types::BatchDeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.succeeded = (Parsers::NameStringList.parse(map['Succeeded']) unless map['Succeeded'].nil?)
        data.errors = (Parsers::ErrorByName.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class ErrorByName
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ErrorDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class NameStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for BatchDeletePartition
    class BatchDeletePartition
      def self.parse(http_resp)
        data = Types::BatchDeletePartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::PartitionErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    # Operation Parser for BatchDeleteTable
    class BatchDeleteTable
      def self.parse(http_resp)
        data = Types::BatchDeleteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::TableErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class TableErrors
      def self.parse(list)
        list.map do |value|
          Parsers::TableError.parse(value) unless value.nil?
        end
      end
    end

    class TableError
      def self.parse(map)
        data = Types::TableError.new
        data.table_name = map['TableName']
        data.error_detail = (Parsers::ErrorDetail.parse(map['ErrorDetail']) unless map['ErrorDetail'].nil?)
        return data
      end
    end

    # Error Parser for ResourceNotReadyException
    class ResourceNotReadyException
      def self.parse(http_resp)
        data = Types::ResourceNotReadyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchDeleteTableVersion
    class BatchDeleteTableVersion
      def self.parse(http_resp)
        data = Types::BatchDeleteTableVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::TableVersionErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class TableVersionErrors
      def self.parse(list)
        list.map do |value|
          Parsers::TableVersionError.parse(value) unless value.nil?
        end
      end
    end

    class TableVersionError
      def self.parse(map)
        data = Types::TableVersionError.new
        data.table_name = map['TableName']
        data.version_id = map['VersionId']
        data.error_detail = (Parsers::ErrorDetail.parse(map['ErrorDetail']) unless map['ErrorDetail'].nil?)
        return data
      end
    end

    # Operation Parser for BatchGetBlueprints
    class BatchGetBlueprints
      def self.parse(http_resp)
        data = Types::BatchGetBlueprintsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprints = (Parsers::Blueprints.parse(map['Blueprints']) unless map['Blueprints'].nil?)
        data.missing_blueprints = (Parsers::BlueprintNames.parse(map['MissingBlueprints']) unless map['MissingBlueprints'].nil?)
        data
      end
    end

    class BlueprintNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Blueprints
      def self.parse(list)
        list.map do |value|
          Parsers::Blueprint.parse(value) unless value.nil?
        end
      end
    end

    class Blueprint
      def self.parse(map)
        data = Types::Blueprint.new
        data.name = map['Name']
        data.description = map['Description']
        data.created_on = Time.at(map['CreatedOn'].to_i) if map['CreatedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.parameter_spec = map['ParameterSpec']
        data.blueprint_location = map['BlueprintLocation']
        data.blueprint_service_location = map['BlueprintServiceLocation']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.last_active_definition = (Parsers::LastActiveDefinition.parse(map['LastActiveDefinition']) unless map['LastActiveDefinition'].nil?)
        return data
      end
    end

    class LastActiveDefinition
      def self.parse(map)
        data = Types::LastActiveDefinition.new
        data.description = map['Description']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.parameter_spec = map['ParameterSpec']
        data.blueprint_location = map['BlueprintLocation']
        data.blueprint_service_location = map['BlueprintServiceLocation']
        return data
      end
    end

    # Operation Parser for BatchGetCrawlers
    class BatchGetCrawlers
      def self.parse(http_resp)
        data = Types::BatchGetCrawlersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.crawlers = (Parsers::CrawlerList.parse(map['Crawlers']) unless map['Crawlers'].nil?)
        data.crawlers_not_found = (Parsers::CrawlerNameList.parse(map['CrawlersNotFound']) unless map['CrawlersNotFound'].nil?)
        data
      end
    end

    class CrawlerNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CrawlerList
      def self.parse(list)
        list.map do |value|
          Parsers::Crawler.parse(value) unless value.nil?
        end
      end
    end

    class Crawler
      def self.parse(map)
        data = Types::Crawler.new
        data.name = map['Name']
        data.role = map['Role']
        data.targets = (Parsers::CrawlerTargets.parse(map['Targets']) unless map['Targets'].nil?)
        data.database_name = map['DatabaseName']
        data.description = map['Description']
        data.classifiers = (Parsers::ClassifierNameList.parse(map['Classifiers']) unless map['Classifiers'].nil?)
        data.recrawl_policy = (Parsers::RecrawlPolicy.parse(map['RecrawlPolicy']) unless map['RecrawlPolicy'].nil?)
        data.schema_change_policy = (Parsers::SchemaChangePolicy.parse(map['SchemaChangePolicy']) unless map['SchemaChangePolicy'].nil?)
        data.lineage_configuration = (Parsers::LineageConfiguration.parse(map['LineageConfiguration']) unless map['LineageConfiguration'].nil?)
        data.state = map['State']
        data.table_prefix = map['TablePrefix']
        data.schedule = (Parsers::Schedule.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.crawl_elapsed_time = map['CrawlElapsedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.last_crawl = (Parsers::LastCrawlInfo.parse(map['LastCrawl']) unless map['LastCrawl'].nil?)
        data.version = map['Version']
        data.configuration = map['Configuration']
        data.crawler_security_configuration = map['CrawlerSecurityConfiguration']
        data.lake_formation_configuration = (Parsers::LakeFormationConfiguration.parse(map['LakeFormationConfiguration']) unless map['LakeFormationConfiguration'].nil?)
        return data
      end
    end

    class LakeFormationConfiguration
      def self.parse(map)
        data = Types::LakeFormationConfiguration.new
        data.use_lake_formation_credentials = map['UseLakeFormationCredentials']
        data.account_id = map['AccountId']
        return data
      end
    end

    class LastCrawlInfo
      def self.parse(map)
        data = Types::LastCrawlInfo.new
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.log_group = map['LogGroup']
        data.log_stream = map['LogStream']
        data.message_prefix = map['MessagePrefix']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        return data
      end
    end

    class Schedule
      def self.parse(map)
        data = Types::Schedule.new
        data.schedule_expression = map['ScheduleExpression']
        data.state = map['State']
        return data
      end
    end

    class LineageConfiguration
      def self.parse(map)
        data = Types::LineageConfiguration.new
        data.crawler_lineage_settings = map['CrawlerLineageSettings']
        return data
      end
    end

    class SchemaChangePolicy
      def self.parse(map)
        data = Types::SchemaChangePolicy.new
        data.update_behavior = map['UpdateBehavior']
        data.delete_behavior = map['DeleteBehavior']
        return data
      end
    end

    class RecrawlPolicy
      def self.parse(map)
        data = Types::RecrawlPolicy.new
        data.recrawl_behavior = map['RecrawlBehavior']
        return data
      end
    end

    class ClassifierNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CrawlerTargets
      def self.parse(map)
        data = Types::CrawlerTargets.new
        data.s3_targets = (Parsers::S3TargetList.parse(map['S3Targets']) unless map['S3Targets'].nil?)
        data.jdbc_targets = (Parsers::JdbcTargetList.parse(map['JdbcTargets']) unless map['JdbcTargets'].nil?)
        data.mongo_db_targets = (Parsers::MongoDBTargetList.parse(map['MongoDBTargets']) unless map['MongoDBTargets'].nil?)
        data.dynamo_db_targets = (Parsers::DynamoDBTargetList.parse(map['DynamoDBTargets']) unless map['DynamoDBTargets'].nil?)
        data.catalog_targets = (Parsers::CatalogTargetList.parse(map['CatalogTargets']) unless map['CatalogTargets'].nil?)
        data.delta_targets = (Parsers::DeltaTargetList.parse(map['DeltaTargets']) unless map['DeltaTargets'].nil?)
        return data
      end
    end

    class DeltaTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::DeltaTarget.parse(value) unless value.nil?
        end
      end
    end

    class DeltaTarget
      def self.parse(map)
        data = Types::DeltaTarget.new
        data.delta_tables = (Parsers::PathList.parse(map['DeltaTables']) unless map['DeltaTables'].nil?)
        data.connection_name = map['ConnectionName']
        data.write_manifest = map['WriteManifest']
        return data
      end
    end

    class PathList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CatalogTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::CatalogTarget.parse(value) unless value.nil?
        end
      end
    end

    class CatalogTarget
      def self.parse(map)
        data = Types::CatalogTarget.new
        data.database_name = map['DatabaseName']
        data.tables = (Parsers::CatalogTablesList.parse(map['Tables']) unless map['Tables'].nil?)
        data.connection_name = map['ConnectionName']
        return data
      end
    end

    class CatalogTablesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DynamoDBTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::DynamoDBTarget.parse(value) unless value.nil?
        end
      end
    end

    class DynamoDBTarget
      def self.parse(map)
        data = Types::DynamoDBTarget.new
        data.path = map['Path']
        data.scan_all = map['scanAll']
        data.scan_rate = Hearth::NumberHelper.deserialize(map['scanRate'])
        return data
      end
    end

    class MongoDBTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::MongoDBTarget.parse(value) unless value.nil?
        end
      end
    end

    class MongoDBTarget
      def self.parse(map)
        data = Types::MongoDBTarget.new
        data.connection_name = map['ConnectionName']
        data.path = map['Path']
        data.scan_all = map['ScanAll']
        return data
      end
    end

    class JdbcTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::JdbcTarget.parse(value) unless value.nil?
        end
      end
    end

    class JdbcTarget
      def self.parse(map)
        data = Types::JdbcTarget.new
        data.connection_name = map['ConnectionName']
        data.path = map['Path']
        data.exclusions = (Parsers::PathList.parse(map['Exclusions']) unless map['Exclusions'].nil?)
        return data
      end
    end

    class S3TargetList
      def self.parse(list)
        list.map do |value|
          Parsers::S3Target.parse(value) unless value.nil?
        end
      end
    end

    class S3Target
      def self.parse(map)
        data = Types::S3Target.new
        data.path = map['Path']
        data.exclusions = (Parsers::PathList.parse(map['Exclusions']) unless map['Exclusions'].nil?)
        data.connection_name = map['ConnectionName']
        data.sample_size = map['SampleSize']
        data.event_queue_arn = map['EventQueueArn']
        data.dlq_event_queue_arn = map['DlqEventQueueArn']
        return data
      end
    end

    # Operation Parser for BatchGetCustomEntityTypes
    class BatchGetCustomEntityTypes
      def self.parse(http_resp)
        data = Types::BatchGetCustomEntityTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.custom_entity_types = (Parsers::CustomEntityTypes.parse(map['CustomEntityTypes']) unless map['CustomEntityTypes'].nil?)
        data.custom_entity_types_not_found = (Parsers::CustomEntityTypeNames.parse(map['CustomEntityTypesNotFound']) unless map['CustomEntityTypesNotFound'].nil?)
        data
      end
    end

    class CustomEntityTypeNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CustomEntityTypes
      def self.parse(list)
        list.map do |value|
          Parsers::CustomEntityType.parse(value) unless value.nil?
        end
      end
    end

    class CustomEntityType
      def self.parse(map)
        data = Types::CustomEntityType.new
        data.name = map['Name']
        data.regex_string = map['RegexString']
        data.context_words = (Parsers::ContextWords.parse(map['ContextWords']) unless map['ContextWords'].nil?)
        return data
      end
    end

    class ContextWords
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for BatchGetDevEndpoints
    class BatchGetDevEndpoints
      def self.parse(http_resp)
        data = Types::BatchGetDevEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dev_endpoints = (Parsers::DevEndpointList.parse(map['DevEndpoints']) unless map['DevEndpoints'].nil?)
        data.dev_endpoints_not_found = (Parsers::DevEndpointNames.parse(map['DevEndpointsNotFound']) unless map['DevEndpointsNotFound'].nil?)
        data
      end
    end

    class DevEndpointNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DevEndpointList
      def self.parse(list)
        list.map do |value|
          Parsers::DevEndpoint.parse(value) unless value.nil?
        end
      end
    end

    class DevEndpoint
      def self.parse(map)
        data = Types::DevEndpoint.new
        data.endpoint_name = map['EndpointName']
        data.role_arn = map['RoleArn']
        data.security_group_ids = (Parsers::StringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnet_id = map['SubnetId']
        data.yarn_endpoint_address = map['YarnEndpointAddress']
        data.private_address = map['PrivateAddress']
        data.zeppelin_remote_spark_interpreter_port = map['ZeppelinRemoteSparkInterpreterPort']
        data.public_address = map['PublicAddress']
        data.status = map['Status']
        data.worker_type = map['WorkerType']
        data.glue_version = map['GlueVersion']
        data.number_of_workers = map['NumberOfWorkers']
        data.number_of_nodes = map['NumberOfNodes']
        data.availability_zone = map['AvailabilityZone']
        data.vpc_id = map['VpcId']
        data.extra_python_libs_s3_path = map['ExtraPythonLibsS3Path']
        data.extra_jars_s3_path = map['ExtraJarsS3Path']
        data.failure_reason = map['FailureReason']
        data.last_update_status = map['LastUpdateStatus']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_modified_timestamp = Time.at(map['LastModifiedTimestamp'].to_i) if map['LastModifiedTimestamp']
        data.public_key = map['PublicKey']
        data.public_keys = (Parsers::PublicKeysList.parse(map['PublicKeys']) unless map['PublicKeys'].nil?)
        data.security_configuration = map['SecurityConfiguration']
        data.arguments = (Parsers::MapValue.parse(map['Arguments']) unless map['Arguments'].nil?)
        return data
      end
    end

    class MapValue
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PublicKeysList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchGetJobs
    class BatchGetJobs
      def self.parse(http_resp)
        data = Types::BatchGetJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.jobs = (Parsers::JobList.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.jobs_not_found = (Parsers::JobNameList.parse(map['JobsNotFound']) unless map['JobsNotFound'].nil?)
        data
      end
    end

    class JobNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JobList
      def self.parse(list)
        list.map do |value|
          Parsers::Job.parse(value) unless value.nil?
        end
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.name = map['Name']
        data.description = map['Description']
        data.log_uri = map['LogUri']
        data.role = map['Role']
        data.created_on = Time.at(map['CreatedOn'].to_i) if map['CreatedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.execution_property = (Parsers::ExecutionProperty.parse(map['ExecutionProperty']) unless map['ExecutionProperty'].nil?)
        data.command = (Parsers::JobCommand.parse(map['Command']) unless map['Command'].nil?)
        data.default_arguments = (Parsers::GenericMap.parse(map['DefaultArguments']) unless map['DefaultArguments'].nil?)
        data.non_overridable_arguments = (Parsers::GenericMap.parse(map['NonOverridableArguments']) unless map['NonOverridableArguments'].nil?)
        data.connections = (Parsers::ConnectionsList.parse(map['Connections']) unless map['Connections'].nil?)
        data.max_retries = map['MaxRetries']
        data.allocated_capacity = map['AllocatedCapacity']
        data.timeout = map['Timeout']
        data.max_capacity = Hearth::NumberHelper.deserialize(map['MaxCapacity'])
        data.worker_type = map['WorkerType']
        data.number_of_workers = map['NumberOfWorkers']
        data.security_configuration = map['SecurityConfiguration']
        data.notification_property = (Parsers::NotificationProperty.parse(map['NotificationProperty']) unless map['NotificationProperty'].nil?)
        data.glue_version = map['GlueVersion']
        data.code_gen_configuration_nodes = (Parsers::CodeGenConfigurationNodes.parse(map['CodeGenConfigurationNodes']) unless map['CodeGenConfigurationNodes'].nil?)
        return data
      end
    end

    class CodeGenConfigurationNodes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::CodeGenConfigurationNode.parse(value) unless value.nil?
        end
        data
      end
    end

    class CodeGenConfigurationNode
      def self.parse(map)
        data = Types::CodeGenConfigurationNode.new
        data.athena_connector_source = (Parsers::AthenaConnectorSource.parse(map['AthenaConnectorSource']) unless map['AthenaConnectorSource'].nil?)
        data.jdbc_connector_source = (Parsers::JDBCConnectorSource.parse(map['JDBCConnectorSource']) unless map['JDBCConnectorSource'].nil?)
        data.spark_connector_source = (Parsers::SparkConnectorSource.parse(map['SparkConnectorSource']) unless map['SparkConnectorSource'].nil?)
        data.catalog_source = (Parsers::CatalogSource.parse(map['CatalogSource']) unless map['CatalogSource'].nil?)
        data.redshift_source = (Parsers::RedshiftSource.parse(map['RedshiftSource']) unless map['RedshiftSource'].nil?)
        data.s3_catalog_source = (Parsers::S3CatalogSource.parse(map['S3CatalogSource']) unless map['S3CatalogSource'].nil?)
        data.s3_csv_source = (Parsers::S3CsvSource.parse(map['S3CsvSource']) unless map['S3CsvSource'].nil?)
        data.s3_json_source = (Parsers::S3JsonSource.parse(map['S3JsonSource']) unless map['S3JsonSource'].nil?)
        data.s3_parquet_source = (Parsers::S3ParquetSource.parse(map['S3ParquetSource']) unless map['S3ParquetSource'].nil?)
        data.relational_catalog_source = (Parsers::RelationalCatalogSource.parse(map['RelationalCatalogSource']) unless map['RelationalCatalogSource'].nil?)
        data.dynamo_db_catalog_source = (Parsers::DynamoDBCatalogSource.parse(map['DynamoDBCatalogSource']) unless map['DynamoDBCatalogSource'].nil?)
        data.jdbc_connector_target = (Parsers::JDBCConnectorTarget.parse(map['JDBCConnectorTarget']) unless map['JDBCConnectorTarget'].nil?)
        data.spark_connector_target = (Parsers::SparkConnectorTarget.parse(map['SparkConnectorTarget']) unless map['SparkConnectorTarget'].nil?)
        data.catalog_target = (Parsers::BasicCatalogTarget.parse(map['CatalogTarget']) unless map['CatalogTarget'].nil?)
        data.redshift_target = (Parsers::RedshiftTarget.parse(map['RedshiftTarget']) unless map['RedshiftTarget'].nil?)
        data.s3_catalog_target = (Parsers::S3CatalogTarget.parse(map['S3CatalogTarget']) unless map['S3CatalogTarget'].nil?)
        data.s3_glue_parquet_target = (Parsers::S3GlueParquetTarget.parse(map['S3GlueParquetTarget']) unless map['S3GlueParquetTarget'].nil?)
        data.s3_direct_target = (Parsers::S3DirectTarget.parse(map['S3DirectTarget']) unless map['S3DirectTarget'].nil?)
        data.apply_mapping = (Parsers::ApplyMapping.parse(map['ApplyMapping']) unless map['ApplyMapping'].nil?)
        data.select_fields = (Parsers::SelectFields.parse(map['SelectFields']) unless map['SelectFields'].nil?)
        data.drop_fields = (Parsers::DropFields.parse(map['DropFields']) unless map['DropFields'].nil?)
        data.rename_field = (Parsers::RenameField.parse(map['RenameField']) unless map['RenameField'].nil?)
        data.spigot = (Parsers::Spigot.parse(map['Spigot']) unless map['Spigot'].nil?)
        data.join = (Parsers::Join.parse(map['Join']) unless map['Join'].nil?)
        data.split_fields = (Parsers::SplitFields.parse(map['SplitFields']) unless map['SplitFields'].nil?)
        data.select_from_collection = (Parsers::SelectFromCollection.parse(map['SelectFromCollection']) unless map['SelectFromCollection'].nil?)
        data.fill_missing_values = (Parsers::FillMissingValues.parse(map['FillMissingValues']) unless map['FillMissingValues'].nil?)
        data.filter = (Parsers::Filter.parse(map['Filter']) unless map['Filter'].nil?)
        data.custom_code = (Parsers::CustomCode.parse(map['CustomCode']) unless map['CustomCode'].nil?)
        data.spark_sql = (Parsers::SparkSQL.parse(map['SparkSQL']) unless map['SparkSQL'].nil?)
        data.direct_kinesis_source = (Parsers::DirectKinesisSource.parse(map['DirectKinesisSource']) unless map['DirectKinesisSource'].nil?)
        data.direct_kafka_source = (Parsers::DirectKafkaSource.parse(map['DirectKafkaSource']) unless map['DirectKafkaSource'].nil?)
        data.catalog_kinesis_source = (Parsers::CatalogKinesisSource.parse(map['CatalogKinesisSource']) unless map['CatalogKinesisSource'].nil?)
        data.catalog_kafka_source = (Parsers::CatalogKafkaSource.parse(map['CatalogKafkaSource']) unless map['CatalogKafkaSource'].nil?)
        data.drop_null_fields = (Parsers::DropNullFields.parse(map['DropNullFields']) unless map['DropNullFields'].nil?)
        data.merge = (Parsers::Merge.parse(map['Merge']) unless map['Merge'].nil?)
        data.union = (Parsers::Union.parse(map['Union']) unless map['Union'].nil?)
        data.pii_detection = (Parsers::PIIDetection.parse(map['PIIDetection']) unless map['PIIDetection'].nil?)
        data.aggregate = (Parsers::Aggregate.parse(map['Aggregate']) unless map['Aggregate'].nil?)
        data.drop_duplicates = (Parsers::DropDuplicates.parse(map['DropDuplicates']) unless map['DropDuplicates'].nil?)
        data.governed_catalog_target = (Parsers::GovernedCatalogTarget.parse(map['GovernedCatalogTarget']) unless map['GovernedCatalogTarget'].nil?)
        data.governed_catalog_source = (Parsers::GovernedCatalogSource.parse(map['GovernedCatalogSource']) unless map['GovernedCatalogSource'].nil?)
        data.microsoft_sql_server_catalog_source = (Parsers::MicrosoftSQLServerCatalogSource.parse(map['MicrosoftSQLServerCatalogSource']) unless map['MicrosoftSQLServerCatalogSource'].nil?)
        data.my_sql_catalog_source = (Parsers::MySQLCatalogSource.parse(map['MySQLCatalogSource']) unless map['MySQLCatalogSource'].nil?)
        data.oracle_sql_catalog_source = (Parsers::OracleSQLCatalogSource.parse(map['OracleSQLCatalogSource']) unless map['OracleSQLCatalogSource'].nil?)
        data.postgre_sql_catalog_source = (Parsers::PostgreSQLCatalogSource.parse(map['PostgreSQLCatalogSource']) unless map['PostgreSQLCatalogSource'].nil?)
        data.microsoft_sql_server_catalog_target = (Parsers::MicrosoftSQLServerCatalogTarget.parse(map['MicrosoftSQLServerCatalogTarget']) unless map['MicrosoftSQLServerCatalogTarget'].nil?)
        data.my_sql_catalog_target = (Parsers::MySQLCatalogTarget.parse(map['MySQLCatalogTarget']) unless map['MySQLCatalogTarget'].nil?)
        data.oracle_sql_catalog_target = (Parsers::OracleSQLCatalogTarget.parse(map['OracleSQLCatalogTarget']) unless map['OracleSQLCatalogTarget'].nil?)
        data.postgre_sql_catalog_target = (Parsers::PostgreSQLCatalogTarget.parse(map['PostgreSQLCatalogTarget']) unless map['PostgreSQLCatalogTarget'].nil?)
        return data
      end
    end

    class PostgreSQLCatalogTarget
      def self.parse(map)
        data = Types::PostgreSQLCatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class OneInput
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OracleSQLCatalogTarget
      def self.parse(map)
        data = Types::OracleSQLCatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class MySQLCatalogTarget
      def self.parse(map)
        data = Types::MySQLCatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class MicrosoftSQLServerCatalogTarget
      def self.parse(map)
        data = Types::MicrosoftSQLServerCatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class PostgreSQLCatalogSource
      def self.parse(map)
        data = Types::PostgreSQLCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class OracleSQLCatalogSource
      def self.parse(map)
        data = Types::OracleSQLCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class MySQLCatalogSource
      def self.parse(map)
        data = Types::MySQLCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class MicrosoftSQLServerCatalogSource
      def self.parse(map)
        data = Types::MicrosoftSQLServerCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class GovernedCatalogSource
      def self.parse(map)
        data = Types::GovernedCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        data.partition_predicate = map['PartitionPredicate']
        data.additional_options = (Parsers::S3SourceAdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        return data
      end
    end

    class S3SourceAdditionalOptions
      def self.parse(map)
        data = Types::S3SourceAdditionalOptions.new
        data.bounded_size = map['BoundedSize']
        data.bounded_files = map['BoundedFiles']
        return data
      end
    end

    class GovernedCatalogTarget
      def self.parse(map)
        data = Types::GovernedCatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.partition_keys = (Parsers::GlueStudioPathList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.table = map['Table']
        data.database = map['Database']
        data.schema_change_policy = (Parsers::CatalogSchemaChangePolicy.parse(map['SchemaChangePolicy']) unless map['SchemaChangePolicy'].nil?)
        return data
      end
    end

    class CatalogSchemaChangePolicy
      def self.parse(map)
        data = Types::CatalogSchemaChangePolicy.new
        data.enable_update_catalog = map['EnableUpdateCatalog']
        data.update_behavior = map['UpdateBehavior']
        return data
      end
    end

    class GlueStudioPathList
      def self.parse(list)
        list.map do |value|
          Parsers::EnclosedInStringProperties.parse(value) unless value.nil?
        end
      end
    end

    class EnclosedInStringProperties
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DropDuplicates
      def self.parse(map)
        data = Types::DropDuplicates.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.columns = (Parsers::LimitedPathList.parse(map['Columns']) unless map['Columns'].nil?)
        return data
      end
    end

    class LimitedPathList
      def self.parse(list)
        list.map do |value|
          Parsers::LimitedStringList.parse(value) unless value.nil?
        end
      end
    end

    class LimitedStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Aggregate
      def self.parse(map)
        data = Types::Aggregate.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.groups = (Parsers::GlueStudioPathList.parse(map['Groups']) unless map['Groups'].nil?)
        data.aggs = (Parsers::AggregateOperations.parse(map['Aggs']) unless map['Aggs'].nil?)
        return data
      end
    end

    class AggregateOperations
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateOperation.parse(value) unless value.nil?
        end
      end
    end

    class AggregateOperation
      def self.parse(map)
        data = Types::AggregateOperation.new
        data.column = (Parsers::EnclosedInStringProperties.parse(map['Column']) unless map['Column'].nil?)
        data.agg_func = map['AggFunc']
        return data
      end
    end

    class PIIDetection
      def self.parse(map)
        data = Types::PIIDetection.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.pii_type = map['PiiType']
        data.entity_types_to_detect = (Parsers::EnclosedInStringProperties.parse(map['EntityTypesToDetect']) unless map['EntityTypesToDetect'].nil?)
        data.output_column_name = map['OutputColumnName']
        data.sample_fraction = Hearth::NumberHelper.deserialize(map['SampleFraction'])
        data.threshold_fraction = Hearth::NumberHelper.deserialize(map['ThresholdFraction'])
        data.mask_value = map['MaskValue']
        return data
      end
    end

    class Union
      def self.parse(map)
        data = Types::Union.new
        data.name = map['Name']
        data.inputs = (Parsers::TwoInputs.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.union_type = map['UnionType']
        return data
      end
    end

    class TwoInputs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Merge
      def self.parse(map)
        data = Types::Merge.new
        data.name = map['Name']
        data.inputs = (Parsers::TwoInputs.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.source = map['Source']
        data.primary_keys = (Parsers::GlueStudioPathList.parse(map['PrimaryKeys']) unless map['PrimaryKeys'].nil?)
        return data
      end
    end

    class DropNullFields
      def self.parse(map)
        data = Types::DropNullFields.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.null_check_box_list = (Parsers::NullCheckBoxList.parse(map['NullCheckBoxList']) unless map['NullCheckBoxList'].nil?)
        data.null_text_list = (Parsers::NullValueFields.parse(map['NullTextList']) unless map['NullTextList'].nil?)
        return data
      end
    end

    class NullValueFields
      def self.parse(list)
        list.map do |value|
          Parsers::NullValueField.parse(value) unless value.nil?
        end
      end
    end

    class NullValueField
      def self.parse(map)
        data = Types::NullValueField.new
        data.value = map['Value']
        data.datatype = (Parsers::Datatype.parse(map['Datatype']) unless map['Datatype'].nil?)
        return data
      end
    end

    class Datatype
      def self.parse(map)
        data = Types::Datatype.new
        data.id = map['Id']
        data.label = map['Label']
        return data
      end
    end

    class NullCheckBoxList
      def self.parse(map)
        data = Types::NullCheckBoxList.new
        data.is_empty = map['IsEmpty']
        data.is_null_string = map['IsNullString']
        data.is_neg_one = map['IsNegOne']
        return data
      end
    end

    class CatalogKafkaSource
      def self.parse(map)
        data = Types::CatalogKafkaSource.new
        data.name = map['Name']
        data.window_size = map['WindowSize']
        data.detect_schema = map['DetectSchema']
        data.table = map['Table']
        data.database = map['Database']
        data.streaming_options = (Parsers::KafkaStreamingSourceOptions.parse(map['StreamingOptions']) unless map['StreamingOptions'].nil?)
        data.data_preview_options = (Parsers::StreamingDataPreviewOptions.parse(map['DataPreviewOptions']) unless map['DataPreviewOptions'].nil?)
        return data
      end
    end

    class StreamingDataPreviewOptions
      def self.parse(map)
        data = Types::StreamingDataPreviewOptions.new
        data.polling_time = map['PollingTime']
        data.record_polling_limit = map['RecordPollingLimit']
        return data
      end
    end

    class KafkaStreamingSourceOptions
      def self.parse(map)
        data = Types::KafkaStreamingSourceOptions.new
        data.bootstrap_servers = map['BootstrapServers']
        data.security_protocol = map['SecurityProtocol']
        data.connection_name = map['ConnectionName']
        data.topic_name = map['TopicName']
        data.assign = map['Assign']
        data.subscribe_pattern = map['SubscribePattern']
        data.classification = map['Classification']
        data.delimiter = map['Delimiter']
        data.starting_offsets = map['StartingOffsets']
        data.ending_offsets = map['EndingOffsets']
        data.poll_timeout_ms = map['PollTimeoutMs']
        data.num_retries = map['NumRetries']
        data.retry_interval_ms = map['RetryIntervalMs']
        data.max_offsets_per_trigger = map['MaxOffsetsPerTrigger']
        data.min_partitions = map['MinPartitions']
        return data
      end
    end

    class CatalogKinesisSource
      def self.parse(map)
        data = Types::CatalogKinesisSource.new
        data.name = map['Name']
        data.window_size = map['WindowSize']
        data.detect_schema = map['DetectSchema']
        data.table = map['Table']
        data.database = map['Database']
        data.streaming_options = (Parsers::KinesisStreamingSourceOptions.parse(map['StreamingOptions']) unless map['StreamingOptions'].nil?)
        data.data_preview_options = (Parsers::StreamingDataPreviewOptions.parse(map['DataPreviewOptions']) unless map['DataPreviewOptions'].nil?)
        return data
      end
    end

    class KinesisStreamingSourceOptions
      def self.parse(map)
        data = Types::KinesisStreamingSourceOptions.new
        data.endpoint_url = map['EndpointUrl']
        data.stream_name = map['StreamName']
        data.classification = map['Classification']
        data.delimiter = map['Delimiter']
        data.starting_position = map['StartingPosition']
        data.max_fetch_time_in_ms = map['MaxFetchTimeInMs']
        data.max_fetch_records_per_shard = map['MaxFetchRecordsPerShard']
        data.max_record_per_read = map['MaxRecordPerRead']
        data.add_idle_time_between_reads = map['AddIdleTimeBetweenReads']
        data.idle_time_between_reads_in_ms = map['IdleTimeBetweenReadsInMs']
        data.describe_shard_interval = map['DescribeShardInterval']
        data.num_retries = map['NumRetries']
        data.retry_interval_ms = map['RetryIntervalMs']
        data.max_retry_interval_ms = map['MaxRetryIntervalMs']
        data.avoid_empty_batches = map['AvoidEmptyBatches']
        data.stream_arn = map['StreamArn']
        data.role_arn = map['RoleArn']
        data.role_session_name = map['RoleSessionName']
        return data
      end
    end

    class DirectKafkaSource
      def self.parse(map)
        data = Types::DirectKafkaSource.new
        data.name = map['Name']
        data.streaming_options = (Parsers::KafkaStreamingSourceOptions.parse(map['StreamingOptions']) unless map['StreamingOptions'].nil?)
        data.window_size = map['WindowSize']
        data.detect_schema = map['DetectSchema']
        data.data_preview_options = (Parsers::StreamingDataPreviewOptions.parse(map['DataPreviewOptions']) unless map['DataPreviewOptions'].nil?)
        return data
      end
    end

    class DirectKinesisSource
      def self.parse(map)
        data = Types::DirectKinesisSource.new
        data.name = map['Name']
        data.window_size = map['WindowSize']
        data.detect_schema = map['DetectSchema']
        data.streaming_options = (Parsers::KinesisStreamingSourceOptions.parse(map['StreamingOptions']) unless map['StreamingOptions'].nil?)
        data.data_preview_options = (Parsers::StreamingDataPreviewOptions.parse(map['DataPreviewOptions']) unless map['DataPreviewOptions'].nil?)
        return data
      end
    end

    class SparkSQL
      def self.parse(map)
        data = Types::SparkSQL.new
        data.name = map['Name']
        data.inputs = (Parsers::ManyInputs.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.sql_query = map['SqlQuery']
        data.sql_aliases = (Parsers::SqlAliases.parse(map['SqlAliases']) unless map['SqlAliases'].nil?)
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class GlueSchemas
      def self.parse(list)
        list.map do |value|
          Parsers::GlueSchema.parse(value) unless value.nil?
        end
      end
    end

    class GlueSchema
      def self.parse(map)
        data = Types::GlueSchema.new
        data.columns = (Parsers::GlueStudioSchemaColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        return data
      end
    end

    class GlueStudioSchemaColumnList
      def self.parse(list)
        list.map do |value|
          Parsers::GlueStudioSchemaColumn.parse(value) unless value.nil?
        end
      end
    end

    class GlueStudioSchemaColumn
      def self.parse(map)
        data = Types::GlueStudioSchemaColumn.new
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    class SqlAliases
      def self.parse(list)
        list.map do |value|
          Parsers::SqlAlias.parse(value) unless value.nil?
        end
      end
    end

    class SqlAlias
      def self.parse(map)
        data = Types::SqlAlias.new
        data.from = map['From']
        data.alias = map['Alias']
        return data
      end
    end

    class ManyInputs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CustomCode
      def self.parse(map)
        data = Types::CustomCode.new
        data.name = map['Name']
        data.inputs = (Parsers::ManyInputs.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.code = map['Code']
        data.class_name = map['ClassName']
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class Filter
      def self.parse(map)
        data = Types::Filter.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.logical_operator = map['LogicalOperator']
        data.filters = (Parsers::FilterExpressions.parse(map['Filters']) unless map['Filters'].nil?)
        return data
      end
    end

    class FilterExpressions
      def self.parse(list)
        list.map do |value|
          Parsers::FilterExpression.parse(value) unless value.nil?
        end
      end
    end

    class FilterExpression
      def self.parse(map)
        data = Types::FilterExpression.new
        data.operation = map['Operation']
        data.negated = map['Negated']
        data.values = (Parsers::FilterValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class FilterValues
      def self.parse(list)
        list.map do |value|
          Parsers::FilterValue.parse(value) unless value.nil?
        end
      end
    end

    class FilterValue
      def self.parse(map)
        data = Types::FilterValue.new
        data.type = map['Type']
        data.value = (Parsers::EnclosedInStringProperties.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class FillMissingValues
      def self.parse(map)
        data = Types::FillMissingValues.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.imputed_path = map['ImputedPath']
        data.filled_path = map['FilledPath']
        return data
      end
    end

    class SelectFromCollection
      def self.parse(map)
        data = Types::SelectFromCollection.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.index = map['Index']
        return data
      end
    end

    class SplitFields
      def self.parse(map)
        data = Types::SplitFields.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.paths = (Parsers::GlueStudioPathList.parse(map['Paths']) unless map['Paths'].nil?)
        return data
      end
    end

    class Join
      def self.parse(map)
        data = Types::Join.new
        data.name = map['Name']
        data.inputs = (Parsers::TwoInputs.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.join_type = map['JoinType']
        data.columns = (Parsers::JoinColumns.parse(map['Columns']) unless map['Columns'].nil?)
        return data
      end
    end

    class JoinColumns
      def self.parse(list)
        list.map do |value|
          Parsers::JoinColumn.parse(value) unless value.nil?
        end
      end
    end

    class JoinColumn
      def self.parse(map)
        data = Types::JoinColumn.new
        data.from = map['From']
        data.keys = (Parsers::GlueStudioPathList.parse(map['Keys']) unless map['Keys'].nil?)
        return data
      end
    end

    class Spigot
      def self.parse(map)
        data = Types::Spigot.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.path = map['Path']
        data.topk = map['Topk']
        data.prob = Hearth::NumberHelper.deserialize(map['Prob'])
        return data
      end
    end

    class RenameField
      def self.parse(map)
        data = Types::RenameField.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.source_path = (Parsers::EnclosedInStringProperties.parse(map['SourcePath']) unless map['SourcePath'].nil?)
        data.target_path = (Parsers::EnclosedInStringProperties.parse(map['TargetPath']) unless map['TargetPath'].nil?)
        return data
      end
    end

    class DropFields
      def self.parse(map)
        data = Types::DropFields.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.paths = (Parsers::GlueStudioPathList.parse(map['Paths']) unless map['Paths'].nil?)
        return data
      end
    end

    class SelectFields
      def self.parse(map)
        data = Types::SelectFields.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.paths = (Parsers::GlueStudioPathList.parse(map['Paths']) unless map['Paths'].nil?)
        return data
      end
    end

    class ApplyMapping
      def self.parse(map)
        data = Types::ApplyMapping.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.mapping = (Parsers::Mappings.parse(map['Mapping']) unless map['Mapping'].nil?)
        return data
      end
    end

    class Mappings
      def self.parse(list)
        list.map do |value|
          Parsers::Mapping.parse(value) unless value.nil?
        end
      end
    end

    class Mapping
      def self.parse(map)
        data = Types::Mapping.new
        data.to_key = map['ToKey']
        data.from_path = (Parsers::EnclosedInStringProperties.parse(map['FromPath']) unless map['FromPath'].nil?)
        data.from_type = map['FromType']
        data.to_type = map['ToType']
        data.dropped = map['Dropped']
        data.children = (Parsers::Mappings.parse(map['Children']) unless map['Children'].nil?)
        return data
      end
    end

    class S3DirectTarget
      def self.parse(map)
        data = Types::S3DirectTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.partition_keys = (Parsers::GlueStudioPathList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.path = map['Path']
        data.compression = map['Compression']
        data.format = map['Format']
        data.schema_change_policy = (Parsers::DirectSchemaChangePolicy.parse(map['SchemaChangePolicy']) unless map['SchemaChangePolicy'].nil?)
        return data
      end
    end

    class DirectSchemaChangePolicy
      def self.parse(map)
        data = Types::DirectSchemaChangePolicy.new
        data.enable_update_catalog = map['EnableUpdateCatalog']
        data.update_behavior = map['UpdateBehavior']
        data.table = map['Table']
        data.database = map['Database']
        return data
      end
    end

    class S3GlueParquetTarget
      def self.parse(map)
        data = Types::S3GlueParquetTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.partition_keys = (Parsers::GlueStudioPathList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.path = map['Path']
        data.compression = map['Compression']
        data.schema_change_policy = (Parsers::DirectSchemaChangePolicy.parse(map['SchemaChangePolicy']) unless map['SchemaChangePolicy'].nil?)
        return data
      end
    end

    class S3CatalogTarget
      def self.parse(map)
        data = Types::S3CatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.partition_keys = (Parsers::GlueStudioPathList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.table = map['Table']
        data.database = map['Database']
        data.schema_change_policy = (Parsers::CatalogSchemaChangePolicy.parse(map['SchemaChangePolicy']) unless map['SchemaChangePolicy'].nil?)
        return data
      end
    end

    class RedshiftTarget
      def self.parse(map)
        data = Types::RedshiftTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.database = map['Database']
        data.table = map['Table']
        data.redshift_tmp_dir = map['RedshiftTmpDir']
        data.tmp_dir_iam_role = map['TmpDirIAMRole']
        data.upsert_redshift_options = (Parsers::UpsertRedshiftTargetOptions.parse(map['UpsertRedshiftOptions']) unless map['UpsertRedshiftOptions'].nil?)
        return data
      end
    end

    class UpsertRedshiftTargetOptions
      def self.parse(map)
        data = Types::UpsertRedshiftTargetOptions.new
        data.table_location = map['TableLocation']
        data.connection_name = map['ConnectionName']
        data.upsert_keys = (Parsers::EnclosedInStringPropertiesMinOne.parse(map['UpsertKeys']) unless map['UpsertKeys'].nil?)
        return data
      end
    end

    class EnclosedInStringPropertiesMinOne
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BasicCatalogTarget
      def self.parse(map)
        data = Types::BasicCatalogTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class SparkConnectorTarget
      def self.parse(map)
        data = Types::SparkConnectorTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.connection_name = map['ConnectionName']
        data.connector_name = map['ConnectorName']
        data.connection_type = map['ConnectionType']
        data.additional_options = (Parsers::AdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class AdditionalOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class JDBCConnectorTarget
      def self.parse(map)
        data = Types::JDBCConnectorTarget.new
        data.name = map['Name']
        data.inputs = (Parsers::OneInput.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.connection_name = map['ConnectionName']
        data.connection_table = map['ConnectionTable']
        data.connector_name = map['ConnectorName']
        data.connection_type = map['ConnectionType']
        data.additional_options = (Parsers::AdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class DynamoDBCatalogSource
      def self.parse(map)
        data = Types::DynamoDBCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class RelationalCatalogSource
      def self.parse(map)
        data = Types::RelationalCatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class S3ParquetSource
      def self.parse(map)
        data = Types::S3ParquetSource.new
        data.name = map['Name']
        data.paths = (Parsers::EnclosedInStringProperties.parse(map['Paths']) unless map['Paths'].nil?)
        data.compression_type = map['CompressionType']
        data.exclusions = (Parsers::EnclosedInStringProperties.parse(map['Exclusions']) unless map['Exclusions'].nil?)
        data.group_size = map['GroupSize']
        data.group_files = map['GroupFiles']
        data.recurse = map['Recurse']
        data.max_band = map['MaxBand']
        data.max_files_in_band = map['MaxFilesInBand']
        data.additional_options = (Parsers::S3DirectSourceAdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class S3DirectSourceAdditionalOptions
      def self.parse(map)
        data = Types::S3DirectSourceAdditionalOptions.new
        data.bounded_size = map['BoundedSize']
        data.bounded_files = map['BoundedFiles']
        data.enable_sample_path = map['EnableSamplePath']
        data.sample_path = map['SamplePath']
        return data
      end
    end

    class S3JsonSource
      def self.parse(map)
        data = Types::S3JsonSource.new
        data.name = map['Name']
        data.paths = (Parsers::EnclosedInStringProperties.parse(map['Paths']) unless map['Paths'].nil?)
        data.compression_type = map['CompressionType']
        data.exclusions = (Parsers::EnclosedInStringProperties.parse(map['Exclusions']) unless map['Exclusions'].nil?)
        data.group_size = map['GroupSize']
        data.group_files = map['GroupFiles']
        data.recurse = map['Recurse']
        data.max_band = map['MaxBand']
        data.max_files_in_band = map['MaxFilesInBand']
        data.additional_options = (Parsers::S3DirectSourceAdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.json_path = map['JsonPath']
        data.multiline = map['Multiline']
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class S3CsvSource
      def self.parse(map)
        data = Types::S3CsvSource.new
        data.name = map['Name']
        data.paths = (Parsers::EnclosedInStringProperties.parse(map['Paths']) unless map['Paths'].nil?)
        data.compression_type = map['CompressionType']
        data.exclusions = (Parsers::EnclosedInStringProperties.parse(map['Exclusions']) unless map['Exclusions'].nil?)
        data.group_size = map['GroupSize']
        data.group_files = map['GroupFiles']
        data.recurse = map['Recurse']
        data.max_band = map['MaxBand']
        data.max_files_in_band = map['MaxFilesInBand']
        data.additional_options = (Parsers::S3DirectSourceAdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.separator = map['Separator']
        data.escaper = map['Escaper']
        data.quote_char = map['QuoteChar']
        data.multiline = map['Multiline']
        data.with_header = map['WithHeader']
        data.write_header = map['WriteHeader']
        data.skip_first = map['SkipFirst']
        data.optimize_performance = map['OptimizePerformance']
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class S3CatalogSource
      def self.parse(map)
        data = Types::S3CatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        data.partition_predicate = map['PartitionPredicate']
        data.additional_options = (Parsers::S3SourceAdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        return data
      end
    end

    class RedshiftSource
      def self.parse(map)
        data = Types::RedshiftSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        data.redshift_tmp_dir = map['RedshiftTmpDir']
        data.tmp_dir_iam_role = map['TmpDirIAMRole']
        return data
      end
    end

    class CatalogSource
      def self.parse(map)
        data = Types::CatalogSource.new
        data.name = map['Name']
        data.database = map['Database']
        data.table = map['Table']
        return data
      end
    end

    class SparkConnectorSource
      def self.parse(map)
        data = Types::SparkConnectorSource.new
        data.name = map['Name']
        data.connection_name = map['ConnectionName']
        data.connector_name = map['ConnectorName']
        data.connection_type = map['ConnectionType']
        data.additional_options = (Parsers::AdditionalOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class JDBCConnectorSource
      def self.parse(map)
        data = Types::JDBCConnectorSource.new
        data.name = map['Name']
        data.connection_name = map['ConnectionName']
        data.connector_name = map['ConnectorName']
        data.connection_type = map['ConnectionType']
        data.additional_options = (Parsers::JDBCConnectorOptions.parse(map['AdditionalOptions']) unless map['AdditionalOptions'].nil?)
        data.connection_table = map['ConnectionTable']
        data.query = map['Query']
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class JDBCConnectorOptions
      def self.parse(map)
        data = Types::JDBCConnectorOptions.new
        data.filter_predicate = map['FilterPredicate']
        data.partition_column = map['PartitionColumn']
        data.lower_bound = map['LowerBound']
        data.upper_bound = map['UpperBound']
        data.num_partitions = map['NumPartitions']
        data.job_bookmark_keys = (Parsers::EnclosedInStringProperties.parse(map['JobBookmarkKeys']) unless map['JobBookmarkKeys'].nil?)
        data.job_bookmark_keys_sort_order = map['JobBookmarkKeysSortOrder']
        data.data_type_mapping = (Parsers::JDBCDataTypeMapping.parse(map['DataTypeMapping']) unless map['DataTypeMapping'].nil?)
        return data
      end
    end

    class JDBCDataTypeMapping
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AthenaConnectorSource
      def self.parse(map)
        data = Types::AthenaConnectorSource.new
        data.name = map['Name']
        data.connection_name = map['ConnectionName']
        data.connector_name = map['ConnectorName']
        data.connection_type = map['ConnectionType']
        data.connection_table = map['ConnectionTable']
        data.schema_name = map['SchemaName']
        data.output_schemas = (Parsers::GlueSchemas.parse(map['OutputSchemas']) unless map['OutputSchemas'].nil?)
        return data
      end
    end

    class NotificationProperty
      def self.parse(map)
        data = Types::NotificationProperty.new
        data.notify_delay_after = map['NotifyDelayAfter']
        return data
      end
    end

    class ConnectionsList
      def self.parse(map)
        data = Types::ConnectionsList.new
        data.connections = (Parsers::OrchestrationStringList.parse(map['Connections']) unless map['Connections'].nil?)
        return data
      end
    end

    class OrchestrationStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class GenericMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class JobCommand
      def self.parse(map)
        data = Types::JobCommand.new
        data.name = map['Name']
        data.script_location = map['ScriptLocation']
        data.python_version = map['PythonVersion']
        return data
      end
    end

    class ExecutionProperty
      def self.parse(map)
        data = Types::ExecutionProperty.new
        data.max_concurrent_runs = map['MaxConcurrentRuns']
        return data
      end
    end

    # Operation Parser for BatchGetPartition
    class BatchGetPartition
      def self.parse(http_resp)
        data = Types::BatchGetPartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partitions = (Parsers::PartitionList.parse(map['Partitions']) unless map['Partitions'].nil?)
        data.unprocessed_keys = (Parsers::BatchGetPartitionValueList.parse(map['UnprocessedKeys']) unless map['UnprocessedKeys'].nil?)
        data
      end
    end

    class BatchGetPartitionValueList
      def self.parse(list)
        list.map do |value|
          Parsers::PartitionValueList.parse(value) unless value.nil?
        end
      end
    end

    class PartitionValueList
      def self.parse(map)
        data = Types::PartitionValueList.new
        data.values = (Parsers::ValueStringList.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class PartitionList
      def self.parse(list)
        list.map do |value|
          Parsers::Partition.parse(value) unless value.nil?
        end
      end
    end

    class Partition
      def self.parse(map)
        data = Types::Partition.new
        data.values = (Parsers::ValueStringList.parse(map['Values']) unless map['Values'].nil?)
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_access_time = Time.at(map['LastAccessTime'].to_i) if map['LastAccessTime']
        data.storage_descriptor = (Parsers::StorageDescriptor.parse(map['StorageDescriptor']) unless map['StorageDescriptor'].nil?)
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.last_analyzed_time = Time.at(map['LastAnalyzedTime'].to_i) if map['LastAnalyzedTime']
        data.catalog_id = map['CatalogId']
        return data
      end
    end

    class ParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class StorageDescriptor
      def self.parse(map)
        data = Types::StorageDescriptor.new
        data.columns = (Parsers::ColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        data.location = map['Location']
        data.additional_locations = (Parsers::LocationStringList.parse(map['AdditionalLocations']) unless map['AdditionalLocations'].nil?)
        data.input_format = map['InputFormat']
        data.output_format = map['OutputFormat']
        data.compressed = map['Compressed']
        data.number_of_buckets = map['NumberOfBuckets']
        data.serde_info = (Parsers::SerDeInfo.parse(map['SerdeInfo']) unless map['SerdeInfo'].nil?)
        data.bucket_columns = (Parsers::NameStringList.parse(map['BucketColumns']) unless map['BucketColumns'].nil?)
        data.sort_columns = (Parsers::OrderList.parse(map['SortColumns']) unless map['SortColumns'].nil?)
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.skewed_info = (Parsers::SkewedInfo.parse(map['SkewedInfo']) unless map['SkewedInfo'].nil?)
        data.stored_as_sub_directories = map['StoredAsSubDirectories']
        data.schema_reference = (Parsers::SchemaReference.parse(map['SchemaReference']) unless map['SchemaReference'].nil?)
        return data
      end
    end

    class SchemaReference
      def self.parse(map)
        data = Types::SchemaReference.new
        data.schema_id = (Parsers::SchemaId.parse(map['SchemaId']) unless map['SchemaId'].nil?)
        data.schema_version_id = map['SchemaVersionId']
        data.schema_version_number = map['SchemaVersionNumber']
        return data
      end
    end

    class SchemaId
      def self.parse(map)
        data = Types::SchemaId.new
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.registry_name = map['RegistryName']
        return data
      end
    end

    class SkewedInfo
      def self.parse(map)
        data = Types::SkewedInfo.new
        data.skewed_column_names = (Parsers::NameStringList.parse(map['SkewedColumnNames']) unless map['SkewedColumnNames'].nil?)
        data.skewed_column_values = (Parsers::ColumnValueStringList.parse(map['SkewedColumnValues']) unless map['SkewedColumnValues'].nil?)
        data.skewed_column_value_location_maps = (Parsers::LocationMap.parse(map['SkewedColumnValueLocationMaps']) unless map['SkewedColumnValueLocationMaps'].nil?)
        return data
      end
    end

    class LocationMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ColumnValueStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OrderList
      def self.parse(list)
        list.map do |value|
          Parsers::Order.parse(value) unless value.nil?
        end
      end
    end

    class Order
      def self.parse(map)
        data = Types::Order.new
        data.column = map['Column']
        data.sort_order = map['SortOrder']
        return data
      end
    end

    class SerDeInfo
      def self.parse(map)
        data = Types::SerDeInfo.new
        data.name = map['Name']
        data.serialization_library = map['SerializationLibrary']
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class LocationStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ColumnList
      def self.parse(list)
        list.map do |value|
          Parsers::Column.parse(value) unless value.nil?
        end
      end
    end

    class Column
      def self.parse(map)
        data = Types::Column.new
        data.name = map['Name']
        data.type = map['Type']
        data.comment = map['Comment']
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    # Error Parser for InvalidStateException
    class InvalidStateException
      def self.parse(http_resp)
        data = Types::InvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchGetTriggers
    class BatchGetTriggers
      def self.parse(http_resp)
        data = Types::BatchGetTriggersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.triggers = (Parsers::TriggerList.parse(map['Triggers']) unless map['Triggers'].nil?)
        data.triggers_not_found = (Parsers::TriggerNameList.parse(map['TriggersNotFound']) unless map['TriggersNotFound'].nil?)
        data
      end
    end

    class TriggerNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TriggerList
      def self.parse(list)
        list.map do |value|
          Parsers::Trigger.parse(value) unless value.nil?
        end
      end
    end

    class Trigger
      def self.parse(map)
        data = Types::Trigger.new
        data.name = map['Name']
        data.workflow_name = map['WorkflowName']
        data.id = map['Id']
        data.type = map['Type']
        data.state = map['State']
        data.description = map['Description']
        data.schedule = map['Schedule']
        data.actions = (Parsers::ActionList.parse(map['Actions']) unless map['Actions'].nil?)
        data.predicate = (Parsers::Predicate.parse(map['Predicate']) unless map['Predicate'].nil?)
        data.event_batching_condition = (Parsers::EventBatchingCondition.parse(map['EventBatchingCondition']) unless map['EventBatchingCondition'].nil?)
        return data
      end
    end

    class EventBatchingCondition
      def self.parse(map)
        data = Types::EventBatchingCondition.new
        data.batch_size = map['BatchSize']
        data.batch_window = map['BatchWindow']
        return data
      end
    end

    class Predicate
      def self.parse(map)
        data = Types::Predicate.new
        data.logical = map['Logical']
        data.conditions = (Parsers::ConditionList.parse(map['Conditions']) unless map['Conditions'].nil?)
        return data
      end
    end

    class ConditionList
      def self.parse(list)
        list.map do |value|
          Parsers::Condition.parse(value) unless value.nil?
        end
      end
    end

    class Condition
      def self.parse(map)
        data = Types::Condition.new
        data.logical_operator = map['LogicalOperator']
        data.job_name = map['JobName']
        data.state = map['State']
        data.crawler_name = map['CrawlerName']
        data.crawl_state = map['CrawlState']
        return data
      end
    end

    class ActionList
      def self.parse(list)
        list.map do |value|
          Parsers::Action.parse(value) unless value.nil?
        end
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.job_name = map['JobName']
        data.arguments = (Parsers::GenericMap.parse(map['Arguments']) unless map['Arguments'].nil?)
        data.timeout = map['Timeout']
        data.security_configuration = map['SecurityConfiguration']
        data.notification_property = (Parsers::NotificationProperty.parse(map['NotificationProperty']) unless map['NotificationProperty'].nil?)
        data.crawler_name = map['CrawlerName']
        return data
      end
    end

    # Operation Parser for BatchGetWorkflows
    class BatchGetWorkflows
      def self.parse(http_resp)
        data = Types::BatchGetWorkflowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workflows = (Parsers::Workflows.parse(map['Workflows']) unless map['Workflows'].nil?)
        data.missing_workflows = (Parsers::WorkflowNames.parse(map['MissingWorkflows']) unless map['MissingWorkflows'].nil?)
        data
      end
    end

    class WorkflowNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Workflows
      def self.parse(list)
        list.map do |value|
          Parsers::Workflow.parse(value) unless value.nil?
        end
      end
    end

    class Workflow
      def self.parse(map)
        data = Types::Workflow.new
        data.name = map['Name']
        data.description = map['Description']
        data.default_run_properties = (Parsers::WorkflowRunProperties.parse(map['DefaultRunProperties']) unless map['DefaultRunProperties'].nil?)
        data.created_on = Time.at(map['CreatedOn'].to_i) if map['CreatedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.last_run = (Parsers::WorkflowRun.parse(map['LastRun']) unless map['LastRun'].nil?)
        data.graph = (Parsers::WorkflowGraph.parse(map['Graph']) unless map['Graph'].nil?)
        data.max_concurrent_runs = map['MaxConcurrentRuns']
        data.blueprint_details = (Parsers::BlueprintDetails.parse(map['BlueprintDetails']) unless map['BlueprintDetails'].nil?)
        return data
      end
    end

    class BlueprintDetails
      def self.parse(map)
        data = Types::BlueprintDetails.new
        data.blueprint_name = map['BlueprintName']
        data.run_id = map['RunId']
        return data
      end
    end

    class WorkflowGraph
      def self.parse(map)
        data = Types::WorkflowGraph.new
        data.nodes = (Parsers::NodeList.parse(map['Nodes']) unless map['Nodes'].nil?)
        data.edges = (Parsers::EdgeList.parse(map['Edges']) unless map['Edges'].nil?)
        return data
      end
    end

    class EdgeList
      def self.parse(list)
        list.map do |value|
          Parsers::Edge.parse(value) unless value.nil?
        end
      end
    end

    class Edge
      def self.parse(map)
        data = Types::Edge.new
        data.source_id = map['SourceId']
        data.destination_id = map['DestinationId']
        return data
      end
    end

    class NodeList
      def self.parse(list)
        list.map do |value|
          Parsers::Node.parse(value) unless value.nil?
        end
      end
    end

    class Node
      def self.parse(map)
        data = Types::Node.new
        data.type = map['Type']
        data.name = map['Name']
        data.unique_id = map['UniqueId']
        data.trigger_details = (Parsers::TriggerNodeDetails.parse(map['TriggerDetails']) unless map['TriggerDetails'].nil?)
        data.job_details = (Parsers::JobNodeDetails.parse(map['JobDetails']) unless map['JobDetails'].nil?)
        data.crawler_details = (Parsers::CrawlerNodeDetails.parse(map['CrawlerDetails']) unless map['CrawlerDetails'].nil?)
        return data
      end
    end

    class CrawlerNodeDetails
      def self.parse(map)
        data = Types::CrawlerNodeDetails.new
        data.crawls = (Parsers::CrawlList.parse(map['Crawls']) unless map['Crawls'].nil?)
        return data
      end
    end

    class CrawlList
      def self.parse(list)
        list.map do |value|
          Parsers::Crawl.parse(value) unless value.nil?
        end
      end
    end

    class Crawl
      def self.parse(map)
        data = Types::Crawl.new
        data.state = map['State']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.error_message = map['ErrorMessage']
        data.log_group = map['LogGroup']
        data.log_stream = map['LogStream']
        return data
      end
    end

    class JobNodeDetails
      def self.parse(map)
        data = Types::JobNodeDetails.new
        data.job_runs = (Parsers::JobRunList.parse(map['JobRuns']) unless map['JobRuns'].nil?)
        return data
      end
    end

    class JobRunList
      def self.parse(list)
        list.map do |value|
          Parsers::JobRun.parse(value) unless value.nil?
        end
      end
    end

    class JobRun
      def self.parse(map)
        data = Types::JobRun.new
        data.id = map['Id']
        data.attempt = map['Attempt']
        data.previous_run_id = map['PreviousRunId']
        data.trigger_name = map['TriggerName']
        data.job_name = map['JobName']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.job_run_state = map['JobRunState']
        data.arguments = (Parsers::GenericMap.parse(map['Arguments']) unless map['Arguments'].nil?)
        data.error_message = map['ErrorMessage']
        data.predecessor_runs = (Parsers::PredecessorList.parse(map['PredecessorRuns']) unless map['PredecessorRuns'].nil?)
        data.allocated_capacity = map['AllocatedCapacity']
        data.execution_time = map['ExecutionTime']
        data.timeout = map['Timeout']
        data.max_capacity = Hearth::NumberHelper.deserialize(map['MaxCapacity'])
        data.worker_type = map['WorkerType']
        data.number_of_workers = map['NumberOfWorkers']
        data.security_configuration = map['SecurityConfiguration']
        data.log_group_name = map['LogGroupName']
        data.notification_property = (Parsers::NotificationProperty.parse(map['NotificationProperty']) unless map['NotificationProperty'].nil?)
        data.glue_version = map['GlueVersion']
        data.dpu_seconds = Hearth::NumberHelper.deserialize(map['DPUSeconds'])
        return data
      end
    end

    class PredecessorList
      def self.parse(list)
        list.map do |value|
          Parsers::Predecessor.parse(value) unless value.nil?
        end
      end
    end

    class Predecessor
      def self.parse(map)
        data = Types::Predecessor.new
        data.job_name = map['JobName']
        data.run_id = map['RunId']
        return data
      end
    end

    class TriggerNodeDetails
      def self.parse(map)
        data = Types::TriggerNodeDetails.new
        data.trigger = (Parsers::Trigger.parse(map['Trigger']) unless map['Trigger'].nil?)
        return data
      end
    end

    class WorkflowRun
      def self.parse(map)
        data = Types::WorkflowRun.new
        data.name = map['Name']
        data.workflow_run_id = map['WorkflowRunId']
        data.previous_run_id = map['PreviousRunId']
        data.workflow_run_properties = (Parsers::WorkflowRunProperties.parse(map['WorkflowRunProperties']) unless map['WorkflowRunProperties'].nil?)
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.statistics = (Parsers::WorkflowRunStatistics.parse(map['Statistics']) unless map['Statistics'].nil?)
        data.graph = (Parsers::WorkflowGraph.parse(map['Graph']) unless map['Graph'].nil?)
        data.starting_event_batch_condition = (Parsers::StartingEventBatchCondition.parse(map['StartingEventBatchCondition']) unless map['StartingEventBatchCondition'].nil?)
        return data
      end
    end

    class StartingEventBatchCondition
      def self.parse(map)
        data = Types::StartingEventBatchCondition.new
        data.batch_size = map['BatchSize']
        data.batch_window = map['BatchWindow']
        return data
      end
    end

    class WorkflowRunStatistics
      def self.parse(map)
        data = Types::WorkflowRunStatistics.new
        data.total_actions = map['TotalActions']
        data.timeout_actions = map['TimeoutActions']
        data.failed_actions = map['FailedActions']
        data.stopped_actions = map['StoppedActions']
        data.succeeded_actions = map['SucceededActions']
        data.running_actions = map['RunningActions']
        return data
      end
    end

    class WorkflowRunProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for BatchStopJobRun
    class BatchStopJobRun
      def self.parse(http_resp)
        data = Types::BatchStopJobRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.successful_submissions = (Parsers::BatchStopJobRunSuccessfulSubmissionList.parse(map['SuccessfulSubmissions']) unless map['SuccessfulSubmissions'].nil?)
        data.errors = (Parsers::BatchStopJobRunErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchStopJobRunErrorList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchStopJobRunError.parse(value) unless value.nil?
        end
      end
    end

    class BatchStopJobRunError
      def self.parse(map)
        data = Types::BatchStopJobRunError.new
        data.job_name = map['JobName']
        data.job_run_id = map['JobRunId']
        data.error_detail = (Parsers::ErrorDetail.parse(map['ErrorDetail']) unless map['ErrorDetail'].nil?)
        return data
      end
    end

    class BatchStopJobRunSuccessfulSubmissionList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchStopJobRunSuccessfulSubmission.parse(value) unless value.nil?
        end
      end
    end

    class BatchStopJobRunSuccessfulSubmission
      def self.parse(map)
        data = Types::BatchStopJobRunSuccessfulSubmission.new
        data.job_name = map['JobName']
        data.job_run_id = map['JobRunId']
        return data
      end
    end

    # Operation Parser for BatchUpdatePartition
    class BatchUpdatePartition
      def self.parse(http_resp)
        data = Types::BatchUpdatePartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::BatchUpdatePartitionFailureList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchUpdatePartitionFailureList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchUpdatePartitionFailureEntry.parse(value) unless value.nil?
        end
      end
    end

    class BatchUpdatePartitionFailureEntry
      def self.parse(map)
        data = Types::BatchUpdatePartitionFailureEntry.new
        data.partition_value_list = (Parsers::BoundedPartitionValueList.parse(map['PartitionValueList']) unless map['PartitionValueList'].nil?)
        data.error_detail = (Parsers::ErrorDetail.parse(map['ErrorDetail']) unless map['ErrorDetail'].nil?)
        return data
      end
    end

    class BoundedPartitionValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CancelMLTaskRun
    class CancelMLTaskRun
      def self.parse(http_resp)
        data = Types::CancelMLTaskRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_id = map['TransformId']
        data.task_run_id = map['TaskRunId']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for CancelStatement
    class CancelStatement
      def self.parse(http_resp)
        data = Types::CancelStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for IllegalSessionStateException
    class IllegalSessionStateException
      def self.parse(http_resp)
        data = Types::IllegalSessionStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CheckSchemaVersionValidity
    class CheckSchemaVersionValidity
      def self.parse(http_resp)
        data = Types::CheckSchemaVersionValidityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.valid = map['Valid']
        data.error = map['Error']
        data
      end
    end

    # Operation Parser for CreateBlueprint
    class CreateBlueprint
      def self.parse(http_resp)
        data = Types::CreateBlueprintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateClassifier
    class CreateClassifier
      def self.parse(http_resp)
        data = Types::CreateClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateConnection
    class CreateConnection
      def self.parse(http_resp)
        data = Types::CreateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateCrawler
    class CreateCrawler
      def self.parse(http_resp)
        data = Types::CreateCrawlerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateCustomEntityType
    class CreateCustomEntityType
      def self.parse(http_resp)
        data = Types::CreateCustomEntityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDatabase
    class CreateDatabase
      def self.parse(http_resp)
        data = Types::CreateDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDevEndpoint
    class CreateDevEndpoint
      def self.parse(http_resp)
        data = Types::CreateDevEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_name = map['EndpointName']
        data.status = map['Status']
        data.security_group_ids = (Parsers::StringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnet_id = map['SubnetId']
        data.role_arn = map['RoleArn']
        data.yarn_endpoint_address = map['YarnEndpointAddress']
        data.zeppelin_remote_spark_interpreter_port = map['ZeppelinRemoteSparkInterpreterPort']
        data.number_of_nodes = map['NumberOfNodes']
        data.worker_type = map['WorkerType']
        data.glue_version = map['GlueVersion']
        data.number_of_workers = map['NumberOfWorkers']
        data.availability_zone = map['AvailabilityZone']
        data.vpc_id = map['VpcId']
        data.extra_python_libs_s3_path = map['ExtraPythonLibsS3Path']
        data.extra_jars_s3_path = map['ExtraJarsS3Path']
        data.failure_reason = map['FailureReason']
        data.security_configuration = map['SecurityConfiguration']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.arguments = (Parsers::MapValue.parse(map['Arguments']) unless map['Arguments'].nil?)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateMLTransform
    class CreateMLTransform
      def self.parse(http_resp)
        data = Types::CreateMLTransformOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_id = map['TransformId']
        data
      end
    end

    # Operation Parser for CreatePartition
    class CreatePartition
      def self.parse(http_resp)
        data = Types::CreatePartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreatePartitionIndex
    class CreatePartitionIndex
      def self.parse(http_resp)
        data = Types::CreatePartitionIndexOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateRegistry
    class CreateRegistry
      def self.parse(http_resp)
        data = Types::CreateRegistryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_arn = map['RegistryArn']
        data.registry_name = map['RegistryName']
        data.description = map['Description']
        data.tags = (Parsers::TagsMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateSchema
    class CreateSchema
      def self.parse(http_resp)
        data = Types::CreateSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_name = map['RegistryName']
        data.registry_arn = map['RegistryArn']
        data.schema_name = map['SchemaName']
        data.schema_arn = map['SchemaArn']
        data.description = map['Description']
        data.data_format = map['DataFormat']
        data.compatibility = map['Compatibility']
        data.schema_checkpoint = map['SchemaCheckpoint']
        data.latest_schema_version = map['LatestSchemaVersion']
        data.next_schema_version = map['NextSchemaVersion']
        data.schema_status = map['SchemaStatus']
        data.tags = (Parsers::TagsMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.schema_version_id = map['SchemaVersionId']
        data.schema_version_status = map['SchemaVersionStatus']
        data
      end
    end

    # Operation Parser for CreateScript
    class CreateScript
      def self.parse(http_resp)
        data = Types::CreateScriptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.python_script = map['PythonScript']
        data.scala_code = map['ScalaCode']
        data
      end
    end

    # Operation Parser for CreateSecurityConfiguration
    class CreateSecurityConfiguration
      def self.parse(http_resp)
        data = Types::CreateSecurityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for CreateSession
    class CreateSession
      def self.parse(http_resp)
        data = Types::CreateSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session = (Parsers::Session.parse(map['Session']) unless map['Session'].nil?)
        data
      end
    end

    class Session
      def self.parse(map)
        data = Types::Session.new
        data.id = map['Id']
        data.created_on = Time.at(map['CreatedOn'].to_i) if map['CreatedOn']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.description = map['Description']
        data.role = map['Role']
        data.command = (Parsers::SessionCommand.parse(map['Command']) unless map['Command'].nil?)
        data.default_arguments = (Parsers::OrchestrationArgumentsMap.parse(map['DefaultArguments']) unless map['DefaultArguments'].nil?)
        data.connections = (Parsers::ConnectionsList.parse(map['Connections']) unless map['Connections'].nil?)
        data.progress = Hearth::NumberHelper.deserialize(map['Progress'])
        data.max_capacity = Hearth::NumberHelper.deserialize(map['MaxCapacity'])
        data.security_configuration = map['SecurityConfiguration']
        data.glue_version = map['GlueVersion']
        return data
      end
    end

    class OrchestrationArgumentsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SessionCommand
      def self.parse(map)
        data = Types::SessionCommand.new
        data.name = map['Name']
        data.python_version = map['PythonVersion']
        return data
      end
    end

    # Operation Parser for CreateTable
    class CreateTable
      def self.parse(http_resp)
        data = Types::CreateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateTrigger
    class CreateTrigger
      def self.parse(http_resp)
        data = Types::CreateTriggerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateUserDefinedFunction
    class CreateUserDefinedFunction
      def self.parse(http_resp)
        data = Types::CreateUserDefinedFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateWorkflow
    class CreateWorkflow
      def self.parse(http_resp)
        data = Types::CreateWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteBlueprint
    class DeleteBlueprint
      def self.parse(http_resp)
        data = Types::DeleteBlueprintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteClassifier
    class DeleteClassifier
      def self.parse(http_resp)
        data = Types::DeleteClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteColumnStatisticsForPartition
    class DeleteColumnStatisticsForPartition
      def self.parse(http_resp)
        data = Types::DeleteColumnStatisticsForPartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteColumnStatisticsForTable
    class DeleteColumnStatisticsForTable
      def self.parse(http_resp)
        data = Types::DeleteColumnStatisticsForTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteCrawler
    class DeleteCrawler
      def self.parse(http_resp)
        data = Types::DeleteCrawlerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for SchedulerTransitioningException
    class SchedulerTransitioningException
      def self.parse(http_resp)
        data = Types::SchedulerTransitioningException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CrawlerRunningException
    class CrawlerRunningException
      def self.parse(http_resp)
        data = Types::CrawlerRunningException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteCustomEntityType
    class DeleteCustomEntityType
      def self.parse(http_resp)
        data = Types::DeleteCustomEntityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteDatabase
    class DeleteDatabase
      def self.parse(http_resp)
        data = Types::DeleteDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDevEndpoint
    class DeleteDevEndpoint
      def self.parse(http_resp)
        data = Types::DeleteDevEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteJob
    class DeleteJob
      def self.parse(http_resp)
        data = Types::DeleteJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_name = map['JobName']
        data
      end
    end

    # Operation Parser for DeleteMLTransform
    class DeleteMLTransform
      def self.parse(http_resp)
        data = Types::DeleteMLTransformOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_id = map['TransformId']
        data
      end
    end

    # Operation Parser for DeletePartition
    class DeletePartition
      def self.parse(http_resp)
        data = Types::DeletePartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePartitionIndex
    class DeletePartitionIndex
      def self.parse(http_resp)
        data = Types::DeletePartitionIndexOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteRegistry
    class DeleteRegistry
      def self.parse(http_resp)
        data = Types::DeleteRegistryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_name = map['RegistryName']
        data.registry_arn = map['RegistryArn']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConditionCheckFailureException
    class ConditionCheckFailureException
      def self.parse(http_resp)
        data = Types::ConditionCheckFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteSchema
    class DeleteSchema
      def self.parse(http_resp)
        data = Types::DeleteSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteSchemaVersions
    class DeleteSchemaVersions
      def self.parse(http_resp)
        data = Types::DeleteSchemaVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_version_errors = (Parsers::SchemaVersionErrorList.parse(map['SchemaVersionErrors']) unless map['SchemaVersionErrors'].nil?)
        data
      end
    end

    class SchemaVersionErrorList
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaVersionErrorItem.parse(value) unless value.nil?
        end
      end
    end

    class SchemaVersionErrorItem
      def self.parse(map)
        data = Types::SchemaVersionErrorItem.new
        data.version_number = map['VersionNumber']
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(map)
        data = Types::ErrorDetails.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for DeleteSecurityConfiguration
    class DeleteSecurityConfiguration
      def self.parse(http_resp)
        data = Types::DeleteSecurityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSession
    class DeleteSession
      def self.parse(http_resp)
        data = Types::DeleteSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for DeleteTable
    class DeleteTable
      def self.parse(http_resp)
        data = Types::DeleteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTableVersion
    class DeleteTableVersion
      def self.parse(http_resp)
        data = Types::DeleteTableVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTrigger
    class DeleteTrigger
      def self.parse(http_resp)
        data = Types::DeleteTriggerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteUserDefinedFunction
    class DeleteUserDefinedFunction
      def self.parse(http_resp)
        data = Types::DeleteUserDefinedFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkflow
    class DeleteWorkflow
      def self.parse(http_resp)
        data = Types::DeleteWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for GetBlueprint
    class GetBlueprint
      def self.parse(http_resp)
        data = Types::GetBlueprintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprint = (Parsers::Blueprint.parse(map['Blueprint']) unless map['Blueprint'].nil?)
        data
      end
    end

    # Operation Parser for GetBlueprintRun
    class GetBlueprintRun
      def self.parse(http_resp)
        data = Types::GetBlueprintRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprint_run = (Parsers::BlueprintRun.parse(map['BlueprintRun']) unless map['BlueprintRun'].nil?)
        data
      end
    end

    class BlueprintRun
      def self.parse(map)
        data = Types::BlueprintRun.new
        data.blueprint_name = map['BlueprintName']
        data.run_id = map['RunId']
        data.workflow_name = map['WorkflowName']
        data.state = map['State']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.error_message = map['ErrorMessage']
        data.rollback_error_message = map['RollbackErrorMessage']
        data.parameters = map['Parameters']
        data.role_arn = map['RoleArn']
        return data
      end
    end

    # Operation Parser for GetBlueprintRuns
    class GetBlueprintRuns
      def self.parse(http_resp)
        data = Types::GetBlueprintRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprint_runs = (Parsers::BlueprintRuns.parse(map['BlueprintRuns']) unless map['BlueprintRuns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BlueprintRuns
      def self.parse(list)
        list.map do |value|
          Parsers::BlueprintRun.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetCatalogImportStatus
    class GetCatalogImportStatus
      def self.parse(http_resp)
        data = Types::GetCatalogImportStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.import_status = (Parsers::CatalogImportStatus.parse(map['ImportStatus']) unless map['ImportStatus'].nil?)
        data
      end
    end

    class CatalogImportStatus
      def self.parse(map)
        data = Types::CatalogImportStatus.new
        data.import_completed = map['ImportCompleted']
        data.import_time = Time.at(map['ImportTime'].to_i) if map['ImportTime']
        data.imported_by = map['ImportedBy']
        return data
      end
    end

    # Operation Parser for GetClassifier
    class GetClassifier
      def self.parse(http_resp)
        data = Types::GetClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.classifier = (Parsers::Classifier.parse(map['Classifier']) unless map['Classifier'].nil?)
        data
      end
    end

    class Classifier
      def self.parse(map)
        data = Types::Classifier.new
        data.grok_classifier = (Parsers::GrokClassifier.parse(map['GrokClassifier']) unless map['GrokClassifier'].nil?)
        data.xml_classifier = (Parsers::XMLClassifier.parse(map['XMLClassifier']) unless map['XMLClassifier'].nil?)
        data.json_classifier = (Parsers::JsonClassifier.parse(map['JsonClassifier']) unless map['JsonClassifier'].nil?)
        data.csv_classifier = (Parsers::CsvClassifier.parse(map['CsvClassifier']) unless map['CsvClassifier'].nil?)
        return data
      end
    end

    class CsvClassifier
      def self.parse(map)
        data = Types::CsvClassifier.new
        data.name = map['Name']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.version = map['Version']
        data.delimiter = map['Delimiter']
        data.quote_symbol = map['QuoteSymbol']
        data.contains_header = map['ContainsHeader']
        data.header = (Parsers::CsvHeader.parse(map['Header']) unless map['Header'].nil?)
        data.disable_value_trimming = map['DisableValueTrimming']
        data.allow_single_column = map['AllowSingleColumn']
        return data
      end
    end

    class CsvHeader
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JsonClassifier
      def self.parse(map)
        data = Types::JsonClassifier.new
        data.name = map['Name']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.version = map['Version']
        data.json_path = map['JsonPath']
        return data
      end
    end

    class XMLClassifier
      def self.parse(map)
        data = Types::XMLClassifier.new
        data.name = map['Name']
        data.classification = map['Classification']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.version = map['Version']
        data.row_tag = map['RowTag']
        return data
      end
    end

    class GrokClassifier
      def self.parse(map)
        data = Types::GrokClassifier.new
        data.name = map['Name']
        data.classification = map['Classification']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.version = map['Version']
        data.grok_pattern = map['GrokPattern']
        data.custom_patterns = map['CustomPatterns']
        return data
      end
    end

    # Operation Parser for GetClassifiers
    class GetClassifiers
      def self.parse(http_resp)
        data = Types::GetClassifiersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.classifiers = (Parsers::ClassifierList.parse(map['Classifiers']) unless map['Classifiers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ClassifierList
      def self.parse(list)
        list.map do |value|
          Parsers::Classifier.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetColumnStatisticsForPartition
    class GetColumnStatisticsForPartition
      def self.parse(http_resp)
        data = Types::GetColumnStatisticsForPartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.column_statistics_list = (Parsers::ColumnStatisticsList.parse(map['ColumnStatisticsList']) unless map['ColumnStatisticsList'].nil?)
        data.errors = (Parsers::ColumnErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class ColumnErrors
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnError.parse(value) unless value.nil?
        end
      end
    end

    class ColumnError
      def self.parse(map)
        data = Types::ColumnError.new
        data.column_name = map['ColumnName']
        data.error = (Parsers::ErrorDetail.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class ColumnStatisticsList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnStatistics.parse(value) unless value.nil?
        end
      end
    end

    class ColumnStatistics
      def self.parse(map)
        data = Types::ColumnStatistics.new
        data.column_name = map['ColumnName']
        data.column_type = map['ColumnType']
        data.analyzed_time = Time.at(map['AnalyzedTime'].to_i) if map['AnalyzedTime']
        data.statistics_data = (Parsers::ColumnStatisticsData.parse(map['StatisticsData']) unless map['StatisticsData'].nil?)
        return data
      end
    end

    class ColumnStatisticsData
      def self.parse(map)
        data = Types::ColumnStatisticsData.new
        data.type = map['Type']
        data.boolean_column_statistics_data = (Parsers::BooleanColumnStatisticsData.parse(map['BooleanColumnStatisticsData']) unless map['BooleanColumnStatisticsData'].nil?)
        data.date_column_statistics_data = (Parsers::DateColumnStatisticsData.parse(map['DateColumnStatisticsData']) unless map['DateColumnStatisticsData'].nil?)
        data.decimal_column_statistics_data = (Parsers::DecimalColumnStatisticsData.parse(map['DecimalColumnStatisticsData']) unless map['DecimalColumnStatisticsData'].nil?)
        data.double_column_statistics_data = (Parsers::DoubleColumnStatisticsData.parse(map['DoubleColumnStatisticsData']) unless map['DoubleColumnStatisticsData'].nil?)
        data.long_column_statistics_data = (Parsers::LongColumnStatisticsData.parse(map['LongColumnStatisticsData']) unless map['LongColumnStatisticsData'].nil?)
        data.string_column_statistics_data = (Parsers::StringColumnStatisticsData.parse(map['StringColumnStatisticsData']) unless map['StringColumnStatisticsData'].nil?)
        data.binary_column_statistics_data = (Parsers::BinaryColumnStatisticsData.parse(map['BinaryColumnStatisticsData']) unless map['BinaryColumnStatisticsData'].nil?)
        return data
      end
    end

    class BinaryColumnStatisticsData
      def self.parse(map)
        data = Types::BinaryColumnStatisticsData.new
        data.maximum_length = map['MaximumLength']
        data.average_length = Hearth::NumberHelper.deserialize(map['AverageLength'])
        data.number_of_nulls = map['NumberOfNulls']
        return data
      end
    end

    class StringColumnStatisticsData
      def self.parse(map)
        data = Types::StringColumnStatisticsData.new
        data.maximum_length = map['MaximumLength']
        data.average_length = Hearth::NumberHelper.deserialize(map['AverageLength'])
        data.number_of_nulls = map['NumberOfNulls']
        data.number_of_distinct_values = map['NumberOfDistinctValues']
        return data
      end
    end

    class LongColumnStatisticsData
      def self.parse(map)
        data = Types::LongColumnStatisticsData.new
        data.minimum_value = map['MinimumValue']
        data.maximum_value = map['MaximumValue']
        data.number_of_nulls = map['NumberOfNulls']
        data.number_of_distinct_values = map['NumberOfDistinctValues']
        return data
      end
    end

    class DoubleColumnStatisticsData
      def self.parse(map)
        data = Types::DoubleColumnStatisticsData.new
        data.minimum_value = Hearth::NumberHelper.deserialize(map['MinimumValue'])
        data.maximum_value = Hearth::NumberHelper.deserialize(map['MaximumValue'])
        data.number_of_nulls = map['NumberOfNulls']
        data.number_of_distinct_values = map['NumberOfDistinctValues']
        return data
      end
    end

    class DecimalColumnStatisticsData
      def self.parse(map)
        data = Types::DecimalColumnStatisticsData.new
        data.minimum_value = (Parsers::DecimalNumber.parse(map['MinimumValue']) unless map['MinimumValue'].nil?)
        data.maximum_value = (Parsers::DecimalNumber.parse(map['MaximumValue']) unless map['MaximumValue'].nil?)
        data.number_of_nulls = map['NumberOfNulls']
        data.number_of_distinct_values = map['NumberOfDistinctValues']
        return data
      end
    end

    class DecimalNumber
      def self.parse(map)
        data = Types::DecimalNumber.new
        data.unscaled_value = Base64::decode64(map['UnscaledValue']) unless map['UnscaledValue'].nil?
        data.scale = map['Scale']
        return data
      end
    end

    class DateColumnStatisticsData
      def self.parse(map)
        data = Types::DateColumnStatisticsData.new
        data.minimum_value = Time.at(map['MinimumValue'].to_i) if map['MinimumValue']
        data.maximum_value = Time.at(map['MaximumValue'].to_i) if map['MaximumValue']
        data.number_of_nulls = map['NumberOfNulls']
        data.number_of_distinct_values = map['NumberOfDistinctValues']
        return data
      end
    end

    class BooleanColumnStatisticsData
      def self.parse(map)
        data = Types::BooleanColumnStatisticsData.new
        data.number_of_trues = map['NumberOfTrues']
        data.number_of_falses = map['NumberOfFalses']
        data.number_of_nulls = map['NumberOfNulls']
        return data
      end
    end

    # Operation Parser for GetColumnStatisticsForTable
    class GetColumnStatisticsForTable
      def self.parse(http_resp)
        data = Types::GetColumnStatisticsForTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.column_statistics_list = (Parsers::ColumnStatisticsList.parse(map['ColumnStatisticsList']) unless map['ColumnStatisticsList'].nil?)
        data.errors = (Parsers::ColumnErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    # Operation Parser for GetConnection
    class GetConnection
      def self.parse(http_resp)
        data = Types::GetConnectionOutput.new
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
        data.name = map['Name']
        data.description = map['Description']
        data.connection_type = map['ConnectionType']
        data.match_criteria = (Parsers::MatchCriteria.parse(map['MatchCriteria']) unless map['MatchCriteria'].nil?)
        data.connection_properties = (Parsers::ConnectionProperties.parse(map['ConnectionProperties']) unless map['ConnectionProperties'].nil?)
        data.physical_connection_requirements = (Parsers::PhysicalConnectionRequirements.parse(map['PhysicalConnectionRequirements']) unless map['PhysicalConnectionRequirements'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.last_updated_by = map['LastUpdatedBy']
        return data
      end
    end

    class PhysicalConnectionRequirements
      def self.parse(map)
        data = Types::PhysicalConnectionRequirements.new
        data.subnet_id = map['SubnetId']
        data.security_group_id_list = (Parsers::SecurityGroupIdList.parse(map['SecurityGroupIdList']) unless map['SecurityGroupIdList'].nil?)
        data.availability_zone = map['AvailabilityZone']
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ConnectionProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MatchCriteria
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetConnections
    class GetConnections
      def self.parse(http_resp)
        data = Types::GetConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_list = (Parsers::ConnectionList.parse(map['ConnectionList']) unless map['ConnectionList'].nil?)
        data.next_token = map['NextToken']
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

    # Operation Parser for GetCrawler
    class GetCrawler
      def self.parse(http_resp)
        data = Types::GetCrawlerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.crawler = (Parsers::Crawler.parse(map['Crawler']) unless map['Crawler'].nil?)
        data
      end
    end

    # Operation Parser for GetCrawlerMetrics
    class GetCrawlerMetrics
      def self.parse(http_resp)
        data = Types::GetCrawlerMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.crawler_metrics_list = (Parsers::CrawlerMetricsList.parse(map['CrawlerMetricsList']) unless map['CrawlerMetricsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CrawlerMetricsList
      def self.parse(list)
        list.map do |value|
          Parsers::CrawlerMetrics.parse(value) unless value.nil?
        end
      end
    end

    class CrawlerMetrics
      def self.parse(map)
        data = Types::CrawlerMetrics.new
        data.crawler_name = map['CrawlerName']
        data.time_left_seconds = Hearth::NumberHelper.deserialize(map['TimeLeftSeconds'])
        data.still_estimating = map['StillEstimating']
        data.last_runtime_seconds = Hearth::NumberHelper.deserialize(map['LastRuntimeSeconds'])
        data.median_runtime_seconds = Hearth::NumberHelper.deserialize(map['MedianRuntimeSeconds'])
        data.tables_created = map['TablesCreated']
        data.tables_updated = map['TablesUpdated']
        data.tables_deleted = map['TablesDeleted']
        return data
      end
    end

    # Operation Parser for GetCrawlers
    class GetCrawlers
      def self.parse(http_resp)
        data = Types::GetCrawlersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.crawlers = (Parsers::CrawlerList.parse(map['Crawlers']) unless map['Crawlers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetCustomEntityType
    class GetCustomEntityType
      def self.parse(http_resp)
        data = Types::GetCustomEntityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.regex_string = map['RegexString']
        data.context_words = (Parsers::ContextWords.parse(map['ContextWords']) unless map['ContextWords'].nil?)
        data
      end
    end

    # Operation Parser for GetDataCatalogEncryptionSettings
    class GetDataCatalogEncryptionSettings
      def self.parse(http_resp)
        data = Types::GetDataCatalogEncryptionSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_catalog_encryption_settings = (Parsers::DataCatalogEncryptionSettings.parse(map['DataCatalogEncryptionSettings']) unless map['DataCatalogEncryptionSettings'].nil?)
        data
      end
    end

    class DataCatalogEncryptionSettings
      def self.parse(map)
        data = Types::DataCatalogEncryptionSettings.new
        data.encryption_at_rest = (Parsers::EncryptionAtRest.parse(map['EncryptionAtRest']) unless map['EncryptionAtRest'].nil?)
        data.connection_password_encryption = (Parsers::ConnectionPasswordEncryption.parse(map['ConnectionPasswordEncryption']) unless map['ConnectionPasswordEncryption'].nil?)
        return data
      end
    end

    class ConnectionPasswordEncryption
      def self.parse(map)
        data = Types::ConnectionPasswordEncryption.new
        data.return_connection_password_encrypted = map['ReturnConnectionPasswordEncrypted']
        data.aws_kms_key_id = map['AwsKmsKeyId']
        return data
      end
    end

    class EncryptionAtRest
      def self.parse(map)
        data = Types::EncryptionAtRest.new
        data.catalog_encryption_mode = map['CatalogEncryptionMode']
        data.sse_aws_kms_key_id = map['SseAwsKmsKeyId']
        return data
      end
    end

    # Operation Parser for GetDatabase
    class GetDatabase
      def self.parse(http_resp)
        data = Types::GetDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database = (Parsers::Database.parse(map['Database']) unless map['Database'].nil?)
        data
      end
    end

    class Database
      def self.parse(map)
        data = Types::Database.new
        data.name = map['Name']
        data.description = map['Description']
        data.location_uri = map['LocationUri']
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.create_table_default_permissions = (Parsers::PrincipalPermissionsList.parse(map['CreateTableDefaultPermissions']) unless map['CreateTableDefaultPermissions'].nil?)
        data.target_database = (Parsers::DatabaseIdentifier.parse(map['TargetDatabase']) unless map['TargetDatabase'].nil?)
        data.catalog_id = map['CatalogId']
        return data
      end
    end

    class DatabaseIdentifier
      def self.parse(map)
        data = Types::DatabaseIdentifier.new
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        return data
      end
    end

    class PrincipalPermissionsList
      def self.parse(list)
        list.map do |value|
          Parsers::PrincipalPermissions.parse(value) unless value.nil?
        end
      end
    end

    class PrincipalPermissions
      def self.parse(map)
        data = Types::PrincipalPermissions.new
        data.principal = (Parsers::DataLakePrincipal.parse(map['Principal']) unless map['Principal'].nil?)
        data.permissions = (Parsers::PermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        return data
      end
    end

    class PermissionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DataLakePrincipal
      def self.parse(map)
        data = Types::DataLakePrincipal.new
        data.data_lake_principal_identifier = map['DataLakePrincipalIdentifier']
        return data
      end
    end

    # Operation Parser for GetDatabases
    class GetDatabases
      def self.parse(http_resp)
        data = Types::GetDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database_list = (Parsers::DatabaseList.parse(map['DatabaseList']) unless map['DatabaseList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatabaseList
      def self.parse(list)
        list.map do |value|
          Parsers::Database.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetDataflowGraph
    class GetDataflowGraph
      def self.parse(http_resp)
        data = Types::GetDataflowGraphOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dag_nodes = (Parsers::DagNodes.parse(map['DagNodes']) unless map['DagNodes'].nil?)
        data.dag_edges = (Parsers::DagEdges.parse(map['DagEdges']) unless map['DagEdges'].nil?)
        data
      end
    end

    class DagEdges
      def self.parse(list)
        list.map do |value|
          Parsers::CodeGenEdge.parse(value) unless value.nil?
        end
      end
    end

    class CodeGenEdge
      def self.parse(map)
        data = Types::CodeGenEdge.new
        data.source = map['Source']
        data.target = map['Target']
        data.target_parameter = map['TargetParameter']
        return data
      end
    end

    class DagNodes
      def self.parse(list)
        list.map do |value|
          Parsers::CodeGenNode.parse(value) unless value.nil?
        end
      end
    end

    class CodeGenNode
      def self.parse(map)
        data = Types::CodeGenNode.new
        data.id = map['Id']
        data.node_type = map['NodeType']
        data.args = (Parsers::CodeGenNodeArgs.parse(map['Args']) unless map['Args'].nil?)
        data.line_number = map['LineNumber']
        return data
      end
    end

    class CodeGenNodeArgs
      def self.parse(list)
        list.map do |value|
          Parsers::CodeGenNodeArg.parse(value) unless value.nil?
        end
      end
    end

    class CodeGenNodeArg
      def self.parse(map)
        data = Types::CodeGenNodeArg.new
        data.name = map['Name']
        data.value = map['Value']
        data.param = map['Param']
        return data
      end
    end

    # Operation Parser for GetDevEndpoint
    class GetDevEndpoint
      def self.parse(http_resp)
        data = Types::GetDevEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dev_endpoint = (Parsers::DevEndpoint.parse(map['DevEndpoint']) unless map['DevEndpoint'].nil?)
        data
      end
    end

    # Operation Parser for GetDevEndpoints
    class GetDevEndpoints
      def self.parse(http_resp)
        data = Types::GetDevEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dev_endpoints = (Parsers::DevEndpointList.parse(map['DevEndpoints']) unless map['DevEndpoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetJob
    class GetJob
      def self.parse(http_resp)
        data = Types::GetJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::Job.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    # Operation Parser for GetJobBookmark
    class GetJobBookmark
      def self.parse(http_resp)
        data = Types::GetJobBookmarkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_bookmark_entry = (Parsers::JobBookmarkEntry.parse(map['JobBookmarkEntry']) unless map['JobBookmarkEntry'].nil?)
        data
      end
    end

    class JobBookmarkEntry
      def self.parse(map)
        data = Types::JobBookmarkEntry.new
        data.job_name = map['JobName']
        data.version = map['Version']
        data.run = map['Run']
        data.attempt = map['Attempt']
        data.previous_run_id = map['PreviousRunId']
        data.run_id = map['RunId']
        data.job_bookmark = map['JobBookmark']
        return data
      end
    end

    # Operation Parser for GetJobRun
    class GetJobRun
      def self.parse(http_resp)
        data = Types::GetJobRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_run = (Parsers::JobRun.parse(map['JobRun']) unless map['JobRun'].nil?)
        data
      end
    end

    # Operation Parser for GetJobRuns
    class GetJobRuns
      def self.parse(http_resp)
        data = Types::GetJobRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_runs = (Parsers::JobRunList.parse(map['JobRuns']) unless map['JobRuns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetJobs
    class GetJobs
      def self.parse(http_resp)
        data = Types::GetJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.jobs = (Parsers::JobList.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetMLTaskRun
    class GetMLTaskRun
      def self.parse(http_resp)
        data = Types::GetMLTaskRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_id = map['TransformId']
        data.task_run_id = map['TaskRunId']
        data.status = map['Status']
        data.log_group_name = map['LogGroupName']
        data.properties = (Parsers::TaskRunProperties.parse(map['Properties']) unless map['Properties'].nil?)
        data.error_string = map['ErrorString']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.execution_time = map['ExecutionTime']
        data
      end
    end

    class TaskRunProperties
      def self.parse(map)
        data = Types::TaskRunProperties.new
        data.task_type = map['TaskType']
        data.import_labels_task_run_properties = (Parsers::ImportLabelsTaskRunProperties.parse(map['ImportLabelsTaskRunProperties']) unless map['ImportLabelsTaskRunProperties'].nil?)
        data.export_labels_task_run_properties = (Parsers::ExportLabelsTaskRunProperties.parse(map['ExportLabelsTaskRunProperties']) unless map['ExportLabelsTaskRunProperties'].nil?)
        data.labeling_set_generation_task_run_properties = (Parsers::LabelingSetGenerationTaskRunProperties.parse(map['LabelingSetGenerationTaskRunProperties']) unless map['LabelingSetGenerationTaskRunProperties'].nil?)
        data.find_matches_task_run_properties = (Parsers::FindMatchesTaskRunProperties.parse(map['FindMatchesTaskRunProperties']) unless map['FindMatchesTaskRunProperties'].nil?)
        return data
      end
    end

    class FindMatchesTaskRunProperties
      def self.parse(map)
        data = Types::FindMatchesTaskRunProperties.new
        data.job_id = map['JobId']
        data.job_name = map['JobName']
        data.job_run_id = map['JobRunId']
        return data
      end
    end

    class LabelingSetGenerationTaskRunProperties
      def self.parse(map)
        data = Types::LabelingSetGenerationTaskRunProperties.new
        data.output_s3_path = map['OutputS3Path']
        return data
      end
    end

    class ExportLabelsTaskRunProperties
      def self.parse(map)
        data = Types::ExportLabelsTaskRunProperties.new
        data.output_s3_path = map['OutputS3Path']
        return data
      end
    end

    class ImportLabelsTaskRunProperties
      def self.parse(map)
        data = Types::ImportLabelsTaskRunProperties.new
        data.input_s3_path = map['InputS3Path']
        data.replace = map['Replace']
        return data
      end
    end

    # Operation Parser for GetMLTaskRuns
    class GetMLTaskRuns
      def self.parse(http_resp)
        data = Types::GetMLTaskRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_runs = (Parsers::TaskRunList.parse(map['TaskRuns']) unless map['TaskRuns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TaskRunList
      def self.parse(list)
        list.map do |value|
          Parsers::TaskRun.parse(value) unless value.nil?
        end
      end
    end

    class TaskRun
      def self.parse(map)
        data = Types::TaskRun.new
        data.transform_id = map['TransformId']
        data.task_run_id = map['TaskRunId']
        data.status = map['Status']
        data.log_group_name = map['LogGroupName']
        data.properties = (Parsers::TaskRunProperties.parse(map['Properties']) unless map['Properties'].nil?)
        data.error_string = map['ErrorString']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.execution_time = map['ExecutionTime']
        return data
      end
    end

    # Operation Parser for GetMLTransform
    class GetMLTransform
      def self.parse(http_resp)
        data = Types::GetMLTransformOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_id = map['TransformId']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.created_on = Time.at(map['CreatedOn'].to_i) if map['CreatedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.input_record_tables = (Parsers::GlueTables.parse(map['InputRecordTables']) unless map['InputRecordTables'].nil?)
        data.parameters = (Parsers::TransformParameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.evaluation_metrics = (Parsers::EvaluationMetrics.parse(map['EvaluationMetrics']) unless map['EvaluationMetrics'].nil?)
        data.label_count = map['LabelCount']
        data.schema = (Parsers::TransformSchema.parse(map['Schema']) unless map['Schema'].nil?)
        data.role = map['Role']
        data.glue_version = map['GlueVersion']
        data.max_capacity = Hearth::NumberHelper.deserialize(map['MaxCapacity'])
        data.worker_type = map['WorkerType']
        data.number_of_workers = map['NumberOfWorkers']
        data.timeout = map['Timeout']
        data.max_retries = map['MaxRetries']
        data.transform_encryption = (Parsers::TransformEncryption.parse(map['TransformEncryption']) unless map['TransformEncryption'].nil?)
        data
      end
    end

    class TransformEncryption
      def self.parse(map)
        data = Types::TransformEncryption.new
        data.ml_user_data_encryption = (Parsers::MLUserDataEncryption.parse(map['MlUserDataEncryption']) unless map['MlUserDataEncryption'].nil?)
        data.task_run_security_configuration_name = map['TaskRunSecurityConfigurationName']
        return data
      end
    end

    class MLUserDataEncryption
      def self.parse(map)
        data = Types::MLUserDataEncryption.new
        data.ml_user_data_encryption_mode = map['MlUserDataEncryptionMode']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class TransformSchema
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaColumn.parse(value) unless value.nil?
        end
      end
    end

    class SchemaColumn
      def self.parse(map)
        data = Types::SchemaColumn.new
        data.name = map['Name']
        data.data_type = map['DataType']
        return data
      end
    end

    class EvaluationMetrics
      def self.parse(map)
        data = Types::EvaluationMetrics.new
        data.transform_type = map['TransformType']
        data.find_matches_metrics = (Parsers::FindMatchesMetrics.parse(map['FindMatchesMetrics']) unless map['FindMatchesMetrics'].nil?)
        return data
      end
    end

    class FindMatchesMetrics
      def self.parse(map)
        data = Types::FindMatchesMetrics.new
        data.area_under_pr_curve = Hearth::NumberHelper.deserialize(map['AreaUnderPRCurve'])
        data.precision = Hearth::NumberHelper.deserialize(map['Precision'])
        data.recall = Hearth::NumberHelper.deserialize(map['Recall'])
        data.f1 = Hearth::NumberHelper.deserialize(map['F1'])
        data.confusion_matrix = (Parsers::ConfusionMatrix.parse(map['ConfusionMatrix']) unless map['ConfusionMatrix'].nil?)
        data.column_importances = (Parsers::ColumnImportanceList.parse(map['ColumnImportances']) unless map['ColumnImportances'].nil?)
        return data
      end
    end

    class ColumnImportanceList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnImportance.parse(value) unless value.nil?
        end
      end
    end

    class ColumnImportance
      def self.parse(map)
        data = Types::ColumnImportance.new
        data.column_name = map['ColumnName']
        data.importance = Hearth::NumberHelper.deserialize(map['Importance'])
        return data
      end
    end

    class ConfusionMatrix
      def self.parse(map)
        data = Types::ConfusionMatrix.new
        data.num_true_positives = map['NumTruePositives']
        data.num_false_positives = map['NumFalsePositives']
        data.num_true_negatives = map['NumTrueNegatives']
        data.num_false_negatives = map['NumFalseNegatives']
        return data
      end
    end

    class TransformParameters
      def self.parse(map)
        data = Types::TransformParameters.new
        data.transform_type = map['TransformType']
        data.find_matches_parameters = (Parsers::FindMatchesParameters.parse(map['FindMatchesParameters']) unless map['FindMatchesParameters'].nil?)
        return data
      end
    end

    class FindMatchesParameters
      def self.parse(map)
        data = Types::FindMatchesParameters.new
        data.primary_key_column_name = map['PrimaryKeyColumnName']
        data.precision_recall_tradeoff = Hearth::NumberHelper.deserialize(map['PrecisionRecallTradeoff'])
        data.accuracy_cost_tradeoff = Hearth::NumberHelper.deserialize(map['AccuracyCostTradeoff'])
        data.enforce_provided_labels = map['EnforceProvidedLabels']
        return data
      end
    end

    class GlueTables
      def self.parse(list)
        list.map do |value|
          Parsers::GlueTable.parse(value) unless value.nil?
        end
      end
    end

    class GlueTable
      def self.parse(map)
        data = Types::GlueTable.new
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.catalog_id = map['CatalogId']
        data.connection_name = map['ConnectionName']
        return data
      end
    end

    # Operation Parser for GetMLTransforms
    class GetMLTransforms
      def self.parse(http_resp)
        data = Types::GetMLTransformsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transforms = (Parsers::TransformList.parse(map['Transforms']) unless map['Transforms'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TransformList
      def self.parse(list)
        list.map do |value|
          Parsers::MLTransform.parse(value) unless value.nil?
        end
      end
    end

    class MLTransform
      def self.parse(map)
        data = Types::MLTransform.new
        data.transform_id = map['TransformId']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.created_on = Time.at(map['CreatedOn'].to_i) if map['CreatedOn']
        data.last_modified_on = Time.at(map['LastModifiedOn'].to_i) if map['LastModifiedOn']
        data.input_record_tables = (Parsers::GlueTables.parse(map['InputRecordTables']) unless map['InputRecordTables'].nil?)
        data.parameters = (Parsers::TransformParameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.evaluation_metrics = (Parsers::EvaluationMetrics.parse(map['EvaluationMetrics']) unless map['EvaluationMetrics'].nil?)
        data.label_count = map['LabelCount']
        data.schema = (Parsers::TransformSchema.parse(map['Schema']) unless map['Schema'].nil?)
        data.role = map['Role']
        data.glue_version = map['GlueVersion']
        data.max_capacity = Hearth::NumberHelper.deserialize(map['MaxCapacity'])
        data.worker_type = map['WorkerType']
        data.number_of_workers = map['NumberOfWorkers']
        data.timeout = map['Timeout']
        data.max_retries = map['MaxRetries']
        data.transform_encryption = (Parsers::TransformEncryption.parse(map['TransformEncryption']) unless map['TransformEncryption'].nil?)
        return data
      end
    end

    # Operation Parser for GetMapping
    class GetMapping
      def self.parse(http_resp)
        data = Types::GetMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mapping = (Parsers::MappingList.parse(map['Mapping']) unless map['Mapping'].nil?)
        data
      end
    end

    class MappingList
      def self.parse(list)
        list.map do |value|
          Parsers::MappingEntry.parse(value) unless value.nil?
        end
      end
    end

    class MappingEntry
      def self.parse(map)
        data = Types::MappingEntry.new
        data.source_table = map['SourceTable']
        data.source_path = map['SourcePath']
        data.source_type = map['SourceType']
        data.target_table = map['TargetTable']
        data.target_path = map['TargetPath']
        data.target_type = map['TargetType']
        return data
      end
    end

    # Operation Parser for GetPartition
    class GetPartition
      def self.parse(http_resp)
        data = Types::GetPartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partition = (Parsers::Partition.parse(map['Partition']) unless map['Partition'].nil?)
        data
      end
    end

    # Operation Parser for GetPartitionIndexes
    class GetPartitionIndexes
      def self.parse(http_resp)
        data = Types::GetPartitionIndexesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partition_index_descriptor_list = (Parsers::PartitionIndexDescriptorList.parse(map['PartitionIndexDescriptorList']) unless map['PartitionIndexDescriptorList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PartitionIndexDescriptorList
      def self.parse(list)
        list.map do |value|
          Parsers::PartitionIndexDescriptor.parse(value) unless value.nil?
        end
      end
    end

    class PartitionIndexDescriptor
      def self.parse(map)
        data = Types::PartitionIndexDescriptor.new
        data.index_name = map['IndexName']
        data.keys = (Parsers::KeySchemaElementList.parse(map['Keys']) unless map['Keys'].nil?)
        data.index_status = map['IndexStatus']
        data.backfill_errors = (Parsers::BackfillErrors.parse(map['BackfillErrors']) unless map['BackfillErrors'].nil?)
        return data
      end
    end

    class BackfillErrors
      def self.parse(list)
        list.map do |value|
          Parsers::BackfillError.parse(value) unless value.nil?
        end
      end
    end

    class BackfillError
      def self.parse(map)
        data = Types::BackfillError.new
        data.code = map['Code']
        data.partitions = (Parsers::BackfillErroredPartitionsList.parse(map['Partitions']) unless map['Partitions'].nil?)
        return data
      end
    end

    class BackfillErroredPartitionsList
      def self.parse(list)
        list.map do |value|
          Parsers::PartitionValueList.parse(value) unless value.nil?
        end
      end
    end

    class KeySchemaElementList
      def self.parse(list)
        list.map do |value|
          Parsers::KeySchemaElement.parse(value) unless value.nil?
        end
      end
    end

    class KeySchemaElement
      def self.parse(map)
        data = Types::KeySchemaElement.new
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for GetPartitions
    class GetPartitions
      def self.parse(http_resp)
        data = Types::GetPartitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partitions = (Parsers::PartitionList.parse(map['Partitions']) unless map['Partitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetPlan
    class GetPlan
      def self.parse(http_resp)
        data = Types::GetPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.python_script = map['PythonScript']
        data.scala_code = map['ScalaCode']
        data
      end
    end

    # Operation Parser for GetRegistry
    class GetRegistry
      def self.parse(http_resp)
        data = Types::GetRegistryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_name = map['RegistryName']
        data.registry_arn = map['RegistryArn']
        data.description = map['Description']
        data.status = map['Status']
        data.created_time = map['CreatedTime']
        data.updated_time = map['UpdatedTime']
        data
      end
    end

    # Operation Parser for GetResourcePolicies
    class GetResourcePolicies
      def self.parse(http_resp)
        data = Types::GetResourcePoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.get_resource_policies_response_list = (Parsers::GetResourcePoliciesResponseList.parse(map['GetResourcePoliciesResponseList']) unless map['GetResourcePoliciesResponseList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GetResourcePoliciesResponseList
      def self.parse(list)
        list.map do |value|
          Parsers::GluePolicy.parse(value) unless value.nil?
        end
      end
    end

    class GluePolicy
      def self.parse(map)
        data = Types::GluePolicy.new
        data.policy_in_json = map['PolicyInJson']
        data.policy_hash = map['PolicyHash']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.update_time = Time.at(map['UpdateTime'].to_i) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for GetResourcePolicy
    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_in_json = map['PolicyInJson']
        data.policy_hash = map['PolicyHash']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.update_time = Time.at(map['UpdateTime'].to_i) if map['UpdateTime']
        data
      end
    end

    # Operation Parser for GetSchema
    class GetSchema
      def self.parse(http_resp)
        data = Types::GetSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_name = map['RegistryName']
        data.registry_arn = map['RegistryArn']
        data.schema_name = map['SchemaName']
        data.schema_arn = map['SchemaArn']
        data.description = map['Description']
        data.data_format = map['DataFormat']
        data.compatibility = map['Compatibility']
        data.schema_checkpoint = map['SchemaCheckpoint']
        data.latest_schema_version = map['LatestSchemaVersion']
        data.next_schema_version = map['NextSchemaVersion']
        data.schema_status = map['SchemaStatus']
        data.created_time = map['CreatedTime']
        data.updated_time = map['UpdatedTime']
        data
      end
    end

    # Operation Parser for GetSchemaByDefinition
    class GetSchemaByDefinition
      def self.parse(http_resp)
        data = Types::GetSchemaByDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_version_id = map['SchemaVersionId']
        data.schema_arn = map['SchemaArn']
        data.data_format = map['DataFormat']
        data.status = map['Status']
        data.created_time = map['CreatedTime']
        data
      end
    end

    # Operation Parser for GetSchemaVersion
    class GetSchemaVersion
      def self.parse(http_resp)
        data = Types::GetSchemaVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_version_id = map['SchemaVersionId']
        data.schema_definition = map['SchemaDefinition']
        data.data_format = map['DataFormat']
        data.schema_arn = map['SchemaArn']
        data.version_number = map['VersionNumber']
        data.status = map['Status']
        data.created_time = map['CreatedTime']
        data
      end
    end

    # Operation Parser for GetSchemaVersionsDiff
    class GetSchemaVersionsDiff
      def self.parse(http_resp)
        data = Types::GetSchemaVersionsDiffOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.diff = map['Diff']
        data
      end
    end

    # Operation Parser for GetSecurityConfiguration
    class GetSecurityConfiguration
      def self.parse(http_resp)
        data = Types::GetSecurityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.security_configuration = (Parsers::SecurityConfiguration.parse(map['SecurityConfiguration']) unless map['SecurityConfiguration'].nil?)
        data
      end
    end

    class SecurityConfiguration
      def self.parse(map)
        data = Types::SecurityConfiguration.new
        data.name = map['Name']
        data.created_time_stamp = Time.at(map['CreatedTimeStamp'].to_i) if map['CreatedTimeStamp']
        data.encryption_configuration = (Parsers::EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.s3_encryption = (Parsers::S3EncryptionList.parse(map['S3Encryption']) unless map['S3Encryption'].nil?)
        data.cloud_watch_encryption = (Parsers::CloudWatchEncryption.parse(map['CloudWatchEncryption']) unless map['CloudWatchEncryption'].nil?)
        data.job_bookmarks_encryption = (Parsers::JobBookmarksEncryption.parse(map['JobBookmarksEncryption']) unless map['JobBookmarksEncryption'].nil?)
        return data
      end
    end

    class JobBookmarksEncryption
      def self.parse(map)
        data = Types::JobBookmarksEncryption.new
        data.job_bookmarks_encryption_mode = map['JobBookmarksEncryptionMode']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    class CloudWatchEncryption
      def self.parse(map)
        data = Types::CloudWatchEncryption.new
        data.cloud_watch_encryption_mode = map['CloudWatchEncryptionMode']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    class S3EncryptionList
      def self.parse(list)
        list.map do |value|
          Parsers::S3Encryption.parse(value) unless value.nil?
        end
      end
    end

    class S3Encryption
      def self.parse(map)
        data = Types::S3Encryption.new
        data.s3_encryption_mode = map['S3EncryptionMode']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    # Operation Parser for GetSecurityConfigurations
    class GetSecurityConfigurations
      def self.parse(http_resp)
        data = Types::GetSecurityConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.security_configurations = (Parsers::SecurityConfigurationList.parse(map['SecurityConfigurations']) unless map['SecurityConfigurations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SecurityConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::SecurityConfiguration.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetSession
    class GetSession
      def self.parse(http_resp)
        data = Types::GetSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session = (Parsers::Session.parse(map['Session']) unless map['Session'].nil?)
        data
      end
    end

    # Operation Parser for GetStatement
    class GetStatement
      def self.parse(http_resp)
        data = Types::GetStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.statement = (Parsers::Statement.parse(map['Statement']) unless map['Statement'].nil?)
        data
      end
    end

    class Statement
      def self.parse(map)
        data = Types::Statement.new
        data.id = map['Id']
        data.code = map['Code']
        data.state = map['State']
        data.output = (Parsers::StatementOutput.parse(map['Output']) unless map['Output'].nil?)
        data.progress = Hearth::NumberHelper.deserialize(map['Progress'])
        data.started_on = map['StartedOn']
        data.completed_on = map['CompletedOn']
        return data
      end
    end

    class StatementOutput
      def self.parse(map)
        data = Types::StatementOutput.new
        data.data = (Parsers::StatementOutputData.parse(map['Data']) unless map['Data'].nil?)
        data.execution_count = map['ExecutionCount']
        data.status = map['Status']
        data.error_name = map['ErrorName']
        data.error_value = map['ErrorValue']
        data.traceback = (Parsers::OrchestrationStringList.parse(map['Traceback']) unless map['Traceback'].nil?)
        return data
      end
    end

    class StatementOutputData
      def self.parse(map)
        data = Types::StatementOutputData.new
        data.text_plain = map['TextPlain']
        return data
      end
    end

    # Operation Parser for GetTable
    class GetTable
      def self.parse(http_resp)
        data = Types::GetTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table = (Parsers::Table.parse(map['Table']) unless map['Table'].nil?)
        data
      end
    end

    class Table
      def self.parse(map)
        data = Types::Table.new
        data.name = map['Name']
        data.database_name = map['DatabaseName']
        data.description = map['Description']
        data.owner = map['Owner']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.update_time = Time.at(map['UpdateTime'].to_i) if map['UpdateTime']
        data.last_access_time = Time.at(map['LastAccessTime'].to_i) if map['LastAccessTime']
        data.last_analyzed_time = Time.at(map['LastAnalyzedTime'].to_i) if map['LastAnalyzedTime']
        data.retention = map['Retention']
        data.storage_descriptor = (Parsers::StorageDescriptor.parse(map['StorageDescriptor']) unless map['StorageDescriptor'].nil?)
        data.partition_keys = (Parsers::ColumnList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.view_original_text = map['ViewOriginalText']
        data.view_expanded_text = map['ViewExpandedText']
        data.table_type = map['TableType']
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.created_by = map['CreatedBy']
        data.is_registered_with_lake_formation = map['IsRegisteredWithLakeFormation']
        data.target_table = (Parsers::TableIdentifier.parse(map['TargetTable']) unless map['TargetTable'].nil?)
        data.catalog_id = map['CatalogId']
        data.version_id = map['VersionId']
        return data
      end
    end

    class TableIdentifier
      def self.parse(map)
        data = Types::TableIdentifier.new
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for GetTableVersion
    class GetTableVersion
      def self.parse(http_resp)
        data = Types::GetTableVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table_version = (Parsers::TableVersion.parse(map['TableVersion']) unless map['TableVersion'].nil?)
        data
      end
    end

    class TableVersion
      def self.parse(map)
        data = Types::TableVersion.new
        data.table = (Parsers::Table.parse(map['Table']) unless map['Table'].nil?)
        data.version_id = map['VersionId']
        return data
      end
    end

    # Operation Parser for GetTableVersions
    class GetTableVersions
      def self.parse(http_resp)
        data = Types::GetTableVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table_versions = (Parsers::GetTableVersionsList.parse(map['TableVersions']) unless map['TableVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GetTableVersionsList
      def self.parse(list)
        list.map do |value|
          Parsers::TableVersion.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetTables
    class GetTables
      def self.parse(http_resp)
        data = Types::GetTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table_list = (Parsers::TableList.parse(map['TableList']) unless map['TableList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TableList
      def self.parse(list)
        list.map do |value|
          Parsers::Table.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetTags
    class GetTags
      def self.parse(http_resp)
        data = Types::GetTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagsMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for GetTrigger
    class GetTrigger
      def self.parse(http_resp)
        data = Types::GetTriggerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trigger = (Parsers::Trigger.parse(map['Trigger']) unless map['Trigger'].nil?)
        data
      end
    end

    # Operation Parser for GetTriggers
    class GetTriggers
      def self.parse(http_resp)
        data = Types::GetTriggersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.triggers = (Parsers::TriggerList.parse(map['Triggers']) unless map['Triggers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetUnfilteredPartitionMetadata
    class GetUnfilteredPartitionMetadata
      def self.parse(http_resp)
        data = Types::GetUnfilteredPartitionMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partition = (Parsers::Partition.parse(map['Partition']) unless map['Partition'].nil?)
        data.authorized_columns = (Parsers::NameStringList.parse(map['AuthorizedColumns']) unless map['AuthorizedColumns'].nil?)
        data.is_registered_with_lake_formation = map['IsRegisteredWithLakeFormation']
        data
      end
    end

    # Error Parser for PermissionTypeMismatchException
    class PermissionTypeMismatchException
      def self.parse(http_resp)
        data = Types::PermissionTypeMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetUnfilteredPartitionsMetadata
    class GetUnfilteredPartitionsMetadata
      def self.parse(http_resp)
        data = Types::GetUnfilteredPartitionsMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.unfiltered_partitions = (Parsers::UnfilteredPartitionList.parse(map['UnfilteredPartitions']) unless map['UnfilteredPartitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UnfilteredPartitionList
      def self.parse(list)
        list.map do |value|
          Parsers::UnfilteredPartition.parse(value) unless value.nil?
        end
      end
    end

    class UnfilteredPartition
      def self.parse(map)
        data = Types::UnfilteredPartition.new
        data.partition = (Parsers::Partition.parse(map['Partition']) unless map['Partition'].nil?)
        data.authorized_columns = (Parsers::NameStringList.parse(map['AuthorizedColumns']) unless map['AuthorizedColumns'].nil?)
        data.is_registered_with_lake_formation = map['IsRegisteredWithLakeFormation']
        return data
      end
    end

    # Operation Parser for GetUnfilteredTableMetadata
    class GetUnfilteredTableMetadata
      def self.parse(http_resp)
        data = Types::GetUnfilteredTableMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table = (Parsers::Table.parse(map['Table']) unless map['Table'].nil?)
        data.authorized_columns = (Parsers::NameStringList.parse(map['AuthorizedColumns']) unless map['AuthorizedColumns'].nil?)
        data.is_registered_with_lake_formation = map['IsRegisteredWithLakeFormation']
        data.cell_filters = (Parsers::ColumnRowFilterList.parse(map['CellFilters']) unless map['CellFilters'].nil?)
        data
      end
    end

    class ColumnRowFilterList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnRowFilter.parse(value) unless value.nil?
        end
      end
    end

    class ColumnRowFilter
      def self.parse(map)
        data = Types::ColumnRowFilter.new
        data.column_name = map['ColumnName']
        data.row_filter_expression = map['RowFilterExpression']
        return data
      end
    end

    # Operation Parser for GetUserDefinedFunction
    class GetUserDefinedFunction
      def self.parse(http_resp)
        data = Types::GetUserDefinedFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_defined_function = (Parsers::UserDefinedFunction.parse(map['UserDefinedFunction']) unless map['UserDefinedFunction'].nil?)
        data
      end
    end

    class UserDefinedFunction
      def self.parse(map)
        data = Types::UserDefinedFunction.new
        data.function_name = map['FunctionName']
        data.database_name = map['DatabaseName']
        data.class_name = map['ClassName']
        data.owner_name = map['OwnerName']
        data.owner_type = map['OwnerType']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.resource_uris = (Parsers::ResourceUriList.parse(map['ResourceUris']) unless map['ResourceUris'].nil?)
        data.catalog_id = map['CatalogId']
        return data
      end
    end

    class ResourceUriList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceUri.parse(value) unless value.nil?
        end
      end
    end

    class ResourceUri
      def self.parse(map)
        data = Types::ResourceUri.new
        data.resource_type = map['ResourceType']
        data.uri = map['Uri']
        return data
      end
    end

    # Operation Parser for GetUserDefinedFunctions
    class GetUserDefinedFunctions
      def self.parse(http_resp)
        data = Types::GetUserDefinedFunctionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_defined_functions = (Parsers::UserDefinedFunctionList.parse(map['UserDefinedFunctions']) unless map['UserDefinedFunctions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserDefinedFunctionList
      def self.parse(list)
        list.map do |value|
          Parsers::UserDefinedFunction.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetWorkflow
    class GetWorkflow
      def self.parse(http_resp)
        data = Types::GetWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workflow = (Parsers::Workflow.parse(map['Workflow']) unless map['Workflow'].nil?)
        data
      end
    end

    # Operation Parser for GetWorkflowRun
    class GetWorkflowRun
      def self.parse(http_resp)
        data = Types::GetWorkflowRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run = (Parsers::WorkflowRun.parse(map['Run']) unless map['Run'].nil?)
        data
      end
    end

    # Operation Parser for GetWorkflowRunProperties
    class GetWorkflowRunProperties
      def self.parse(http_resp)
        data = Types::GetWorkflowRunPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run_properties = (Parsers::WorkflowRunProperties.parse(map['RunProperties']) unless map['RunProperties'].nil?)
        data
      end
    end

    # Operation Parser for GetWorkflowRuns
    class GetWorkflowRuns
      def self.parse(http_resp)
        data = Types::GetWorkflowRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.runs = (Parsers::WorkflowRuns.parse(map['Runs']) unless map['Runs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkflowRuns
      def self.parse(list)
        list.map do |value|
          Parsers::WorkflowRun.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ImportCatalogToGlue
    class ImportCatalogToGlue
      def self.parse(http_resp)
        data = Types::ImportCatalogToGlueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListBlueprints
    class ListBlueprints
      def self.parse(http_resp)
        data = Types::ListBlueprintsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprints = (Parsers::BlueprintNames.parse(map['Blueprints']) unless map['Blueprints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListCrawlers
    class ListCrawlers
      def self.parse(http_resp)
        data = Types::ListCrawlersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.crawler_names = (Parsers::CrawlerNameList.parse(map['CrawlerNames']) unless map['CrawlerNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListCustomEntityTypes
    class ListCustomEntityTypes
      def self.parse(http_resp)
        data = Types::ListCustomEntityTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.custom_entity_types = (Parsers::CustomEntityTypes.parse(map['CustomEntityTypes']) unless map['CustomEntityTypes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListDevEndpoints
    class ListDevEndpoints
      def self.parse(http_resp)
        data = Types::ListDevEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dev_endpoint_names = (Parsers::DevEndpointNameList.parse(map['DevEndpointNames']) unless map['DevEndpointNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DevEndpointNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_names = (Parsers::JobNameList.parse(map['JobNames']) unless map['JobNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListMLTransforms
    class ListMLTransforms
      def self.parse(http_resp)
        data = Types::ListMLTransformsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_ids = (Parsers::TransformIdList.parse(map['TransformIds']) unless map['TransformIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TransformIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListRegistries
    class ListRegistries
      def self.parse(http_resp)
        data = Types::ListRegistriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registries = (Parsers::RegistryListDefinition.parse(map['Registries']) unless map['Registries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RegistryListDefinition
      def self.parse(list)
        list.map do |value|
          Parsers::RegistryListItem.parse(value) unless value.nil?
        end
      end
    end

    class RegistryListItem
      def self.parse(map)
        data = Types::RegistryListItem.new
        data.registry_name = map['RegistryName']
        data.registry_arn = map['RegistryArn']
        data.description = map['Description']
        data.status = map['Status']
        data.created_time = map['CreatedTime']
        data.updated_time = map['UpdatedTime']
        return data
      end
    end

    # Operation Parser for ListSchemaVersions
    class ListSchemaVersions
      def self.parse(http_resp)
        data = Types::ListSchemaVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schemas = (Parsers::SchemaVersionList.parse(map['Schemas']) unless map['Schemas'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SchemaVersionList
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaVersionListItem.parse(value) unless value.nil?
        end
      end
    end

    class SchemaVersionListItem
      def self.parse(map)
        data = Types::SchemaVersionListItem.new
        data.schema_arn = map['SchemaArn']
        data.schema_version_id = map['SchemaVersionId']
        data.version_number = map['VersionNumber']
        data.status = map['Status']
        data.created_time = map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListSchemas
    class ListSchemas
      def self.parse(http_resp)
        data = Types::ListSchemasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schemas = (Parsers::SchemaListDefinition.parse(map['Schemas']) unless map['Schemas'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SchemaListDefinition
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaListItem.parse(value) unless value.nil?
        end
      end
    end

    class SchemaListItem
      def self.parse(map)
        data = Types::SchemaListItem.new
        data.registry_name = map['RegistryName']
        data.schema_name = map['SchemaName']
        data.schema_arn = map['SchemaArn']
        data.description = map['Description']
        data.schema_status = map['SchemaStatus']
        data.created_time = map['CreatedTime']
        data.updated_time = map['UpdatedTime']
        return data
      end
    end

    # Operation Parser for ListSessions
    class ListSessions
      def self.parse(http_resp)
        data = Types::ListSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ids = (Parsers::SessionIdList.parse(map['Ids']) unless map['Ids'].nil?)
        data.sessions = (Parsers::SessionList.parse(map['Sessions']) unless map['Sessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SessionList
      def self.parse(list)
        list.map do |value|
          Parsers::Session.parse(value) unless value.nil?
        end
      end
    end

    class SessionIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListStatements
    class ListStatements
      def self.parse(http_resp)
        data = Types::ListStatementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.statements = (Parsers::StatementList.parse(map['Statements']) unless map['Statements'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StatementList
      def self.parse(list)
        list.map do |value|
          Parsers::Statement.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTriggers
    class ListTriggers
      def self.parse(http_resp)
        data = Types::ListTriggersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trigger_names = (Parsers::TriggerNameList.parse(map['TriggerNames']) unless map['TriggerNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListWorkflows
    class ListWorkflows
      def self.parse(http_resp)
        data = Types::ListWorkflowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workflows = (Parsers::WorkflowNames.parse(map['Workflows']) unless map['Workflows'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for PutDataCatalogEncryptionSettings
    class PutDataCatalogEncryptionSettings
      def self.parse(http_resp)
        data = Types::PutDataCatalogEncryptionSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_hash = map['PolicyHash']
        data
      end
    end

    # Operation Parser for PutSchemaVersionMetadata
    class PutSchemaVersionMetadata
      def self.parse(http_resp)
        data = Types::PutSchemaVersionMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.registry_name = map['RegistryName']
        data.latest_version = map['LatestVersion']
        data.version_number = map['VersionNumber']
        data.schema_version_id = map['SchemaVersionId']
        data.metadata_key = map['MetadataKey']
        data.metadata_value = map['MetadataValue']
        data
      end
    end

    # Operation Parser for PutWorkflowRunProperties
    class PutWorkflowRunProperties
      def self.parse(http_resp)
        data = Types::PutWorkflowRunPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for QuerySchemaVersionMetadata
    class QuerySchemaVersionMetadata
      def self.parse(http_resp)
        data = Types::QuerySchemaVersionMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metadata_info_map = (Parsers::MetadataInfoMap.parse(map['MetadataInfoMap']) unless map['MetadataInfoMap'].nil?)
        data.schema_version_id = map['SchemaVersionId']
        data.next_token = map['NextToken']
        data
      end
    end

    class MetadataInfoMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::MetadataInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetadataInfo
      def self.parse(map)
        data = Types::MetadataInfo.new
        data.metadata_value = map['MetadataValue']
        data.created_time = map['CreatedTime']
        data.other_metadata_value_list = (Parsers::OtherMetadataValueList.parse(map['OtherMetadataValueList']) unless map['OtherMetadataValueList'].nil?)
        return data
      end
    end

    class OtherMetadataValueList
      def self.parse(list)
        list.map do |value|
          Parsers::OtherMetadataValueListItem.parse(value) unless value.nil?
        end
      end
    end

    class OtherMetadataValueListItem
      def self.parse(map)
        data = Types::OtherMetadataValueListItem.new
        data.metadata_value = map['MetadataValue']
        data.created_time = map['CreatedTime']
        return data
      end
    end

    # Operation Parser for RegisterSchemaVersion
    class RegisterSchemaVersion
      def self.parse(http_resp)
        data = Types::RegisterSchemaVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_version_id = map['SchemaVersionId']
        data.version_number = map['VersionNumber']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for RemoveSchemaVersionMetadata
    class RemoveSchemaVersionMetadata
      def self.parse(http_resp)
        data = Types::RemoveSchemaVersionMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.registry_name = map['RegistryName']
        data.latest_version = map['LatestVersion']
        data.version_number = map['VersionNumber']
        data.schema_version_id = map['SchemaVersionId']
        data.metadata_key = map['MetadataKey']
        data.metadata_value = map['MetadataValue']
        data
      end
    end

    # Operation Parser for ResetJobBookmark
    class ResetJobBookmark
      def self.parse(http_resp)
        data = Types::ResetJobBookmarkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_bookmark_entry = (Parsers::JobBookmarkEntry.parse(map['JobBookmarkEntry']) unless map['JobBookmarkEntry'].nil?)
        data
      end
    end

    # Operation Parser for ResumeWorkflowRun
    class ResumeWorkflowRun
      def self.parse(http_resp)
        data = Types::ResumeWorkflowRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run_id = map['RunId']
        data.node_ids = (Parsers::NodeIdList.parse(map['NodeIds']) unless map['NodeIds'].nil?)
        data
      end
    end

    class NodeIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for IllegalWorkflowStateException
    class IllegalWorkflowStateException
      def self.parse(http_resp)
        data = Types::IllegalWorkflowStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentRunsExceededException
    class ConcurrentRunsExceededException
      def self.parse(http_resp)
        data = Types::ConcurrentRunsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RunStatement
    class RunStatement
      def self.parse(http_resp)
        data = Types::RunStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for SearchTables
    class SearchTables
      def self.parse(http_resp)
        data = Types::SearchTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.table_list = (Parsers::TableList.parse(map['TableList']) unless map['TableList'].nil?)
        data
      end
    end

    # Operation Parser for StartBlueprintRun
    class StartBlueprintRun
      def self.parse(http_resp)
        data = Types::StartBlueprintRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run_id = map['RunId']
        data
      end
    end

    # Error Parser for IllegalBlueprintStateException
    class IllegalBlueprintStateException
      def self.parse(http_resp)
        data = Types::IllegalBlueprintStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartCrawler
    class StartCrawler
      def self.parse(http_resp)
        data = Types::StartCrawlerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartCrawlerSchedule
    class StartCrawlerSchedule
      def self.parse(http_resp)
        data = Types::StartCrawlerScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoScheduleException
    class NoScheduleException
      def self.parse(http_resp)
        data = Types::NoScheduleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SchedulerRunningException
    class SchedulerRunningException
      def self.parse(http_resp)
        data = Types::SchedulerRunningException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartExportLabelsTaskRun
    class StartExportLabelsTaskRun
      def self.parse(http_resp)
        data = Types::StartExportLabelsTaskRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_run_id = map['TaskRunId']
        data
      end
    end

    # Operation Parser for StartImportLabelsTaskRun
    class StartImportLabelsTaskRun
      def self.parse(http_resp)
        data = Types::StartImportLabelsTaskRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_run_id = map['TaskRunId']
        data
      end
    end

    # Operation Parser for StartJobRun
    class StartJobRun
      def self.parse(http_resp)
        data = Types::StartJobRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_run_id = map['JobRunId']
        data
      end
    end

    # Operation Parser for StartMLEvaluationTaskRun
    class StartMLEvaluationTaskRun
      def self.parse(http_resp)
        data = Types::StartMLEvaluationTaskRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_run_id = map['TaskRunId']
        data
      end
    end

    # Error Parser for MLTransformNotReadyException
    class MLTransformNotReadyException
      def self.parse(http_resp)
        data = Types::MLTransformNotReadyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartMLLabelingSetGenerationTaskRun
    class StartMLLabelingSetGenerationTaskRun
      def self.parse(http_resp)
        data = Types::StartMLLabelingSetGenerationTaskRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_run_id = map['TaskRunId']
        data
      end
    end

    # Operation Parser for StartTrigger
    class StartTrigger
      def self.parse(http_resp)
        data = Types::StartTriggerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for StartWorkflowRun
    class StartWorkflowRun
      def self.parse(http_resp)
        data = Types::StartWorkflowRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run_id = map['RunId']
        data
      end
    end

    # Operation Parser for StopCrawler
    class StopCrawler
      def self.parse(http_resp)
        data = Types::StopCrawlerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CrawlerNotRunningException
    class CrawlerNotRunningException
      def self.parse(http_resp)
        data = Types::CrawlerNotRunningException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CrawlerStoppingException
    class CrawlerStoppingException
      def self.parse(http_resp)
        data = Types::CrawlerStoppingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopCrawlerSchedule
    class StopCrawlerSchedule
      def self.parse(http_resp)
        data = Types::StopCrawlerScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for SchedulerNotRunningException
    class SchedulerNotRunningException
      def self.parse(http_resp)
        data = Types::SchedulerNotRunningException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopSession
    class StopSession
      def self.parse(http_resp)
        data = Types::StopSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for StopTrigger
    class StopTrigger
      def self.parse(http_resp)
        data = Types::StopTriggerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for StopWorkflowRun
    class StopWorkflowRun
      def self.parse(http_resp)
        data = Types::StopWorkflowRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateBlueprint
    class UpdateBlueprint
      def self.parse(http_resp)
        data = Types::UpdateBlueprintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateClassifier
    class UpdateClassifier
      def self.parse(http_resp)
        data = Types::UpdateClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for VersionMismatchException
    class VersionMismatchException
      def self.parse(http_resp)
        data = Types::VersionMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateColumnStatisticsForPartition
    class UpdateColumnStatisticsForPartition
      def self.parse(http_resp)
        data = Types::UpdateColumnStatisticsForPartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::ColumnStatisticsErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class ColumnStatisticsErrors
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnStatisticsError.parse(value) unless value.nil?
        end
      end
    end

    class ColumnStatisticsError
      def self.parse(map)
        data = Types::ColumnStatisticsError.new
        data.column_statistics = (Parsers::ColumnStatistics.parse(map['ColumnStatistics']) unless map['ColumnStatistics'].nil?)
        data.error = (Parsers::ErrorDetail.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    # Operation Parser for UpdateColumnStatisticsForTable
    class UpdateColumnStatisticsForTable
      def self.parse(http_resp)
        data = Types::UpdateColumnStatisticsForTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::ColumnStatisticsErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    # Operation Parser for UpdateConnection
    class UpdateConnection
      def self.parse(http_resp)
        data = Types::UpdateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateCrawler
    class UpdateCrawler
      def self.parse(http_resp)
        data = Types::UpdateCrawlerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateCrawlerSchedule
    class UpdateCrawlerSchedule
      def self.parse(http_resp)
        data = Types::UpdateCrawlerScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDatabase
    class UpdateDatabase
      def self.parse(http_resp)
        data = Types::UpdateDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDevEndpoint
    class UpdateDevEndpoint
      def self.parse(http_resp)
        data = Types::UpdateDevEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateJob
    class UpdateJob
      def self.parse(http_resp)
        data = Types::UpdateJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_name = map['JobName']
        data
      end
    end

    # Operation Parser for UpdateMLTransform
    class UpdateMLTransform
      def self.parse(http_resp)
        data = Types::UpdateMLTransformOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_id = map['TransformId']
        data
      end
    end

    # Operation Parser for UpdatePartition
    class UpdatePartition
      def self.parse(http_resp)
        data = Types::UpdatePartitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRegistry
    class UpdateRegistry
      def self.parse(http_resp)
        data = Types::UpdateRegistryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_name = map['RegistryName']
        data.registry_arn = map['RegistryArn']
        data
      end
    end

    # Operation Parser for UpdateSchema
    class UpdateSchema
      def self.parse(http_resp)
        data = Types::UpdateSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.registry_name = map['RegistryName']
        data
      end
    end

    # Operation Parser for UpdateTable
    class UpdateTable
      def self.parse(http_resp)
        data = Types::UpdateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateTrigger
    class UpdateTrigger
      def self.parse(http_resp)
        data = Types::UpdateTriggerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trigger = (Parsers::Trigger.parse(map['Trigger']) unless map['Trigger'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUserDefinedFunction
    class UpdateUserDefinedFunction
      def self.parse(http_resp)
        data = Types::UpdateUserDefinedFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateWorkflow
    class UpdateWorkflow
      def self.parse(http_resp)
        data = Types::UpdateWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end
  end
end
