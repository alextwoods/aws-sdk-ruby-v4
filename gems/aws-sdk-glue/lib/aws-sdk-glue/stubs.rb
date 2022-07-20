# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::Glue
  module Stubs

    # Operation Stubber for BatchCreatePartition
    class BatchCreatePartition
      def self.default(visited=[])
        {
          errors: PartitionErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = PartitionErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PartitionErrors
    class PartitionErrors
      def self.default(visited=[])
        return nil if visited.include?('PartitionErrors')
        visited = visited + ['PartitionErrors']
        [
          PartitionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PartitionError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartitionError
    class PartitionError
      def self.default(visited=[])
        return nil if visited.include?('PartitionError')
        visited = visited + ['PartitionError']
        {
          partition_values: ValueStringList.default(visited),
          error_detail: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PartitionError.new
        data = {}
        data['PartitionValues'] = ValueStringList.stub(stub[:partition_values]) unless stub[:partition_values].nil?
        data['ErrorDetail'] = ErrorDetail.stub(stub[:error_detail]) unless stub[:error_detail].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetail
    class ErrorDetail
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetail')
        visited = visited + ['ErrorDetail']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetail.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for ValueStringList
    class ValueStringList
      def self.default(visited=[])
        return nil if visited.include?('ValueStringList')
        visited = visited + ['ValueStringList']
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

    # Operation Stubber for BatchDeleteConnection
    class BatchDeleteConnection
      def self.default(visited=[])
        {
          succeeded: NameStringList.default(visited),
          errors: ErrorByName.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Succeeded'] = NameStringList.stub(stub[:succeeded]) unless stub[:succeeded].nil?
        data['Errors'] = ErrorByName.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for ErrorByName
    class ErrorByName
      def self.default(visited=[])
        return nil if visited.include?('ErrorByName')
        visited = visited + ['ErrorByName']
        {
          test_key: ErrorDetail.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ErrorDetail.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for NameStringList
    class NameStringList
      def self.default(visited=[])
        return nil if visited.include?('NameStringList')
        visited = visited + ['NameStringList']
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

    # Operation Stubber for BatchDeletePartition
    class BatchDeletePartition
      def self.default(visited=[])
        {
          errors: PartitionErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = PartitionErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDeleteTable
    class BatchDeleteTable
      def self.default(visited=[])
        {
          errors: TableErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = TableErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableErrors
    class TableErrors
      def self.default(visited=[])
        return nil if visited.include?('TableErrors')
        visited = visited + ['TableErrors']
        [
          TableError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableError
    class TableError
      def self.default(visited=[])
        return nil if visited.include?('TableError')
        visited = visited + ['TableError']
        {
          table_name: 'table_name',
          error_detail: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableError.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['ErrorDetail'] = ErrorDetail.stub(stub[:error_detail]) unless stub[:error_detail].nil?
        data
      end
    end

    # Operation Stubber for BatchDeleteTableVersion
    class BatchDeleteTableVersion
      def self.default(visited=[])
        {
          errors: TableVersionErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = TableVersionErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableVersionErrors
    class TableVersionErrors
      def self.default(visited=[])
        return nil if visited.include?('TableVersionErrors')
        visited = visited + ['TableVersionErrors']
        [
          TableVersionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableVersionError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableVersionError
    class TableVersionError
      def self.default(visited=[])
        return nil if visited.include?('TableVersionError')
        visited = visited + ['TableVersionError']
        {
          table_name: 'table_name',
          version_id: 'version_id',
          error_detail: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableVersionError.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['ErrorDetail'] = ErrorDetail.stub(stub[:error_detail]) unless stub[:error_detail].nil?
        data
      end
    end

    # Operation Stubber for BatchGetBlueprints
    class BatchGetBlueprints
      def self.default(visited=[])
        {
          blueprints: Blueprints.default(visited),
          missing_blueprints: BlueprintNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Blueprints'] = Blueprints.stub(stub[:blueprints]) unless stub[:blueprints].nil?
        data['MissingBlueprints'] = BlueprintNames.stub(stub[:missing_blueprints]) unless stub[:missing_blueprints].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BlueprintNames
    class BlueprintNames
      def self.default(visited=[])
        return nil if visited.include?('BlueprintNames')
        visited = visited + ['BlueprintNames']
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

    # List Stubber for Blueprints
    class Blueprints
      def self.default(visited=[])
        return nil if visited.include?('Blueprints')
        visited = visited + ['Blueprints']
        [
          Blueprint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Blueprint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Blueprint
    class Blueprint
      def self.default(visited=[])
        return nil if visited.include?('Blueprint')
        visited = visited + ['Blueprint']
        {
          name: 'name',
          description: 'description',
          created_on: Time.now,
          last_modified_on: Time.now,
          parameter_spec: 'parameter_spec',
          blueprint_location: 'blueprint_location',
          blueprint_service_location: 'blueprint_service_location',
          status: 'status',
          error_message: 'error_message',
          last_active_definition: LastActiveDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Blueprint.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['ParameterSpec'] = stub[:parameter_spec] unless stub[:parameter_spec].nil?
        data['BlueprintLocation'] = stub[:blueprint_location] unless stub[:blueprint_location].nil?
        data['BlueprintServiceLocation'] = stub[:blueprint_service_location] unless stub[:blueprint_service_location].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LastActiveDefinition'] = LastActiveDefinition.stub(stub[:last_active_definition]) unless stub[:last_active_definition].nil?
        data
      end
    end

    # Structure Stubber for LastActiveDefinition
    class LastActiveDefinition
      def self.default(visited=[])
        return nil if visited.include?('LastActiveDefinition')
        visited = visited + ['LastActiveDefinition']
        {
          description: 'description',
          last_modified_on: Time.now,
          parameter_spec: 'parameter_spec',
          blueprint_location: 'blueprint_location',
          blueprint_service_location: 'blueprint_service_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::LastActiveDefinition.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['ParameterSpec'] = stub[:parameter_spec] unless stub[:parameter_spec].nil?
        data['BlueprintLocation'] = stub[:blueprint_location] unless stub[:blueprint_location].nil?
        data['BlueprintServiceLocation'] = stub[:blueprint_service_location] unless stub[:blueprint_service_location].nil?
        data
      end
    end

    # Operation Stubber for BatchGetCrawlers
    class BatchGetCrawlers
      def self.default(visited=[])
        {
          crawlers: CrawlerList.default(visited),
          crawlers_not_found: CrawlerNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Crawlers'] = CrawlerList.stub(stub[:crawlers]) unless stub[:crawlers].nil?
        data['CrawlersNotFound'] = CrawlerNameList.stub(stub[:crawlers_not_found]) unless stub[:crawlers_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CrawlerNameList
    class CrawlerNameList
      def self.default(visited=[])
        return nil if visited.include?('CrawlerNameList')
        visited = visited + ['CrawlerNameList']
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

    # List Stubber for CrawlerList
    class CrawlerList
      def self.default(visited=[])
        return nil if visited.include?('CrawlerList')
        visited = visited + ['CrawlerList']
        [
          Crawler.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Crawler.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Crawler
    class Crawler
      def self.default(visited=[])
        return nil if visited.include?('Crawler')
        visited = visited + ['Crawler']
        {
          name: 'name',
          role: 'role',
          targets: CrawlerTargets.default(visited),
          database_name: 'database_name',
          description: 'description',
          classifiers: ClassifierNameList.default(visited),
          recrawl_policy: RecrawlPolicy.default(visited),
          schema_change_policy: SchemaChangePolicy.default(visited),
          lineage_configuration: LineageConfiguration.default(visited),
          state: 'state',
          table_prefix: 'table_prefix',
          schedule: Schedule.default(visited),
          crawl_elapsed_time: 1,
          creation_time: Time.now,
          last_updated: Time.now,
          last_crawl: LastCrawlInfo.default(visited),
          version: 1,
          configuration: 'configuration',
          crawler_security_configuration: 'crawler_security_configuration',
          lake_formation_configuration: LakeFormationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Crawler.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Targets'] = CrawlerTargets.stub(stub[:targets]) unless stub[:targets].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Classifiers'] = ClassifierNameList.stub(stub[:classifiers]) unless stub[:classifiers].nil?
        data['RecrawlPolicy'] = RecrawlPolicy.stub(stub[:recrawl_policy]) unless stub[:recrawl_policy].nil?
        data['SchemaChangePolicy'] = SchemaChangePolicy.stub(stub[:schema_change_policy]) unless stub[:schema_change_policy].nil?
        data['LineageConfiguration'] = LineageConfiguration.stub(stub[:lineage_configuration]) unless stub[:lineage_configuration].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['TablePrefix'] = stub[:table_prefix] unless stub[:table_prefix].nil?
        data['Schedule'] = Schedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['CrawlElapsedTime'] = stub[:crawl_elapsed_time] unless stub[:crawl_elapsed_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['LastCrawl'] = LastCrawlInfo.stub(stub[:last_crawl]) unless stub[:last_crawl].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Configuration'] = stub[:configuration] unless stub[:configuration].nil?
        data['CrawlerSecurityConfiguration'] = stub[:crawler_security_configuration] unless stub[:crawler_security_configuration].nil?
        data['LakeFormationConfiguration'] = LakeFormationConfiguration.stub(stub[:lake_formation_configuration]) unless stub[:lake_formation_configuration].nil?
        data
      end
    end

    # Structure Stubber for LakeFormationConfiguration
    class LakeFormationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LakeFormationConfiguration')
        visited = visited + ['LakeFormationConfiguration']
        {
          use_lake_formation_credentials: false,
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LakeFormationConfiguration.new
        data = {}
        data['UseLakeFormationCredentials'] = stub[:use_lake_formation_credentials] unless stub[:use_lake_formation_credentials].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Structure Stubber for LastCrawlInfo
    class LastCrawlInfo
      def self.default(visited=[])
        return nil if visited.include?('LastCrawlInfo')
        visited = visited + ['LastCrawlInfo']
        {
          status: 'status',
          error_message: 'error_message',
          log_group: 'log_group',
          log_stream: 'log_stream',
          message_prefix: 'message_prefix',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LastCrawlInfo.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LogGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data['LogStream'] = stub[:log_stream] unless stub[:log_stream].nil?
        data['MessagePrefix'] = stub[:message_prefix] unless stub[:message_prefix].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data
      end
    end

    # Structure Stubber for Schedule
    class Schedule
      def self.default(visited=[])
        return nil if visited.include?('Schedule')
        visited = visited + ['Schedule']
        {
          schedule_expression: 'schedule_expression',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Schedule.new
        data = {}
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for LineageConfiguration
    class LineageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LineageConfiguration')
        visited = visited + ['LineageConfiguration']
        {
          crawler_lineage_settings: 'crawler_lineage_settings',
        }
      end

      def self.stub(stub)
        stub ||= Types::LineageConfiguration.new
        data = {}
        data['CrawlerLineageSettings'] = stub[:crawler_lineage_settings] unless stub[:crawler_lineage_settings].nil?
        data
      end
    end

    # Structure Stubber for SchemaChangePolicy
    class SchemaChangePolicy
      def self.default(visited=[])
        return nil if visited.include?('SchemaChangePolicy')
        visited = visited + ['SchemaChangePolicy']
        {
          update_behavior: 'update_behavior',
          delete_behavior: 'delete_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaChangePolicy.new
        data = {}
        data['UpdateBehavior'] = stub[:update_behavior] unless stub[:update_behavior].nil?
        data['DeleteBehavior'] = stub[:delete_behavior] unless stub[:delete_behavior].nil?
        data
      end
    end

    # Structure Stubber for RecrawlPolicy
    class RecrawlPolicy
      def self.default(visited=[])
        return nil if visited.include?('RecrawlPolicy')
        visited = visited + ['RecrawlPolicy']
        {
          recrawl_behavior: 'recrawl_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecrawlPolicy.new
        data = {}
        data['RecrawlBehavior'] = stub[:recrawl_behavior] unless stub[:recrawl_behavior].nil?
        data
      end
    end

    # List Stubber for ClassifierNameList
    class ClassifierNameList
      def self.default(visited=[])
        return nil if visited.include?('ClassifierNameList')
        visited = visited + ['ClassifierNameList']
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

    # Structure Stubber for CrawlerTargets
    class CrawlerTargets
      def self.default(visited=[])
        return nil if visited.include?('CrawlerTargets')
        visited = visited + ['CrawlerTargets']
        {
          s3_targets: S3TargetList.default(visited),
          jdbc_targets: JdbcTargetList.default(visited),
          mongo_db_targets: MongoDBTargetList.default(visited),
          dynamo_db_targets: DynamoDBTargetList.default(visited),
          catalog_targets: CatalogTargetList.default(visited),
          delta_targets: DeltaTargetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CrawlerTargets.new
        data = {}
        data['S3Targets'] = S3TargetList.stub(stub[:s3_targets]) unless stub[:s3_targets].nil?
        data['JdbcTargets'] = JdbcTargetList.stub(stub[:jdbc_targets]) unless stub[:jdbc_targets].nil?
        data['MongoDBTargets'] = MongoDBTargetList.stub(stub[:mongo_db_targets]) unless stub[:mongo_db_targets].nil?
        data['DynamoDBTargets'] = DynamoDBTargetList.stub(stub[:dynamo_db_targets]) unless stub[:dynamo_db_targets].nil?
        data['CatalogTargets'] = CatalogTargetList.stub(stub[:catalog_targets]) unless stub[:catalog_targets].nil?
        data['DeltaTargets'] = DeltaTargetList.stub(stub[:delta_targets]) unless stub[:delta_targets].nil?
        data
      end
    end

    # List Stubber for DeltaTargetList
    class DeltaTargetList
      def self.default(visited=[])
        return nil if visited.include?('DeltaTargetList')
        visited = visited + ['DeltaTargetList']
        [
          DeltaTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeltaTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeltaTarget
    class DeltaTarget
      def self.default(visited=[])
        return nil if visited.include?('DeltaTarget')
        visited = visited + ['DeltaTarget']
        {
          delta_tables: PathList.default(visited),
          connection_name: 'connection_name',
          write_manifest: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeltaTarget.new
        data = {}
        data['DeltaTables'] = PathList.stub(stub[:delta_tables]) unless stub[:delta_tables].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['WriteManifest'] = stub[:write_manifest] unless stub[:write_manifest].nil?
        data
      end
    end

    # List Stubber for PathList
    class PathList
      def self.default(visited=[])
        return nil if visited.include?('PathList')
        visited = visited + ['PathList']
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

    # List Stubber for CatalogTargetList
    class CatalogTargetList
      def self.default(visited=[])
        return nil if visited.include?('CatalogTargetList')
        visited = visited + ['CatalogTargetList']
        [
          CatalogTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CatalogTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CatalogTarget
    class CatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('CatalogTarget')
        visited = visited + ['CatalogTarget']
        {
          database_name: 'database_name',
          tables: CatalogTablesList.default(visited),
          connection_name: 'connection_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogTarget.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Tables'] = CatalogTablesList.stub(stub[:tables]) unless stub[:tables].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data
      end
    end

    # List Stubber for CatalogTablesList
    class CatalogTablesList
      def self.default(visited=[])
        return nil if visited.include?('CatalogTablesList')
        visited = visited + ['CatalogTablesList']
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

    # List Stubber for DynamoDBTargetList
    class DynamoDBTargetList
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBTargetList')
        visited = visited + ['DynamoDBTargetList']
        [
          DynamoDBTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DynamoDBTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DynamoDBTarget
    class DynamoDBTarget
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBTarget')
        visited = visited + ['DynamoDBTarget']
        {
          path: 'path',
          scan_all: false,
          scan_rate: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDBTarget.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['scanAll'] = stub[:scan_all] unless stub[:scan_all].nil?
        data['scanRate'] = Hearth::NumberHelper.serialize(stub[:scan_rate])
        data
      end
    end

    # List Stubber for MongoDBTargetList
    class MongoDBTargetList
      def self.default(visited=[])
        return nil if visited.include?('MongoDBTargetList')
        visited = visited + ['MongoDBTargetList']
        [
          MongoDBTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MongoDBTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MongoDBTarget
    class MongoDBTarget
      def self.default(visited=[])
        return nil if visited.include?('MongoDBTarget')
        visited = visited + ['MongoDBTarget']
        {
          connection_name: 'connection_name',
          path: 'path',
          scan_all: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::MongoDBTarget.new
        data = {}
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['ScanAll'] = stub[:scan_all] unless stub[:scan_all].nil?
        data
      end
    end

    # List Stubber for JdbcTargetList
    class JdbcTargetList
      def self.default(visited=[])
        return nil if visited.include?('JdbcTargetList')
        visited = visited + ['JdbcTargetList']
        [
          JdbcTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JdbcTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JdbcTarget
    class JdbcTarget
      def self.default(visited=[])
        return nil if visited.include?('JdbcTarget')
        visited = visited + ['JdbcTarget']
        {
          connection_name: 'connection_name',
          path: 'path',
          exclusions: PathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JdbcTarget.new
        data = {}
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Exclusions'] = PathList.stub(stub[:exclusions]) unless stub[:exclusions].nil?
        data
      end
    end

    # List Stubber for S3TargetList
    class S3TargetList
      def self.default(visited=[])
        return nil if visited.include?('S3TargetList')
        visited = visited + ['S3TargetList']
        [
          S3Target.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << S3Target.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3Target
    class S3Target
      def self.default(visited=[])
        return nil if visited.include?('S3Target')
        visited = visited + ['S3Target']
        {
          path: 'path',
          exclusions: PathList.default(visited),
          connection_name: 'connection_name',
          sample_size: 1,
          event_queue_arn: 'event_queue_arn',
          dlq_event_queue_arn: 'dlq_event_queue_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Target.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Exclusions'] = PathList.stub(stub[:exclusions]) unless stub[:exclusions].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['SampleSize'] = stub[:sample_size] unless stub[:sample_size].nil?
        data['EventQueueArn'] = stub[:event_queue_arn] unless stub[:event_queue_arn].nil?
        data['DlqEventQueueArn'] = stub[:dlq_event_queue_arn] unless stub[:dlq_event_queue_arn].nil?
        data
      end
    end

    # Operation Stubber for BatchGetCustomEntityTypes
    class BatchGetCustomEntityTypes
      def self.default(visited=[])
        {
          custom_entity_types: CustomEntityTypes.default(visited),
          custom_entity_types_not_found: CustomEntityTypeNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomEntityTypes'] = CustomEntityTypes.stub(stub[:custom_entity_types]) unless stub[:custom_entity_types].nil?
        data['CustomEntityTypesNotFound'] = CustomEntityTypeNames.stub(stub[:custom_entity_types_not_found]) unless stub[:custom_entity_types_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomEntityTypeNames
    class CustomEntityTypeNames
      def self.default(visited=[])
        return nil if visited.include?('CustomEntityTypeNames')
        visited = visited + ['CustomEntityTypeNames']
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

    # List Stubber for CustomEntityTypes
    class CustomEntityTypes
      def self.default(visited=[])
        return nil if visited.include?('CustomEntityTypes')
        visited = visited + ['CustomEntityTypes']
        [
          CustomEntityType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomEntityType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomEntityType
    class CustomEntityType
      def self.default(visited=[])
        return nil if visited.include?('CustomEntityType')
        visited = visited + ['CustomEntityType']
        {
          name: 'name',
          regex_string: 'regex_string',
          context_words: ContextWords.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomEntityType.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegexString'] = stub[:regex_string] unless stub[:regex_string].nil?
        data['ContextWords'] = ContextWords.stub(stub[:context_words]) unless stub[:context_words].nil?
        data
      end
    end

    # List Stubber for ContextWords
    class ContextWords
      def self.default(visited=[])
        return nil if visited.include?('ContextWords')
        visited = visited + ['ContextWords']
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

    # Operation Stubber for BatchGetDevEndpoints
    class BatchGetDevEndpoints
      def self.default(visited=[])
        {
          dev_endpoints: DevEndpointList.default(visited),
          dev_endpoints_not_found: DevEndpointNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DevEndpoints'] = DevEndpointList.stub(stub[:dev_endpoints]) unless stub[:dev_endpoints].nil?
        data['DevEndpointsNotFound'] = DevEndpointNames.stub(stub[:dev_endpoints_not_found]) unless stub[:dev_endpoints_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DevEndpointNames
    class DevEndpointNames
      def self.default(visited=[])
        return nil if visited.include?('DevEndpointNames')
        visited = visited + ['DevEndpointNames']
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

    # List Stubber for DevEndpointList
    class DevEndpointList
      def self.default(visited=[])
        return nil if visited.include?('DevEndpointList')
        visited = visited + ['DevEndpointList']
        [
          DevEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DevEndpoint
    class DevEndpoint
      def self.default(visited=[])
        return nil if visited.include?('DevEndpoint')
        visited = visited + ['DevEndpoint']
        {
          endpoint_name: 'endpoint_name',
          role_arn: 'role_arn',
          security_group_ids: StringList.default(visited),
          subnet_id: 'subnet_id',
          yarn_endpoint_address: 'yarn_endpoint_address',
          private_address: 'private_address',
          zeppelin_remote_spark_interpreter_port: 1,
          public_address: 'public_address',
          status: 'status',
          worker_type: 'worker_type',
          glue_version: 'glue_version',
          number_of_workers: 1,
          number_of_nodes: 1,
          availability_zone: 'availability_zone',
          vpc_id: 'vpc_id',
          extra_python_libs_s3_path: 'extra_python_libs_s3_path',
          extra_jars_s3_path: 'extra_jars_s3_path',
          failure_reason: 'failure_reason',
          last_update_status: 'last_update_status',
          created_timestamp: Time.now,
          last_modified_timestamp: Time.now,
          public_key: 'public_key',
          public_keys: PublicKeysList.default(visited),
          security_configuration: 'security_configuration',
          arguments: MapValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DevEndpoint.new
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['SecurityGroupIds'] = StringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['YarnEndpointAddress'] = stub[:yarn_endpoint_address] unless stub[:yarn_endpoint_address].nil?
        data['PrivateAddress'] = stub[:private_address] unless stub[:private_address].nil?
        data['ZeppelinRemoteSparkInterpreterPort'] = stub[:zeppelin_remote_spark_interpreter_port] unless stub[:zeppelin_remote_spark_interpreter_port].nil?
        data['PublicAddress'] = stub[:public_address] unless stub[:public_address].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['WorkerType'] = stub[:worker_type] unless stub[:worker_type].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data['NumberOfWorkers'] = stub[:number_of_workers] unless stub[:number_of_workers].nil?
        data['NumberOfNodes'] = stub[:number_of_nodes] unless stub[:number_of_nodes].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ExtraPythonLibsS3Path'] = stub[:extra_python_libs_s3_path] unless stub[:extra_python_libs_s3_path].nil?
        data['ExtraJarsS3Path'] = stub[:extra_jars_s3_path] unless stub[:extra_jars_s3_path].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_timestamp]).to_i unless stub[:last_modified_timestamp].nil?
        data['PublicKey'] = stub[:public_key] unless stub[:public_key].nil?
        data['PublicKeys'] = PublicKeysList.stub(stub[:public_keys]) unless stub[:public_keys].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['Arguments'] = MapValue.stub(stub[:arguments]) unless stub[:arguments].nil?
        data
      end
    end

    # Map Stubber for MapValue
    class MapValue
      def self.default(visited=[])
        return nil if visited.include?('MapValue')
        visited = visited + ['MapValue']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for PublicKeysList
    class PublicKeysList
      def self.default(visited=[])
        return nil if visited.include?('PublicKeysList')
        visited = visited + ['PublicKeysList']
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

    # Operation Stubber for BatchGetJobs
    class BatchGetJobs
      def self.default(visited=[])
        {
          jobs: JobList.default(visited),
          jobs_not_found: JobNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Jobs'] = JobList.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['JobsNotFound'] = JobNameList.stub(stub[:jobs_not_found]) unless stub[:jobs_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for JobNameList
    class JobNameList
      def self.default(visited=[])
        return nil if visited.include?('JobNameList')
        visited = visited + ['JobNameList']
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

    # List Stubber for JobList
    class JobList
      def self.default(visited=[])
        return nil if visited.include?('JobList')
        visited = visited + ['JobList']
        [
          Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          name: 'name',
          description: 'description',
          log_uri: 'log_uri',
          role: 'role',
          created_on: Time.now,
          last_modified_on: Time.now,
          execution_property: ExecutionProperty.default(visited),
          command: JobCommand.default(visited),
          default_arguments: GenericMap.default(visited),
          non_overridable_arguments: GenericMap.default(visited),
          connections: ConnectionsList.default(visited),
          max_retries: 1,
          allocated_capacity: 1,
          timeout: 1,
          max_capacity: 1.0,
          worker_type: 'worker_type',
          number_of_workers: 1,
          security_configuration: 'security_configuration',
          notification_property: NotificationProperty.default(visited),
          glue_version: 'glue_version',
          code_gen_configuration_nodes: CodeGenConfigurationNodes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['CreatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['ExecutionProperty'] = ExecutionProperty.stub(stub[:execution_property]) unless stub[:execution_property].nil?
        data['Command'] = JobCommand.stub(stub[:command]) unless stub[:command].nil?
        data['DefaultArguments'] = GenericMap.stub(stub[:default_arguments]) unless stub[:default_arguments].nil?
        data['NonOverridableArguments'] = GenericMap.stub(stub[:non_overridable_arguments]) unless stub[:non_overridable_arguments].nil?
        data['Connections'] = ConnectionsList.stub(stub[:connections]) unless stub[:connections].nil?
        data['MaxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['AllocatedCapacity'] = stub[:allocated_capacity] unless stub[:allocated_capacity].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(stub[:max_capacity])
        data['WorkerType'] = stub[:worker_type] unless stub[:worker_type].nil?
        data['NumberOfWorkers'] = stub[:number_of_workers] unless stub[:number_of_workers].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['NotificationProperty'] = NotificationProperty.stub(stub[:notification_property]) unless stub[:notification_property].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data['CodeGenConfigurationNodes'] = CodeGenConfigurationNodes.stub(stub[:code_gen_configuration_nodes]) unless stub[:code_gen_configuration_nodes].nil?
        data
      end
    end

    # Map Stubber for CodeGenConfigurationNodes
    class CodeGenConfigurationNodes
      def self.default(visited=[])
        return nil if visited.include?('CodeGenConfigurationNodes')
        visited = visited + ['CodeGenConfigurationNodes']
        {
          test_key: CodeGenConfigurationNode.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = CodeGenConfigurationNode.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeGenConfigurationNode
    class CodeGenConfigurationNode
      def self.default(visited=[])
        return nil if visited.include?('CodeGenConfigurationNode')
        visited = visited + ['CodeGenConfigurationNode']
        {
          athena_connector_source: AthenaConnectorSource.default(visited),
          jdbc_connector_source: JDBCConnectorSource.default(visited),
          spark_connector_source: SparkConnectorSource.default(visited),
          catalog_source: CatalogSource.default(visited),
          redshift_source: RedshiftSource.default(visited),
          s3_catalog_source: S3CatalogSource.default(visited),
          s3_csv_source: S3CsvSource.default(visited),
          s3_json_source: S3JsonSource.default(visited),
          s3_parquet_source: S3ParquetSource.default(visited),
          relational_catalog_source: RelationalCatalogSource.default(visited),
          dynamo_db_catalog_source: DynamoDBCatalogSource.default(visited),
          jdbc_connector_target: JDBCConnectorTarget.default(visited),
          spark_connector_target: SparkConnectorTarget.default(visited),
          catalog_target: BasicCatalogTarget.default(visited),
          redshift_target: RedshiftTarget.default(visited),
          s3_catalog_target: S3CatalogTarget.default(visited),
          s3_glue_parquet_target: S3GlueParquetTarget.default(visited),
          s3_direct_target: S3DirectTarget.default(visited),
          apply_mapping: ApplyMapping.default(visited),
          select_fields: SelectFields.default(visited),
          drop_fields: DropFields.default(visited),
          rename_field: RenameField.default(visited),
          spigot: Spigot.default(visited),
          join: Join.default(visited),
          split_fields: SplitFields.default(visited),
          select_from_collection: SelectFromCollection.default(visited),
          fill_missing_values: FillMissingValues.default(visited),
          filter: Filter.default(visited),
          custom_code: CustomCode.default(visited),
          spark_sql: SparkSQL.default(visited),
          direct_kinesis_source: DirectKinesisSource.default(visited),
          direct_kafka_source: DirectKafkaSource.default(visited),
          catalog_kinesis_source: CatalogKinesisSource.default(visited),
          catalog_kafka_source: CatalogKafkaSource.default(visited),
          drop_null_fields: DropNullFields.default(visited),
          merge: Merge.default(visited),
          union: Union.default(visited),
          pii_detection: PIIDetection.default(visited),
          aggregate: Aggregate.default(visited),
          drop_duplicates: DropDuplicates.default(visited),
          governed_catalog_target: GovernedCatalogTarget.default(visited),
          governed_catalog_source: GovernedCatalogSource.default(visited),
          microsoft_sql_server_catalog_source: MicrosoftSQLServerCatalogSource.default(visited),
          my_sql_catalog_source: MySQLCatalogSource.default(visited),
          oracle_sql_catalog_source: OracleSQLCatalogSource.default(visited),
          postgre_sql_catalog_source: PostgreSQLCatalogSource.default(visited),
          microsoft_sql_server_catalog_target: MicrosoftSQLServerCatalogTarget.default(visited),
          my_sql_catalog_target: MySQLCatalogTarget.default(visited),
          oracle_sql_catalog_target: OracleSQLCatalogTarget.default(visited),
          postgre_sql_catalog_target: PostgreSQLCatalogTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeGenConfigurationNode.new
        data = {}
        data['AthenaConnectorSource'] = AthenaConnectorSource.stub(stub[:athena_connector_source]) unless stub[:athena_connector_source].nil?
        data['JDBCConnectorSource'] = JDBCConnectorSource.stub(stub[:jdbc_connector_source]) unless stub[:jdbc_connector_source].nil?
        data['SparkConnectorSource'] = SparkConnectorSource.stub(stub[:spark_connector_source]) unless stub[:spark_connector_source].nil?
        data['CatalogSource'] = CatalogSource.stub(stub[:catalog_source]) unless stub[:catalog_source].nil?
        data['RedshiftSource'] = RedshiftSource.stub(stub[:redshift_source]) unless stub[:redshift_source].nil?
        data['S3CatalogSource'] = S3CatalogSource.stub(stub[:s3_catalog_source]) unless stub[:s3_catalog_source].nil?
        data['S3CsvSource'] = S3CsvSource.stub(stub[:s3_csv_source]) unless stub[:s3_csv_source].nil?
        data['S3JsonSource'] = S3JsonSource.stub(stub[:s3_json_source]) unless stub[:s3_json_source].nil?
        data['S3ParquetSource'] = S3ParquetSource.stub(stub[:s3_parquet_source]) unless stub[:s3_parquet_source].nil?
        data['RelationalCatalogSource'] = RelationalCatalogSource.stub(stub[:relational_catalog_source]) unless stub[:relational_catalog_source].nil?
        data['DynamoDBCatalogSource'] = DynamoDBCatalogSource.stub(stub[:dynamo_db_catalog_source]) unless stub[:dynamo_db_catalog_source].nil?
        data['JDBCConnectorTarget'] = JDBCConnectorTarget.stub(stub[:jdbc_connector_target]) unless stub[:jdbc_connector_target].nil?
        data['SparkConnectorTarget'] = SparkConnectorTarget.stub(stub[:spark_connector_target]) unless stub[:spark_connector_target].nil?
        data['CatalogTarget'] = BasicCatalogTarget.stub(stub[:catalog_target]) unless stub[:catalog_target].nil?
        data['RedshiftTarget'] = RedshiftTarget.stub(stub[:redshift_target]) unless stub[:redshift_target].nil?
        data['S3CatalogTarget'] = S3CatalogTarget.stub(stub[:s3_catalog_target]) unless stub[:s3_catalog_target].nil?
        data['S3GlueParquetTarget'] = S3GlueParquetTarget.stub(stub[:s3_glue_parquet_target]) unless stub[:s3_glue_parquet_target].nil?
        data['S3DirectTarget'] = S3DirectTarget.stub(stub[:s3_direct_target]) unless stub[:s3_direct_target].nil?
        data['ApplyMapping'] = ApplyMapping.stub(stub[:apply_mapping]) unless stub[:apply_mapping].nil?
        data['SelectFields'] = SelectFields.stub(stub[:select_fields]) unless stub[:select_fields].nil?
        data['DropFields'] = DropFields.stub(stub[:drop_fields]) unless stub[:drop_fields].nil?
        data['RenameField'] = RenameField.stub(stub[:rename_field]) unless stub[:rename_field].nil?
        data['Spigot'] = Spigot.stub(stub[:spigot]) unless stub[:spigot].nil?
        data['Join'] = Join.stub(stub[:join]) unless stub[:join].nil?
        data['SplitFields'] = SplitFields.stub(stub[:split_fields]) unless stub[:split_fields].nil?
        data['SelectFromCollection'] = SelectFromCollection.stub(stub[:select_from_collection]) unless stub[:select_from_collection].nil?
        data['FillMissingValues'] = FillMissingValues.stub(stub[:fill_missing_values]) unless stub[:fill_missing_values].nil?
        data['Filter'] = Filter.stub(stub[:filter]) unless stub[:filter].nil?
        data['CustomCode'] = CustomCode.stub(stub[:custom_code]) unless stub[:custom_code].nil?
        data['SparkSQL'] = SparkSQL.stub(stub[:spark_sql]) unless stub[:spark_sql].nil?
        data['DirectKinesisSource'] = DirectKinesisSource.stub(stub[:direct_kinesis_source]) unless stub[:direct_kinesis_source].nil?
        data['DirectKafkaSource'] = DirectKafkaSource.stub(stub[:direct_kafka_source]) unless stub[:direct_kafka_source].nil?
        data['CatalogKinesisSource'] = CatalogKinesisSource.stub(stub[:catalog_kinesis_source]) unless stub[:catalog_kinesis_source].nil?
        data['CatalogKafkaSource'] = CatalogKafkaSource.stub(stub[:catalog_kafka_source]) unless stub[:catalog_kafka_source].nil?
        data['DropNullFields'] = DropNullFields.stub(stub[:drop_null_fields]) unless stub[:drop_null_fields].nil?
        data['Merge'] = Merge.stub(stub[:merge]) unless stub[:merge].nil?
        data['Union'] = Union.stub(stub[:union]) unless stub[:union].nil?
        data['PIIDetection'] = PIIDetection.stub(stub[:pii_detection]) unless stub[:pii_detection].nil?
        data['Aggregate'] = Aggregate.stub(stub[:aggregate]) unless stub[:aggregate].nil?
        data['DropDuplicates'] = DropDuplicates.stub(stub[:drop_duplicates]) unless stub[:drop_duplicates].nil?
        data['GovernedCatalogTarget'] = GovernedCatalogTarget.stub(stub[:governed_catalog_target]) unless stub[:governed_catalog_target].nil?
        data['GovernedCatalogSource'] = GovernedCatalogSource.stub(stub[:governed_catalog_source]) unless stub[:governed_catalog_source].nil?
        data['MicrosoftSQLServerCatalogSource'] = MicrosoftSQLServerCatalogSource.stub(stub[:microsoft_sql_server_catalog_source]) unless stub[:microsoft_sql_server_catalog_source].nil?
        data['MySQLCatalogSource'] = MySQLCatalogSource.stub(stub[:my_sql_catalog_source]) unless stub[:my_sql_catalog_source].nil?
        data['OracleSQLCatalogSource'] = OracleSQLCatalogSource.stub(stub[:oracle_sql_catalog_source]) unless stub[:oracle_sql_catalog_source].nil?
        data['PostgreSQLCatalogSource'] = PostgreSQLCatalogSource.stub(stub[:postgre_sql_catalog_source]) unless stub[:postgre_sql_catalog_source].nil?
        data['MicrosoftSQLServerCatalogTarget'] = MicrosoftSQLServerCatalogTarget.stub(stub[:microsoft_sql_server_catalog_target]) unless stub[:microsoft_sql_server_catalog_target].nil?
        data['MySQLCatalogTarget'] = MySQLCatalogTarget.stub(stub[:my_sql_catalog_target]) unless stub[:my_sql_catalog_target].nil?
        data['OracleSQLCatalogTarget'] = OracleSQLCatalogTarget.stub(stub[:oracle_sql_catalog_target]) unless stub[:oracle_sql_catalog_target].nil?
        data['PostgreSQLCatalogTarget'] = PostgreSQLCatalogTarget.stub(stub[:postgre_sql_catalog_target]) unless stub[:postgre_sql_catalog_target].nil?
        data
      end
    end

    # Structure Stubber for PostgreSQLCatalogTarget
    class PostgreSQLCatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('PostgreSQLCatalogTarget')
        visited = visited + ['PostgreSQLCatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::PostgreSQLCatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # List Stubber for OneInput
    class OneInput
      def self.default(visited=[])
        return nil if visited.include?('OneInput')
        visited = visited + ['OneInput']
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

    # Structure Stubber for OracleSQLCatalogTarget
    class OracleSQLCatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('OracleSQLCatalogTarget')
        visited = visited + ['OracleSQLCatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::OracleSQLCatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for MySQLCatalogTarget
    class MySQLCatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('MySQLCatalogTarget')
        visited = visited + ['MySQLCatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::MySQLCatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for MicrosoftSQLServerCatalogTarget
    class MicrosoftSQLServerCatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('MicrosoftSQLServerCatalogTarget')
        visited = visited + ['MicrosoftSQLServerCatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::MicrosoftSQLServerCatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for PostgreSQLCatalogSource
    class PostgreSQLCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('PostgreSQLCatalogSource')
        visited = visited + ['PostgreSQLCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::PostgreSQLCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for OracleSQLCatalogSource
    class OracleSQLCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('OracleSQLCatalogSource')
        visited = visited + ['OracleSQLCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::OracleSQLCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for MySQLCatalogSource
    class MySQLCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('MySQLCatalogSource')
        visited = visited + ['MySQLCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::MySQLCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for MicrosoftSQLServerCatalogSource
    class MicrosoftSQLServerCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('MicrosoftSQLServerCatalogSource')
        visited = visited + ['MicrosoftSQLServerCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::MicrosoftSQLServerCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for GovernedCatalogSource
    class GovernedCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('GovernedCatalogSource')
        visited = visited + ['GovernedCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
          partition_predicate: 'partition_predicate',
          additional_options: S3SourceAdditionalOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GovernedCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['PartitionPredicate'] = stub[:partition_predicate] unless stub[:partition_predicate].nil?
        data['AdditionalOptions'] = S3SourceAdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data
      end
    end

    # Structure Stubber for S3SourceAdditionalOptions
    class S3SourceAdditionalOptions
      def self.default(visited=[])
        return nil if visited.include?('S3SourceAdditionalOptions')
        visited = visited + ['S3SourceAdditionalOptions']
        {
          bounded_size: 1,
          bounded_files: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::S3SourceAdditionalOptions.new
        data = {}
        data['BoundedSize'] = stub[:bounded_size] unless stub[:bounded_size].nil?
        data['BoundedFiles'] = stub[:bounded_files] unless stub[:bounded_files].nil?
        data
      end
    end

    # Structure Stubber for GovernedCatalogTarget
    class GovernedCatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('GovernedCatalogTarget')
        visited = visited + ['GovernedCatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          partition_keys: GlueStudioPathList.default(visited),
          table: 'table',
          database: 'database',
          schema_change_policy: CatalogSchemaChangePolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GovernedCatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['PartitionKeys'] = GlueStudioPathList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['SchemaChangePolicy'] = CatalogSchemaChangePolicy.stub(stub[:schema_change_policy]) unless stub[:schema_change_policy].nil?
        data
      end
    end

    # Structure Stubber for CatalogSchemaChangePolicy
    class CatalogSchemaChangePolicy
      def self.default(visited=[])
        return nil if visited.include?('CatalogSchemaChangePolicy')
        visited = visited + ['CatalogSchemaChangePolicy']
        {
          enable_update_catalog: false,
          update_behavior: 'update_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogSchemaChangePolicy.new
        data = {}
        data['EnableUpdateCatalog'] = stub[:enable_update_catalog] unless stub[:enable_update_catalog].nil?
        data['UpdateBehavior'] = stub[:update_behavior] unless stub[:update_behavior].nil?
        data
      end
    end

    # List Stubber for GlueStudioPathList
    class GlueStudioPathList
      def self.default(visited=[])
        return nil if visited.include?('GlueStudioPathList')
        visited = visited + ['GlueStudioPathList']
        [
          EnclosedInStringProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnclosedInStringProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for EnclosedInStringProperties
    class EnclosedInStringProperties
      def self.default(visited=[])
        return nil if visited.include?('EnclosedInStringProperties')
        visited = visited + ['EnclosedInStringProperties']
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

    # Structure Stubber for DropDuplicates
    class DropDuplicates
      def self.default(visited=[])
        return nil if visited.include?('DropDuplicates')
        visited = visited + ['DropDuplicates']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          columns: LimitedPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DropDuplicates.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Columns'] = LimitedPathList.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for LimitedPathList
    class LimitedPathList
      def self.default(visited=[])
        return nil if visited.include?('LimitedPathList')
        visited = visited + ['LimitedPathList']
        [
          LimitedStringList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LimitedStringList.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for LimitedStringList
    class LimitedStringList
      def self.default(visited=[])
        return nil if visited.include?('LimitedStringList')
        visited = visited + ['LimitedStringList']
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

    # Structure Stubber for Aggregate
    class Aggregate
      def self.default(visited=[])
        return nil if visited.include?('Aggregate')
        visited = visited + ['Aggregate']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          groups: GlueStudioPathList.default(visited),
          aggs: AggregateOperations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Aggregate.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Groups'] = GlueStudioPathList.stub(stub[:groups]) unless stub[:groups].nil?
        data['Aggs'] = AggregateOperations.stub(stub[:aggs]) unless stub[:aggs].nil?
        data
      end
    end

    # List Stubber for AggregateOperations
    class AggregateOperations
      def self.default(visited=[])
        return nil if visited.include?('AggregateOperations')
        visited = visited + ['AggregateOperations']
        [
          AggregateOperation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateOperation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateOperation
    class AggregateOperation
      def self.default(visited=[])
        return nil if visited.include?('AggregateOperation')
        visited = visited + ['AggregateOperation']
        {
          column: EnclosedInStringProperties.default(visited),
          agg_func: 'agg_func',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateOperation.new
        data = {}
        data['Column'] = EnclosedInStringProperties.stub(stub[:column]) unless stub[:column].nil?
        data['AggFunc'] = stub[:agg_func] unless stub[:agg_func].nil?
        data
      end
    end

    # Structure Stubber for PIIDetection
    class PIIDetection
      def self.default(visited=[])
        return nil if visited.include?('PIIDetection')
        visited = visited + ['PIIDetection']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          pii_type: 'pii_type',
          entity_types_to_detect: EnclosedInStringProperties.default(visited),
          output_column_name: 'output_column_name',
          sample_fraction: 1.0,
          threshold_fraction: 1.0,
          mask_value: 'mask_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::PIIDetection.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['PiiType'] = stub[:pii_type] unless stub[:pii_type].nil?
        data['EntityTypesToDetect'] = EnclosedInStringProperties.stub(stub[:entity_types_to_detect]) unless stub[:entity_types_to_detect].nil?
        data['OutputColumnName'] = stub[:output_column_name] unless stub[:output_column_name].nil?
        data['SampleFraction'] = Hearth::NumberHelper.serialize(stub[:sample_fraction])
        data['ThresholdFraction'] = Hearth::NumberHelper.serialize(stub[:threshold_fraction])
        data['MaskValue'] = stub[:mask_value] unless stub[:mask_value].nil?
        data
      end
    end

    # Structure Stubber for Union
    class Union
      def self.default(visited=[])
        return nil if visited.include?('Union')
        visited = visited + ['Union']
        {
          name: 'name',
          inputs: TwoInputs.default(visited),
          union_type: 'union_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Union.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = TwoInputs.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['UnionType'] = stub[:union_type] unless stub[:union_type].nil?
        data
      end
    end

    # List Stubber for TwoInputs
    class TwoInputs
      def self.default(visited=[])
        return nil if visited.include?('TwoInputs')
        visited = visited + ['TwoInputs']
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

    # Structure Stubber for Merge
    class Merge
      def self.default(visited=[])
        return nil if visited.include?('Merge')
        visited = visited + ['Merge']
        {
          name: 'name',
          inputs: TwoInputs.default(visited),
          source: 'source',
          primary_keys: GlueStudioPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Merge.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = TwoInputs.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['PrimaryKeys'] = GlueStudioPathList.stub(stub[:primary_keys]) unless stub[:primary_keys].nil?
        data
      end
    end

    # Structure Stubber for DropNullFields
    class DropNullFields
      def self.default(visited=[])
        return nil if visited.include?('DropNullFields')
        visited = visited + ['DropNullFields']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          null_check_box_list: NullCheckBoxList.default(visited),
          null_text_list: NullValueFields.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DropNullFields.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['NullCheckBoxList'] = NullCheckBoxList.stub(stub[:null_check_box_list]) unless stub[:null_check_box_list].nil?
        data['NullTextList'] = NullValueFields.stub(stub[:null_text_list]) unless stub[:null_text_list].nil?
        data
      end
    end

    # List Stubber for NullValueFields
    class NullValueFields
      def self.default(visited=[])
        return nil if visited.include?('NullValueFields')
        visited = visited + ['NullValueFields']
        [
          NullValueField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NullValueField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NullValueField
    class NullValueField
      def self.default(visited=[])
        return nil if visited.include?('NullValueField')
        visited = visited + ['NullValueField']
        {
          value: 'value',
          datatype: Datatype.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NullValueField.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Datatype'] = Datatype.stub(stub[:datatype]) unless stub[:datatype].nil?
        data
      end
    end

    # Structure Stubber for Datatype
    class Datatype
      def self.default(visited=[])
        return nil if visited.include?('Datatype')
        visited = visited + ['Datatype']
        {
          id: 'id',
          label: 'label',
        }
      end

      def self.stub(stub)
        stub ||= Types::Datatype.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Label'] = stub[:label] unless stub[:label].nil?
        data
      end
    end

    # Structure Stubber for NullCheckBoxList
    class NullCheckBoxList
      def self.default(visited=[])
        return nil if visited.include?('NullCheckBoxList')
        visited = visited + ['NullCheckBoxList']
        {
          is_empty: false,
          is_null_string: false,
          is_neg_one: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NullCheckBoxList.new
        data = {}
        data['IsEmpty'] = stub[:is_empty] unless stub[:is_empty].nil?
        data['IsNullString'] = stub[:is_null_string] unless stub[:is_null_string].nil?
        data['IsNegOne'] = stub[:is_neg_one] unless stub[:is_neg_one].nil?
        data
      end
    end

    # Structure Stubber for CatalogKafkaSource
    class CatalogKafkaSource
      def self.default(visited=[])
        return nil if visited.include?('CatalogKafkaSource')
        visited = visited + ['CatalogKafkaSource']
        {
          name: 'name',
          window_size: 1,
          detect_schema: false,
          table: 'table',
          database: 'database',
          streaming_options: KafkaStreamingSourceOptions.default(visited),
          data_preview_options: StreamingDataPreviewOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogKafkaSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['WindowSize'] = stub[:window_size] unless stub[:window_size].nil?
        data['DetectSchema'] = stub[:detect_schema] unless stub[:detect_schema].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['StreamingOptions'] = KafkaStreamingSourceOptions.stub(stub[:streaming_options]) unless stub[:streaming_options].nil?
        data['DataPreviewOptions'] = StreamingDataPreviewOptions.stub(stub[:data_preview_options]) unless stub[:data_preview_options].nil?
        data
      end
    end

    # Structure Stubber for StreamingDataPreviewOptions
    class StreamingDataPreviewOptions
      def self.default(visited=[])
        return nil if visited.include?('StreamingDataPreviewOptions')
        visited = visited + ['StreamingDataPreviewOptions']
        {
          polling_time: 1,
          record_polling_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingDataPreviewOptions.new
        data = {}
        data['PollingTime'] = stub[:polling_time] unless stub[:polling_time].nil?
        data['RecordPollingLimit'] = stub[:record_polling_limit] unless stub[:record_polling_limit].nil?
        data
      end
    end

    # Structure Stubber for KafkaStreamingSourceOptions
    class KafkaStreamingSourceOptions
      def self.default(visited=[])
        return nil if visited.include?('KafkaStreamingSourceOptions')
        visited = visited + ['KafkaStreamingSourceOptions']
        {
          bootstrap_servers: 'bootstrap_servers',
          security_protocol: 'security_protocol',
          connection_name: 'connection_name',
          topic_name: 'topic_name',
          assign: 'assign',
          subscribe_pattern: 'subscribe_pattern',
          classification: 'classification',
          delimiter: 'delimiter',
          starting_offsets: 'starting_offsets',
          ending_offsets: 'ending_offsets',
          poll_timeout_ms: 1,
          num_retries: 1,
          retry_interval_ms: 1,
          max_offsets_per_trigger: 1,
          min_partitions: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaStreamingSourceOptions.new
        data = {}
        data['BootstrapServers'] = stub[:bootstrap_servers] unless stub[:bootstrap_servers].nil?
        data['SecurityProtocol'] = stub[:security_protocol] unless stub[:security_protocol].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['TopicName'] = stub[:topic_name] unless stub[:topic_name].nil?
        data['Assign'] = stub[:assign] unless stub[:assign].nil?
        data['SubscribePattern'] = stub[:subscribe_pattern] unless stub[:subscribe_pattern].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data['StartingOffsets'] = stub[:starting_offsets] unless stub[:starting_offsets].nil?
        data['EndingOffsets'] = stub[:ending_offsets] unless stub[:ending_offsets].nil?
        data['PollTimeoutMs'] = stub[:poll_timeout_ms] unless stub[:poll_timeout_ms].nil?
        data['NumRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['RetryIntervalMs'] = stub[:retry_interval_ms] unless stub[:retry_interval_ms].nil?
        data['MaxOffsetsPerTrigger'] = stub[:max_offsets_per_trigger] unless stub[:max_offsets_per_trigger].nil?
        data['MinPartitions'] = stub[:min_partitions] unless stub[:min_partitions].nil?
        data
      end
    end

    # Structure Stubber for CatalogKinesisSource
    class CatalogKinesisSource
      def self.default(visited=[])
        return nil if visited.include?('CatalogKinesisSource')
        visited = visited + ['CatalogKinesisSource']
        {
          name: 'name',
          window_size: 1,
          detect_schema: false,
          table: 'table',
          database: 'database',
          streaming_options: KinesisStreamingSourceOptions.default(visited),
          data_preview_options: StreamingDataPreviewOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogKinesisSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['WindowSize'] = stub[:window_size] unless stub[:window_size].nil?
        data['DetectSchema'] = stub[:detect_schema] unless stub[:detect_schema].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['StreamingOptions'] = KinesisStreamingSourceOptions.stub(stub[:streaming_options]) unless stub[:streaming_options].nil?
        data['DataPreviewOptions'] = StreamingDataPreviewOptions.stub(stub[:data_preview_options]) unless stub[:data_preview_options].nil?
        data
      end
    end

    # Structure Stubber for KinesisStreamingSourceOptions
    class KinesisStreamingSourceOptions
      def self.default(visited=[])
        return nil if visited.include?('KinesisStreamingSourceOptions')
        visited = visited + ['KinesisStreamingSourceOptions']
        {
          endpoint_url: 'endpoint_url',
          stream_name: 'stream_name',
          classification: 'classification',
          delimiter: 'delimiter',
          starting_position: 'starting_position',
          max_fetch_time_in_ms: 1,
          max_fetch_records_per_shard: 1,
          max_record_per_read: 1,
          add_idle_time_between_reads: false,
          idle_time_between_reads_in_ms: 1,
          describe_shard_interval: 1,
          num_retries: 1,
          retry_interval_ms: 1,
          max_retry_interval_ms: 1,
          avoid_empty_batches: false,
          stream_arn: 'stream_arn',
          role_arn: 'role_arn',
          role_session_name: 'role_session_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisStreamingSourceOptions.new
        data = {}
        data['EndpointUrl'] = stub[:endpoint_url] unless stub[:endpoint_url].nil?
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data['StartingPosition'] = stub[:starting_position] unless stub[:starting_position].nil?
        data['MaxFetchTimeInMs'] = stub[:max_fetch_time_in_ms] unless stub[:max_fetch_time_in_ms].nil?
        data['MaxFetchRecordsPerShard'] = stub[:max_fetch_records_per_shard] unless stub[:max_fetch_records_per_shard].nil?
        data['MaxRecordPerRead'] = stub[:max_record_per_read] unless stub[:max_record_per_read].nil?
        data['AddIdleTimeBetweenReads'] = stub[:add_idle_time_between_reads] unless stub[:add_idle_time_between_reads].nil?
        data['IdleTimeBetweenReadsInMs'] = stub[:idle_time_between_reads_in_ms] unless stub[:idle_time_between_reads_in_ms].nil?
        data['DescribeShardInterval'] = stub[:describe_shard_interval] unless stub[:describe_shard_interval].nil?
        data['NumRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['RetryIntervalMs'] = stub[:retry_interval_ms] unless stub[:retry_interval_ms].nil?
        data['MaxRetryIntervalMs'] = stub[:max_retry_interval_ms] unless stub[:max_retry_interval_ms].nil?
        data['AvoidEmptyBatches'] = stub[:avoid_empty_batches] unless stub[:avoid_empty_batches].nil?
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['RoleSessionName'] = stub[:role_session_name] unless stub[:role_session_name].nil?
        data
      end
    end

    # Structure Stubber for DirectKafkaSource
    class DirectKafkaSource
      def self.default(visited=[])
        return nil if visited.include?('DirectKafkaSource')
        visited = visited + ['DirectKafkaSource']
        {
          name: 'name',
          streaming_options: KafkaStreamingSourceOptions.default(visited),
          window_size: 1,
          detect_schema: false,
          data_preview_options: StreamingDataPreviewOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectKafkaSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['StreamingOptions'] = KafkaStreamingSourceOptions.stub(stub[:streaming_options]) unless stub[:streaming_options].nil?
        data['WindowSize'] = stub[:window_size] unless stub[:window_size].nil?
        data['DetectSchema'] = stub[:detect_schema] unless stub[:detect_schema].nil?
        data['DataPreviewOptions'] = StreamingDataPreviewOptions.stub(stub[:data_preview_options]) unless stub[:data_preview_options].nil?
        data
      end
    end

    # Structure Stubber for DirectKinesisSource
    class DirectKinesisSource
      def self.default(visited=[])
        return nil if visited.include?('DirectKinesisSource')
        visited = visited + ['DirectKinesisSource']
        {
          name: 'name',
          window_size: 1,
          detect_schema: false,
          streaming_options: KinesisStreamingSourceOptions.default(visited),
          data_preview_options: StreamingDataPreviewOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectKinesisSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['WindowSize'] = stub[:window_size] unless stub[:window_size].nil?
        data['DetectSchema'] = stub[:detect_schema] unless stub[:detect_schema].nil?
        data['StreamingOptions'] = KinesisStreamingSourceOptions.stub(stub[:streaming_options]) unless stub[:streaming_options].nil?
        data['DataPreviewOptions'] = StreamingDataPreviewOptions.stub(stub[:data_preview_options]) unless stub[:data_preview_options].nil?
        data
      end
    end

    # Structure Stubber for SparkSQL
    class SparkSQL
      def self.default(visited=[])
        return nil if visited.include?('SparkSQL')
        visited = visited + ['SparkSQL']
        {
          name: 'name',
          inputs: ManyInputs.default(visited),
          sql_query: 'sql_query',
          sql_aliases: SqlAliases.default(visited),
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SparkSQL.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = ManyInputs.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['SqlQuery'] = stub[:sql_query] unless stub[:sql_query].nil?
        data['SqlAliases'] = SqlAliases.stub(stub[:sql_aliases]) unless stub[:sql_aliases].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # List Stubber for GlueSchemas
    class GlueSchemas
      def self.default(visited=[])
        return nil if visited.include?('GlueSchemas')
        visited = visited + ['GlueSchemas']
        [
          GlueSchema.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlueSchema.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GlueSchema
    class GlueSchema
      def self.default(visited=[])
        return nil if visited.include?('GlueSchema')
        visited = visited + ['GlueSchema']
        {
          columns: GlueStudioSchemaColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlueSchema.new
        data = {}
        data['Columns'] = GlueStudioSchemaColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for GlueStudioSchemaColumnList
    class GlueStudioSchemaColumnList
      def self.default(visited=[])
        return nil if visited.include?('GlueStudioSchemaColumnList')
        visited = visited + ['GlueStudioSchemaColumnList']
        [
          GlueStudioSchemaColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlueStudioSchemaColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GlueStudioSchemaColumn
    class GlueStudioSchemaColumn
      def self.default(visited=[])
        return nil if visited.include?('GlueStudioSchemaColumn')
        visited = visited + ['GlueStudioSchemaColumn']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlueStudioSchemaColumn.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for SqlAliases
    class SqlAliases
      def self.default(visited=[])
        return nil if visited.include?('SqlAliases')
        visited = visited + ['SqlAliases']
        [
          SqlAlias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SqlAlias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SqlAlias
    class SqlAlias
      def self.default(visited=[])
        return nil if visited.include?('SqlAlias')
        visited = visited + ['SqlAlias']
        {
          from: 'from',
          alias: 'alias',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlAlias.new
        data = {}
        data['From'] = stub[:from] unless stub[:from].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data
      end
    end

    # List Stubber for ManyInputs
    class ManyInputs
      def self.default(visited=[])
        return nil if visited.include?('ManyInputs')
        visited = visited + ['ManyInputs']
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

    # Structure Stubber for CustomCode
    class CustomCode
      def self.default(visited=[])
        return nil if visited.include?('CustomCode')
        visited = visited + ['CustomCode']
        {
          name: 'name',
          inputs: ManyInputs.default(visited),
          code: 'code',
          class_name: 'class_name',
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomCode.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = ManyInputs.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['ClassName'] = stub[:class_name] unless stub[:class_name].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for Filter
    class Filter
      def self.default(visited=[])
        return nil if visited.include?('Filter')
        visited = visited + ['Filter']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          logical_operator: 'logical_operator',
          filters: FilterExpressions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Filter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['LogicalOperator'] = stub[:logical_operator] unless stub[:logical_operator].nil?
        data['Filters'] = FilterExpressions.stub(stub[:filters]) unless stub[:filters].nil?
        data
      end
    end

    # List Stubber for FilterExpressions
    class FilterExpressions
      def self.default(visited=[])
        return nil if visited.include?('FilterExpressions')
        visited = visited + ['FilterExpressions']
        [
          FilterExpression.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FilterExpression.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FilterExpression
    class FilterExpression
      def self.default(visited=[])
        return nil if visited.include?('FilterExpression')
        visited = visited + ['FilterExpression']
        {
          operation: 'operation',
          negated: false,
          values: FilterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterExpression.new
        data = {}
        data['Operation'] = stub[:operation] unless stub[:operation].nil?
        data['Negated'] = stub[:negated] unless stub[:negated].nil?
        data['Values'] = FilterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for FilterValues
    class FilterValues
      def self.default(visited=[])
        return nil if visited.include?('FilterValues')
        visited = visited + ['FilterValues']
        [
          FilterValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FilterValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FilterValue
    class FilterValue
      def self.default(visited=[])
        return nil if visited.include?('FilterValue')
        visited = visited + ['FilterValue']
        {
          type: 'type',
          value: EnclosedInStringProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterValue.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = EnclosedInStringProperties.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for FillMissingValues
    class FillMissingValues
      def self.default(visited=[])
        return nil if visited.include?('FillMissingValues')
        visited = visited + ['FillMissingValues']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          imputed_path: 'imputed_path',
          filled_path: 'filled_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::FillMissingValues.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['ImputedPath'] = stub[:imputed_path] unless stub[:imputed_path].nil?
        data['FilledPath'] = stub[:filled_path] unless stub[:filled_path].nil?
        data
      end
    end

    # Structure Stubber for SelectFromCollection
    class SelectFromCollection
      def self.default(visited=[])
        return nil if visited.include?('SelectFromCollection')
        visited = visited + ['SelectFromCollection']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectFromCollection.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Index'] = stub[:index] unless stub[:index].nil?
        data
      end
    end

    # Structure Stubber for SplitFields
    class SplitFields
      def self.default(visited=[])
        return nil if visited.include?('SplitFields')
        visited = visited + ['SplitFields']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          paths: GlueStudioPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SplitFields.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Paths'] = GlueStudioPathList.stub(stub[:paths]) unless stub[:paths].nil?
        data
      end
    end

    # Structure Stubber for Join
    class Join
      def self.default(visited=[])
        return nil if visited.include?('Join')
        visited = visited + ['Join']
        {
          name: 'name',
          inputs: TwoInputs.default(visited),
          join_type: 'join_type',
          columns: JoinColumns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Join.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = TwoInputs.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['JoinType'] = stub[:join_type] unless stub[:join_type].nil?
        data['Columns'] = JoinColumns.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for JoinColumns
    class JoinColumns
      def self.default(visited=[])
        return nil if visited.include?('JoinColumns')
        visited = visited + ['JoinColumns']
        [
          JoinColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JoinColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JoinColumn
    class JoinColumn
      def self.default(visited=[])
        return nil if visited.include?('JoinColumn')
        visited = visited + ['JoinColumn']
        {
          from: 'from',
          keys: GlueStudioPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JoinColumn.new
        data = {}
        data['From'] = stub[:from] unless stub[:from].nil?
        data['Keys'] = GlueStudioPathList.stub(stub[:keys]) unless stub[:keys].nil?
        data
      end
    end

    # Structure Stubber for Spigot
    class Spigot
      def self.default(visited=[])
        return nil if visited.include?('Spigot')
        visited = visited + ['Spigot']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          path: 'path',
          topk: 1,
          prob: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Spigot.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Topk'] = stub[:topk] unless stub[:topk].nil?
        data['Prob'] = Hearth::NumberHelper.serialize(stub[:prob])
        data
      end
    end

    # Structure Stubber for RenameField
    class RenameField
      def self.default(visited=[])
        return nil if visited.include?('RenameField')
        visited = visited + ['RenameField']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          source_path: EnclosedInStringProperties.default(visited),
          target_path: EnclosedInStringProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RenameField.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['SourcePath'] = EnclosedInStringProperties.stub(stub[:source_path]) unless stub[:source_path].nil?
        data['TargetPath'] = EnclosedInStringProperties.stub(stub[:target_path]) unless stub[:target_path].nil?
        data
      end
    end

    # Structure Stubber for DropFields
    class DropFields
      def self.default(visited=[])
        return nil if visited.include?('DropFields')
        visited = visited + ['DropFields']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          paths: GlueStudioPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DropFields.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Paths'] = GlueStudioPathList.stub(stub[:paths]) unless stub[:paths].nil?
        data
      end
    end

    # Structure Stubber for SelectFields
    class SelectFields
      def self.default(visited=[])
        return nil if visited.include?('SelectFields')
        visited = visited + ['SelectFields']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          paths: GlueStudioPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectFields.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Paths'] = GlueStudioPathList.stub(stub[:paths]) unless stub[:paths].nil?
        data
      end
    end

    # Structure Stubber for ApplyMapping
    class ApplyMapping
      def self.default(visited=[])
        return nil if visited.include?('ApplyMapping')
        visited = visited + ['ApplyMapping']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          mapping: Mappings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplyMapping.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Mapping'] = Mappings.stub(stub[:mapping]) unless stub[:mapping].nil?
        data
      end
    end

    # List Stubber for Mappings
    class Mappings
      def self.default(visited=[])
        return nil if visited.include?('Mappings')
        visited = visited + ['Mappings']
        [
          Mapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Mapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Mapping
    class Mapping
      def self.default(visited=[])
        return nil if visited.include?('Mapping')
        visited = visited + ['Mapping']
        {
          to_key: 'to_key',
          from_path: EnclosedInStringProperties.default(visited),
          from_type: 'from_type',
          to_type: 'to_type',
          dropped: false,
          children: Mappings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Mapping.new
        data = {}
        data['ToKey'] = stub[:to_key] unless stub[:to_key].nil?
        data['FromPath'] = EnclosedInStringProperties.stub(stub[:from_path]) unless stub[:from_path].nil?
        data['FromType'] = stub[:from_type] unless stub[:from_type].nil?
        data['ToType'] = stub[:to_type] unless stub[:to_type].nil?
        data['Dropped'] = stub[:dropped] unless stub[:dropped].nil?
        data['Children'] = Mappings.stub(stub[:children]) unless stub[:children].nil?
        data
      end
    end

    # Structure Stubber for S3DirectTarget
    class S3DirectTarget
      def self.default(visited=[])
        return nil if visited.include?('S3DirectTarget')
        visited = visited + ['S3DirectTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          partition_keys: GlueStudioPathList.default(visited),
          path: 'path',
          compression: 'compression',
          format: 'format',
          schema_change_policy: DirectSchemaChangePolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DirectTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['PartitionKeys'] = GlueStudioPathList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Compression'] = stub[:compression] unless stub[:compression].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['SchemaChangePolicy'] = DirectSchemaChangePolicy.stub(stub[:schema_change_policy]) unless stub[:schema_change_policy].nil?
        data
      end
    end

    # Structure Stubber for DirectSchemaChangePolicy
    class DirectSchemaChangePolicy
      def self.default(visited=[])
        return nil if visited.include?('DirectSchemaChangePolicy')
        visited = visited + ['DirectSchemaChangePolicy']
        {
          enable_update_catalog: false,
          update_behavior: 'update_behavior',
          table: 'table',
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectSchemaChangePolicy.new
        data = {}
        data['EnableUpdateCatalog'] = stub[:enable_update_catalog] unless stub[:enable_update_catalog].nil?
        data['UpdateBehavior'] = stub[:update_behavior] unless stub[:update_behavior].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for S3GlueParquetTarget
    class S3GlueParquetTarget
      def self.default(visited=[])
        return nil if visited.include?('S3GlueParquetTarget')
        visited = visited + ['S3GlueParquetTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          partition_keys: GlueStudioPathList.default(visited),
          path: 'path',
          compression: 'compression',
          schema_change_policy: DirectSchemaChangePolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3GlueParquetTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['PartitionKeys'] = GlueStudioPathList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Compression'] = stub[:compression] unless stub[:compression].nil?
        data['SchemaChangePolicy'] = DirectSchemaChangePolicy.stub(stub[:schema_change_policy]) unless stub[:schema_change_policy].nil?
        data
      end
    end

    # Structure Stubber for S3CatalogTarget
    class S3CatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('S3CatalogTarget')
        visited = visited + ['S3CatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          partition_keys: GlueStudioPathList.default(visited),
          table: 'table',
          database: 'database',
          schema_change_policy: CatalogSchemaChangePolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3CatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['PartitionKeys'] = GlueStudioPathList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['SchemaChangePolicy'] = CatalogSchemaChangePolicy.stub(stub[:schema_change_policy]) unless stub[:schema_change_policy].nil?
        data
      end
    end

    # Structure Stubber for RedshiftTarget
    class RedshiftTarget
      def self.default(visited=[])
        return nil if visited.include?('RedshiftTarget')
        visited = visited + ['RedshiftTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          database: 'database',
          table: 'table',
          redshift_tmp_dir: 'redshift_tmp_dir',
          tmp_dir_iam_role: 'tmp_dir_iam_role',
          upsert_redshift_options: UpsertRedshiftTargetOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['RedshiftTmpDir'] = stub[:redshift_tmp_dir] unless stub[:redshift_tmp_dir].nil?
        data['TmpDirIAMRole'] = stub[:tmp_dir_iam_role] unless stub[:tmp_dir_iam_role].nil?
        data['UpsertRedshiftOptions'] = UpsertRedshiftTargetOptions.stub(stub[:upsert_redshift_options]) unless stub[:upsert_redshift_options].nil?
        data
      end
    end

    # Structure Stubber for UpsertRedshiftTargetOptions
    class UpsertRedshiftTargetOptions
      def self.default(visited=[])
        return nil if visited.include?('UpsertRedshiftTargetOptions')
        visited = visited + ['UpsertRedshiftTargetOptions']
        {
          table_location: 'table_location',
          connection_name: 'connection_name',
          upsert_keys: EnclosedInStringPropertiesMinOne.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpsertRedshiftTargetOptions.new
        data = {}
        data['TableLocation'] = stub[:table_location] unless stub[:table_location].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['UpsertKeys'] = EnclosedInStringPropertiesMinOne.stub(stub[:upsert_keys]) unless stub[:upsert_keys].nil?
        data
      end
    end

    # List Stubber for EnclosedInStringPropertiesMinOne
    class EnclosedInStringPropertiesMinOne
      def self.default(visited=[])
        return nil if visited.include?('EnclosedInStringPropertiesMinOne')
        visited = visited + ['EnclosedInStringPropertiesMinOne']
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

    # Structure Stubber for BasicCatalogTarget
    class BasicCatalogTarget
      def self.default(visited=[])
        return nil if visited.include?('BasicCatalogTarget')
        visited = visited + ['BasicCatalogTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::BasicCatalogTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for SparkConnectorTarget
    class SparkConnectorTarget
      def self.default(visited=[])
        return nil if visited.include?('SparkConnectorTarget')
        visited = visited + ['SparkConnectorTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          connection_name: 'connection_name',
          connector_name: 'connector_name',
          connection_type: 'connection_type',
          additional_options: AdditionalOptions.default(visited),
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SparkConnectorTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['AdditionalOptions'] = AdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Map Stubber for AdditionalOptions
    class AdditionalOptions
      def self.default(visited=[])
        return nil if visited.include?('AdditionalOptions')
        visited = visited + ['AdditionalOptions']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for JDBCConnectorTarget
    class JDBCConnectorTarget
      def self.default(visited=[])
        return nil if visited.include?('JDBCConnectorTarget')
        visited = visited + ['JDBCConnectorTarget']
        {
          name: 'name',
          inputs: OneInput.default(visited),
          connection_name: 'connection_name',
          connection_table: 'connection_table',
          connector_name: 'connector_name',
          connection_type: 'connection_type',
          additional_options: AdditionalOptions.default(visited),
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JDBCConnectorTarget.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Inputs'] = OneInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectionTable'] = stub[:connection_table] unless stub[:connection_table].nil?
        data['ConnectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['AdditionalOptions'] = AdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for DynamoDBCatalogSource
    class DynamoDBCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBCatalogSource')
        visited = visited + ['DynamoDBCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDBCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for RelationalCatalogSource
    class RelationalCatalogSource
      def self.default(visited=[])
        return nil if visited.include?('RelationalCatalogSource')
        visited = visited + ['RelationalCatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalCatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for S3ParquetSource
    class S3ParquetSource
      def self.default(visited=[])
        return nil if visited.include?('S3ParquetSource')
        visited = visited + ['S3ParquetSource']
        {
          name: 'name',
          paths: EnclosedInStringProperties.default(visited),
          compression_type: 'compression_type',
          exclusions: EnclosedInStringProperties.default(visited),
          group_size: 'group_size',
          group_files: 'group_files',
          recurse: false,
          max_band: 1,
          max_files_in_band: 1,
          additional_options: S3DirectSourceAdditionalOptions.default(visited),
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ParquetSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Paths'] = EnclosedInStringProperties.stub(stub[:paths]) unless stub[:paths].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['Exclusions'] = EnclosedInStringProperties.stub(stub[:exclusions]) unless stub[:exclusions].nil?
        data['GroupSize'] = stub[:group_size] unless stub[:group_size].nil?
        data['GroupFiles'] = stub[:group_files] unless stub[:group_files].nil?
        data['Recurse'] = stub[:recurse] unless stub[:recurse].nil?
        data['MaxBand'] = stub[:max_band] unless stub[:max_band].nil?
        data['MaxFilesInBand'] = stub[:max_files_in_band] unless stub[:max_files_in_band].nil?
        data['AdditionalOptions'] = S3DirectSourceAdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for S3DirectSourceAdditionalOptions
    class S3DirectSourceAdditionalOptions
      def self.default(visited=[])
        return nil if visited.include?('S3DirectSourceAdditionalOptions')
        visited = visited + ['S3DirectSourceAdditionalOptions']
        {
          bounded_size: 1,
          bounded_files: 1,
          enable_sample_path: false,
          sample_path: 'sample_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DirectSourceAdditionalOptions.new
        data = {}
        data['BoundedSize'] = stub[:bounded_size] unless stub[:bounded_size].nil?
        data['BoundedFiles'] = stub[:bounded_files] unless stub[:bounded_files].nil?
        data['EnableSamplePath'] = stub[:enable_sample_path] unless stub[:enable_sample_path].nil?
        data['SamplePath'] = stub[:sample_path] unless stub[:sample_path].nil?
        data
      end
    end

    # Structure Stubber for S3JsonSource
    class S3JsonSource
      def self.default(visited=[])
        return nil if visited.include?('S3JsonSource')
        visited = visited + ['S3JsonSource']
        {
          name: 'name',
          paths: EnclosedInStringProperties.default(visited),
          compression_type: 'compression_type',
          exclusions: EnclosedInStringProperties.default(visited),
          group_size: 'group_size',
          group_files: 'group_files',
          recurse: false,
          max_band: 1,
          max_files_in_band: 1,
          additional_options: S3DirectSourceAdditionalOptions.default(visited),
          json_path: 'json_path',
          multiline: false,
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3JsonSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Paths'] = EnclosedInStringProperties.stub(stub[:paths]) unless stub[:paths].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['Exclusions'] = EnclosedInStringProperties.stub(stub[:exclusions]) unless stub[:exclusions].nil?
        data['GroupSize'] = stub[:group_size] unless stub[:group_size].nil?
        data['GroupFiles'] = stub[:group_files] unless stub[:group_files].nil?
        data['Recurse'] = stub[:recurse] unless stub[:recurse].nil?
        data['MaxBand'] = stub[:max_band] unless stub[:max_band].nil?
        data['MaxFilesInBand'] = stub[:max_files_in_band] unless stub[:max_files_in_band].nil?
        data['AdditionalOptions'] = S3DirectSourceAdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['JsonPath'] = stub[:json_path] unless stub[:json_path].nil?
        data['Multiline'] = stub[:multiline] unless stub[:multiline].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for S3CsvSource
    class S3CsvSource
      def self.default(visited=[])
        return nil if visited.include?('S3CsvSource')
        visited = visited + ['S3CsvSource']
        {
          name: 'name',
          paths: EnclosedInStringProperties.default(visited),
          compression_type: 'compression_type',
          exclusions: EnclosedInStringProperties.default(visited),
          group_size: 'group_size',
          group_files: 'group_files',
          recurse: false,
          max_band: 1,
          max_files_in_band: 1,
          additional_options: S3DirectSourceAdditionalOptions.default(visited),
          separator: 'separator',
          escaper: 'escaper',
          quote_char: 'quote_char',
          multiline: false,
          with_header: false,
          write_header: false,
          skip_first: false,
          optimize_performance: false,
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3CsvSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Paths'] = EnclosedInStringProperties.stub(stub[:paths]) unless stub[:paths].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['Exclusions'] = EnclosedInStringProperties.stub(stub[:exclusions]) unless stub[:exclusions].nil?
        data['GroupSize'] = stub[:group_size] unless stub[:group_size].nil?
        data['GroupFiles'] = stub[:group_files] unless stub[:group_files].nil?
        data['Recurse'] = stub[:recurse] unless stub[:recurse].nil?
        data['MaxBand'] = stub[:max_band] unless stub[:max_band].nil?
        data['MaxFilesInBand'] = stub[:max_files_in_band] unless stub[:max_files_in_band].nil?
        data['AdditionalOptions'] = S3DirectSourceAdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['Separator'] = stub[:separator] unless stub[:separator].nil?
        data['Escaper'] = stub[:escaper] unless stub[:escaper].nil?
        data['QuoteChar'] = stub[:quote_char] unless stub[:quote_char].nil?
        data['Multiline'] = stub[:multiline] unless stub[:multiline].nil?
        data['WithHeader'] = stub[:with_header] unless stub[:with_header].nil?
        data['WriteHeader'] = stub[:write_header] unless stub[:write_header].nil?
        data['SkipFirst'] = stub[:skip_first] unless stub[:skip_first].nil?
        data['OptimizePerformance'] = stub[:optimize_performance] unless stub[:optimize_performance].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for S3CatalogSource
    class S3CatalogSource
      def self.default(visited=[])
        return nil if visited.include?('S3CatalogSource')
        visited = visited + ['S3CatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
          partition_predicate: 'partition_predicate',
          additional_options: S3SourceAdditionalOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3CatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['PartitionPredicate'] = stub[:partition_predicate] unless stub[:partition_predicate].nil?
        data['AdditionalOptions'] = S3SourceAdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data
      end
    end

    # Structure Stubber for RedshiftSource
    class RedshiftSource
      def self.default(visited=[])
        return nil if visited.include?('RedshiftSource')
        visited = visited + ['RedshiftSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
          redshift_tmp_dir: 'redshift_tmp_dir',
          tmp_dir_iam_role: 'tmp_dir_iam_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data['RedshiftTmpDir'] = stub[:redshift_tmp_dir] unless stub[:redshift_tmp_dir].nil?
        data['TmpDirIAMRole'] = stub[:tmp_dir_iam_role] unless stub[:tmp_dir_iam_role].nil?
        data
      end
    end

    # Structure Stubber for CatalogSource
    class CatalogSource
      def self.default(visited=[])
        return nil if visited.include?('CatalogSource')
        visited = visited + ['CatalogSource']
        {
          name: 'name',
          database: 'database',
          table: 'table',
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Table'] = stub[:table] unless stub[:table].nil?
        data
      end
    end

    # Structure Stubber for SparkConnectorSource
    class SparkConnectorSource
      def self.default(visited=[])
        return nil if visited.include?('SparkConnectorSource')
        visited = visited + ['SparkConnectorSource']
        {
          name: 'name',
          connection_name: 'connection_name',
          connector_name: 'connector_name',
          connection_type: 'connection_type',
          additional_options: AdditionalOptions.default(visited),
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SparkConnectorSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['AdditionalOptions'] = AdditionalOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for JDBCConnectorSource
    class JDBCConnectorSource
      def self.default(visited=[])
        return nil if visited.include?('JDBCConnectorSource')
        visited = visited + ['JDBCConnectorSource']
        {
          name: 'name',
          connection_name: 'connection_name',
          connector_name: 'connector_name',
          connection_type: 'connection_type',
          additional_options: JDBCConnectorOptions.default(visited),
          connection_table: 'connection_table',
          query: 'query',
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JDBCConnectorSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['AdditionalOptions'] = JDBCConnectorOptions.stub(stub[:additional_options]) unless stub[:additional_options].nil?
        data['ConnectionTable'] = stub[:connection_table] unless stub[:connection_table].nil?
        data['Query'] = stub[:query] unless stub[:query].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for JDBCConnectorOptions
    class JDBCConnectorOptions
      def self.default(visited=[])
        return nil if visited.include?('JDBCConnectorOptions')
        visited = visited + ['JDBCConnectorOptions']
        {
          filter_predicate: 'filter_predicate',
          partition_column: 'partition_column',
          lower_bound: 1,
          upper_bound: 1,
          num_partitions: 1,
          job_bookmark_keys: EnclosedInStringProperties.default(visited),
          job_bookmark_keys_sort_order: 'job_bookmark_keys_sort_order',
          data_type_mapping: JDBCDataTypeMapping.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JDBCConnectorOptions.new
        data = {}
        data['FilterPredicate'] = stub[:filter_predicate] unless stub[:filter_predicate].nil?
        data['PartitionColumn'] = stub[:partition_column] unless stub[:partition_column].nil?
        data['LowerBound'] = stub[:lower_bound] unless stub[:lower_bound].nil?
        data['UpperBound'] = stub[:upper_bound] unless stub[:upper_bound].nil?
        data['NumPartitions'] = stub[:num_partitions] unless stub[:num_partitions].nil?
        data['JobBookmarkKeys'] = EnclosedInStringProperties.stub(stub[:job_bookmark_keys]) unless stub[:job_bookmark_keys].nil?
        data['JobBookmarkKeysSortOrder'] = stub[:job_bookmark_keys_sort_order] unless stub[:job_bookmark_keys_sort_order].nil?
        data['DataTypeMapping'] = JDBCDataTypeMapping.stub(stub[:data_type_mapping]) unless stub[:data_type_mapping].nil?
        data
      end
    end

    # Map Stubber for JDBCDataTypeMapping
    class JDBCDataTypeMapping
      def self.default(visited=[])
        return nil if visited.include?('JDBCDataTypeMapping')
        visited = visited + ['JDBCDataTypeMapping']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AthenaConnectorSource
    class AthenaConnectorSource
      def self.default(visited=[])
        return nil if visited.include?('AthenaConnectorSource')
        visited = visited + ['AthenaConnectorSource']
        {
          name: 'name',
          connection_name: 'connection_name',
          connector_name: 'connector_name',
          connection_type: 'connection_type',
          connection_table: 'connection_table',
          schema_name: 'schema_name',
          output_schemas: GlueSchemas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AthenaConnectorSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['ConnectionTable'] = stub[:connection_table] unless stub[:connection_table].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['OutputSchemas'] = GlueSchemas.stub(stub[:output_schemas]) unless stub[:output_schemas].nil?
        data
      end
    end

    # Structure Stubber for NotificationProperty
    class NotificationProperty
      def self.default(visited=[])
        return nil if visited.include?('NotificationProperty')
        visited = visited + ['NotificationProperty']
        {
          notify_delay_after: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationProperty.new
        data = {}
        data['NotifyDelayAfter'] = stub[:notify_delay_after] unless stub[:notify_delay_after].nil?
        data
      end
    end

    # Structure Stubber for ConnectionsList
    class ConnectionsList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionsList')
        visited = visited + ['ConnectionsList']
        {
          connections: OrchestrationStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionsList.new
        data = {}
        data['Connections'] = OrchestrationStringList.stub(stub[:connections]) unless stub[:connections].nil?
        data
      end
    end

    # List Stubber for OrchestrationStringList
    class OrchestrationStringList
      def self.default(visited=[])
        return nil if visited.include?('OrchestrationStringList')
        visited = visited + ['OrchestrationStringList']
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

    # Map Stubber for GenericMap
    class GenericMap
      def self.default(visited=[])
        return nil if visited.include?('GenericMap')
        visited = visited + ['GenericMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for JobCommand
    class JobCommand
      def self.default(visited=[])
        return nil if visited.include?('JobCommand')
        visited = visited + ['JobCommand']
        {
          name: 'name',
          script_location: 'script_location',
          python_version: 'python_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobCommand.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ScriptLocation'] = stub[:script_location] unless stub[:script_location].nil?
        data['PythonVersion'] = stub[:python_version] unless stub[:python_version].nil?
        data
      end
    end

    # Structure Stubber for ExecutionProperty
    class ExecutionProperty
      def self.default(visited=[])
        return nil if visited.include?('ExecutionProperty')
        visited = visited + ['ExecutionProperty']
        {
          max_concurrent_runs: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionProperty.new
        data = {}
        data['MaxConcurrentRuns'] = stub[:max_concurrent_runs] unless stub[:max_concurrent_runs].nil?
        data
      end
    end

    # Operation Stubber for BatchGetPartition
    class BatchGetPartition
      def self.default(visited=[])
        {
          partitions: PartitionList.default(visited),
          unprocessed_keys: BatchGetPartitionValueList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Partitions'] = PartitionList.stub(stub[:partitions]) unless stub[:partitions].nil?
        data['UnprocessedKeys'] = BatchGetPartitionValueList.stub(stub[:unprocessed_keys]) unless stub[:unprocessed_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchGetPartitionValueList
    class BatchGetPartitionValueList
      def self.default(visited=[])
        return nil if visited.include?('BatchGetPartitionValueList')
        visited = visited + ['BatchGetPartitionValueList']
        [
          PartitionValueList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PartitionValueList.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartitionValueList
    class PartitionValueList
      def self.default(visited=[])
        return nil if visited.include?('PartitionValueList')
        visited = visited + ['PartitionValueList']
        {
          values: ValueStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PartitionValueList.new
        data = {}
        data['Values'] = ValueStringList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for PartitionList
    class PartitionList
      def self.default(visited=[])
        return nil if visited.include?('PartitionList')
        visited = visited + ['PartitionList']
        [
          Partition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Partition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Partition
    class Partition
      def self.default(visited=[])
        return nil if visited.include?('Partition')
        visited = visited + ['Partition']
        {
          values: ValueStringList.default(visited),
          database_name: 'database_name',
          table_name: 'table_name',
          creation_time: Time.now,
          last_access_time: Time.now,
          storage_descriptor: StorageDescriptor.default(visited),
          parameters: ParametersMap.default(visited),
          last_analyzed_time: Time.now,
          catalog_id: 'catalog_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Partition.new
        data = {}
        data['Values'] = ValueStringList.stub(stub[:values]) unless stub[:values].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastAccessTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_access_time]).to_i unless stub[:last_access_time].nil?
        data['StorageDescriptor'] = StorageDescriptor.stub(stub[:storage_descriptor]) unless stub[:storage_descriptor].nil?
        data['Parameters'] = ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['LastAnalyzedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_analyzed_time]).to_i unless stub[:last_analyzed_time].nil?
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data
      end
    end

    # Map Stubber for ParametersMap
    class ParametersMap
      def self.default(visited=[])
        return nil if visited.include?('ParametersMap')
        visited = visited + ['ParametersMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for StorageDescriptor
    class StorageDescriptor
      def self.default(visited=[])
        return nil if visited.include?('StorageDescriptor')
        visited = visited + ['StorageDescriptor']
        {
          columns: ColumnList.default(visited),
          location: 'location',
          additional_locations: LocationStringList.default(visited),
          input_format: 'input_format',
          output_format: 'output_format',
          compressed: false,
          number_of_buckets: 1,
          serde_info: SerDeInfo.default(visited),
          bucket_columns: NameStringList.default(visited),
          sort_columns: OrderList.default(visited),
          parameters: ParametersMap.default(visited),
          skewed_info: SkewedInfo.default(visited),
          stored_as_sub_directories: false,
          schema_reference: SchemaReference.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageDescriptor.new
        data = {}
        data['Columns'] = ColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['AdditionalLocations'] = LocationStringList.stub(stub[:additional_locations]) unless stub[:additional_locations].nil?
        data['InputFormat'] = stub[:input_format] unless stub[:input_format].nil?
        data['OutputFormat'] = stub[:output_format] unless stub[:output_format].nil?
        data['Compressed'] = stub[:compressed] unless stub[:compressed].nil?
        data['NumberOfBuckets'] = stub[:number_of_buckets] unless stub[:number_of_buckets].nil?
        data['SerdeInfo'] = SerDeInfo.stub(stub[:serde_info]) unless stub[:serde_info].nil?
        data['BucketColumns'] = NameStringList.stub(stub[:bucket_columns]) unless stub[:bucket_columns].nil?
        data['SortColumns'] = OrderList.stub(stub[:sort_columns]) unless stub[:sort_columns].nil?
        data['Parameters'] = ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['SkewedInfo'] = SkewedInfo.stub(stub[:skewed_info]) unless stub[:skewed_info].nil?
        data['StoredAsSubDirectories'] = stub[:stored_as_sub_directories] unless stub[:stored_as_sub_directories].nil?
        data['SchemaReference'] = SchemaReference.stub(stub[:schema_reference]) unless stub[:schema_reference].nil?
        data
      end
    end

    # Structure Stubber for SchemaReference
    class SchemaReference
      def self.default(visited=[])
        return nil if visited.include?('SchemaReference')
        visited = visited + ['SchemaReference']
        {
          schema_id: SchemaId.default(visited),
          schema_version_id: 'schema_version_id',
          schema_version_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaReference.new
        data = {}
        data['SchemaId'] = SchemaId.stub(stub[:schema_id]) unless stub[:schema_id].nil?
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['SchemaVersionNumber'] = stub[:schema_version_number] unless stub[:schema_version_number].nil?
        data
      end
    end

    # Structure Stubber for SchemaId
    class SchemaId
      def self.default(visited=[])
        return nil if visited.include?('SchemaId')
        visited = visited + ['SchemaId']
        {
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          registry_name: 'registry_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaId.new
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data
      end
    end

    # Structure Stubber for SkewedInfo
    class SkewedInfo
      def self.default(visited=[])
        return nil if visited.include?('SkewedInfo')
        visited = visited + ['SkewedInfo']
        {
          skewed_column_names: NameStringList.default(visited),
          skewed_column_values: ColumnValueStringList.default(visited),
          skewed_column_value_location_maps: LocationMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SkewedInfo.new
        data = {}
        data['SkewedColumnNames'] = NameStringList.stub(stub[:skewed_column_names]) unless stub[:skewed_column_names].nil?
        data['SkewedColumnValues'] = ColumnValueStringList.stub(stub[:skewed_column_values]) unless stub[:skewed_column_values].nil?
        data['SkewedColumnValueLocationMaps'] = LocationMap.stub(stub[:skewed_column_value_location_maps]) unless stub[:skewed_column_value_location_maps].nil?
        data
      end
    end

    # Map Stubber for LocationMap
    class LocationMap
      def self.default(visited=[])
        return nil if visited.include?('LocationMap')
        visited = visited + ['LocationMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ColumnValueStringList
    class ColumnValueStringList
      def self.default(visited=[])
        return nil if visited.include?('ColumnValueStringList')
        visited = visited + ['ColumnValueStringList']
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

    # List Stubber for OrderList
    class OrderList
      def self.default(visited=[])
        return nil if visited.include?('OrderList')
        visited = visited + ['OrderList']
        [
          Order.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Order.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Order
    class Order
      def self.default(visited=[])
        return nil if visited.include?('Order')
        visited = visited + ['Order']
        {
          column: 'column',
          sort_order: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Order.new
        data = {}
        data['Column'] = stub[:column] unless stub[:column].nil?
        data['SortOrder'] = stub[:sort_order] unless stub[:sort_order].nil?
        data
      end
    end

    # Structure Stubber for SerDeInfo
    class SerDeInfo
      def self.default(visited=[])
        return nil if visited.include?('SerDeInfo')
        visited = visited + ['SerDeInfo']
        {
          name: 'name',
          serialization_library: 'serialization_library',
          parameters: ParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SerDeInfo.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SerializationLibrary'] = stub[:serialization_library] unless stub[:serialization_library].nil?
        data['Parameters'] = ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for LocationStringList
    class LocationStringList
      def self.default(visited=[])
        return nil if visited.include?('LocationStringList')
        visited = visited + ['LocationStringList']
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

    # List Stubber for ColumnList
    class ColumnList
      def self.default(visited=[])
        return nil if visited.include?('ColumnList')
        visited = visited + ['ColumnList']
        [
          Column.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Column.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Column
    class Column
      def self.default(visited=[])
        return nil if visited.include?('Column')
        visited = visited + ['Column']
        {
          name: 'name',
          type: 'type',
          comment: 'comment',
          parameters: ParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Column.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['Parameters'] = ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Operation Stubber for BatchGetTriggers
    class BatchGetTriggers
      def self.default(visited=[])
        {
          triggers: TriggerList.default(visited),
          triggers_not_found: TriggerNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Triggers'] = TriggerList.stub(stub[:triggers]) unless stub[:triggers].nil?
        data['TriggersNotFound'] = TriggerNameList.stub(stub[:triggers_not_found]) unless stub[:triggers_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TriggerNameList
    class TriggerNameList
      def self.default(visited=[])
        return nil if visited.include?('TriggerNameList')
        visited = visited + ['TriggerNameList']
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

    # List Stubber for TriggerList
    class TriggerList
      def self.default(visited=[])
        return nil if visited.include?('TriggerList')
        visited = visited + ['TriggerList']
        [
          Trigger.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Trigger.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Trigger
    class Trigger
      def self.default(visited=[])
        return nil if visited.include?('Trigger')
        visited = visited + ['Trigger']
        {
          name: 'name',
          workflow_name: 'workflow_name',
          id: 'id',
          type: 'type',
          state: 'state',
          description: 'description',
          schedule: 'schedule',
          actions: ActionList.default(visited),
          predicate: Predicate.default(visited),
          event_batching_condition: EventBatchingCondition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Trigger.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['WorkflowName'] = stub[:workflow_name] unless stub[:workflow_name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['Actions'] = ActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data['Predicate'] = Predicate.stub(stub[:predicate]) unless stub[:predicate].nil?
        data['EventBatchingCondition'] = EventBatchingCondition.stub(stub[:event_batching_condition]) unless stub[:event_batching_condition].nil?
        data
      end
    end

    # Structure Stubber for EventBatchingCondition
    class EventBatchingCondition
      def self.default(visited=[])
        return nil if visited.include?('EventBatchingCondition')
        visited = visited + ['EventBatchingCondition']
        {
          batch_size: 1,
          batch_window: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventBatchingCondition.new
        data = {}
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['BatchWindow'] = stub[:batch_window] unless stub[:batch_window].nil?
        data
      end
    end

    # Structure Stubber for Predicate
    class Predicate
      def self.default(visited=[])
        return nil if visited.include?('Predicate')
        visited = visited + ['Predicate']
        {
          logical: 'logical',
          conditions: ConditionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Predicate.new
        data = {}
        data['Logical'] = stub[:logical] unless stub[:logical].nil?
        data['Conditions'] = ConditionList.stub(stub[:conditions]) unless stub[:conditions].nil?
        data
      end
    end

    # List Stubber for ConditionList
    class ConditionList
      def self.default(visited=[])
        return nil if visited.include?('ConditionList')
        visited = visited + ['ConditionList']
        [
          Condition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Condition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Condition
    class Condition
      def self.default(visited=[])
        return nil if visited.include?('Condition')
        visited = visited + ['Condition']
        {
          logical_operator: 'logical_operator',
          job_name: 'job_name',
          state: 'state',
          crawler_name: 'crawler_name',
          crawl_state: 'crawl_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Condition.new
        data = {}
        data['LogicalOperator'] = stub[:logical_operator] unless stub[:logical_operator].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CrawlerName'] = stub[:crawler_name] unless stub[:crawler_name].nil?
        data['CrawlState'] = stub[:crawl_state] unless stub[:crawl_state].nil?
        data
      end
    end

    # List Stubber for ActionList
    class ActionList
      def self.default(visited=[])
        return nil if visited.include?('ActionList')
        visited = visited + ['ActionList']
        [
          Action.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Action.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          job_name: 'job_name',
          arguments: GenericMap.default(visited),
          timeout: 1,
          security_configuration: 'security_configuration',
          notification_property: NotificationProperty.default(visited),
          crawler_name: 'crawler_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['Arguments'] = GenericMap.stub(stub[:arguments]) unless stub[:arguments].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['NotificationProperty'] = NotificationProperty.stub(stub[:notification_property]) unless stub[:notification_property].nil?
        data['CrawlerName'] = stub[:crawler_name] unless stub[:crawler_name].nil?
        data
      end
    end

    # Operation Stubber for BatchGetWorkflows
    class BatchGetWorkflows
      def self.default(visited=[])
        {
          workflows: Workflows.default(visited),
          missing_workflows: WorkflowNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workflows'] = Workflows.stub(stub[:workflows]) unless stub[:workflows].nil?
        data['MissingWorkflows'] = WorkflowNames.stub(stub[:missing_workflows]) unless stub[:missing_workflows].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkflowNames
    class WorkflowNames
      def self.default(visited=[])
        return nil if visited.include?('WorkflowNames')
        visited = visited + ['WorkflowNames']
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

    # List Stubber for Workflows
    class Workflows
      def self.default(visited=[])
        return nil if visited.include?('Workflows')
        visited = visited + ['Workflows']
        [
          Workflow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Workflow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Workflow
    class Workflow
      def self.default(visited=[])
        return nil if visited.include?('Workflow')
        visited = visited + ['Workflow']
        {
          name: 'name',
          description: 'description',
          default_run_properties: WorkflowRunProperties.default(visited),
          created_on: Time.now,
          last_modified_on: Time.now,
          last_run: WorkflowRun.default(visited),
          graph: WorkflowGraph.default(visited),
          max_concurrent_runs: 1,
          blueprint_details: BlueprintDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Workflow.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultRunProperties'] = WorkflowRunProperties.stub(stub[:default_run_properties]) unless stub[:default_run_properties].nil?
        data['CreatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['LastRun'] = WorkflowRun.stub(stub[:last_run]) unless stub[:last_run].nil?
        data['Graph'] = WorkflowGraph.stub(stub[:graph]) unless stub[:graph].nil?
        data['MaxConcurrentRuns'] = stub[:max_concurrent_runs] unless stub[:max_concurrent_runs].nil?
        data['BlueprintDetails'] = BlueprintDetails.stub(stub[:blueprint_details]) unless stub[:blueprint_details].nil?
        data
      end
    end

    # Structure Stubber for BlueprintDetails
    class BlueprintDetails
      def self.default(visited=[])
        return nil if visited.include?('BlueprintDetails')
        visited = visited + ['BlueprintDetails']
        {
          blueprint_name: 'blueprint_name',
          run_id: 'run_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlueprintDetails.new
        data = {}
        data['BlueprintName'] = stub[:blueprint_name] unless stub[:blueprint_name].nil?
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowGraph
    class WorkflowGraph
      def self.default(visited=[])
        return nil if visited.include?('WorkflowGraph')
        visited = visited + ['WorkflowGraph']
        {
          nodes: NodeList.default(visited),
          edges: EdgeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowGraph.new
        data = {}
        data['Nodes'] = NodeList.stub(stub[:nodes]) unless stub[:nodes].nil?
        data['Edges'] = EdgeList.stub(stub[:edges]) unless stub[:edges].nil?
        data
      end
    end

    # List Stubber for EdgeList
    class EdgeList
      def self.default(visited=[])
        return nil if visited.include?('EdgeList')
        visited = visited + ['EdgeList']
        [
          Edge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Edge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Edge
    class Edge
      def self.default(visited=[])
        return nil if visited.include?('Edge')
        visited = visited + ['Edge']
        {
          source_id: 'source_id',
          destination_id: 'destination_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Edge.new
        data = {}
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['DestinationId'] = stub[:destination_id] unless stub[:destination_id].nil?
        data
      end
    end

    # List Stubber for NodeList
    class NodeList
      def self.default(visited=[])
        return nil if visited.include?('NodeList')
        visited = visited + ['NodeList']
        [
          Node.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Node.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Node
    class Node
      def self.default(visited=[])
        return nil if visited.include?('Node')
        visited = visited + ['Node']
        {
          type: 'type',
          name: 'name',
          unique_id: 'unique_id',
          trigger_details: TriggerNodeDetails.default(visited),
          job_details: JobNodeDetails.default(visited),
          crawler_details: CrawlerNodeDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Node.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['UniqueId'] = stub[:unique_id] unless stub[:unique_id].nil?
        data['TriggerDetails'] = TriggerNodeDetails.stub(stub[:trigger_details]) unless stub[:trigger_details].nil?
        data['JobDetails'] = JobNodeDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        data['CrawlerDetails'] = CrawlerNodeDetails.stub(stub[:crawler_details]) unless stub[:crawler_details].nil?
        data
      end
    end

    # Structure Stubber for CrawlerNodeDetails
    class CrawlerNodeDetails
      def self.default(visited=[])
        return nil if visited.include?('CrawlerNodeDetails')
        visited = visited + ['CrawlerNodeDetails']
        {
          crawls: CrawlList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CrawlerNodeDetails.new
        data = {}
        data['Crawls'] = CrawlList.stub(stub[:crawls]) unless stub[:crawls].nil?
        data
      end
    end

    # List Stubber for CrawlList
    class CrawlList
      def self.default(visited=[])
        return nil if visited.include?('CrawlList')
        visited = visited + ['CrawlList']
        [
          Crawl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Crawl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Crawl
    class Crawl
      def self.default(visited=[])
        return nil if visited.include?('Crawl')
        visited = visited + ['Crawl']
        {
          state: 'state',
          started_on: Time.now,
          completed_on: Time.now,
          error_message: 'error_message',
          log_group: 'log_group',
          log_stream: 'log_stream',
        }
      end

      def self.stub(stub)
        stub ||= Types::Crawl.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LogGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data['LogStream'] = stub[:log_stream] unless stub[:log_stream].nil?
        data
      end
    end

    # Structure Stubber for JobNodeDetails
    class JobNodeDetails
      def self.default(visited=[])
        return nil if visited.include?('JobNodeDetails')
        visited = visited + ['JobNodeDetails']
        {
          job_runs: JobRunList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobNodeDetails.new
        data = {}
        data['JobRuns'] = JobRunList.stub(stub[:job_runs]) unless stub[:job_runs].nil?
        data
      end
    end

    # List Stubber for JobRunList
    class JobRunList
      def self.default(visited=[])
        return nil if visited.include?('JobRunList')
        visited = visited + ['JobRunList']
        [
          JobRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobRun
    class JobRun
      def self.default(visited=[])
        return nil if visited.include?('JobRun')
        visited = visited + ['JobRun']
        {
          id: 'id',
          attempt: 1,
          previous_run_id: 'previous_run_id',
          trigger_name: 'trigger_name',
          job_name: 'job_name',
          started_on: Time.now,
          last_modified_on: Time.now,
          completed_on: Time.now,
          job_run_state: 'job_run_state',
          arguments: GenericMap.default(visited),
          error_message: 'error_message',
          predecessor_runs: PredecessorList.default(visited),
          allocated_capacity: 1,
          execution_time: 1,
          timeout: 1,
          max_capacity: 1.0,
          worker_type: 'worker_type',
          number_of_workers: 1,
          security_configuration: 'security_configuration',
          log_group_name: 'log_group_name',
          notification_property: NotificationProperty.default(visited),
          glue_version: 'glue_version',
          dpu_seconds: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobRun.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Attempt'] = stub[:attempt] unless stub[:attempt].nil?
        data['PreviousRunId'] = stub[:previous_run_id] unless stub[:previous_run_id].nil?
        data['TriggerName'] = stub[:trigger_name] unless stub[:trigger_name].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['JobRunState'] = stub[:job_run_state] unless stub[:job_run_state].nil?
        data['Arguments'] = GenericMap.stub(stub[:arguments]) unless stub[:arguments].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['PredecessorRuns'] = PredecessorList.stub(stub[:predecessor_runs]) unless stub[:predecessor_runs].nil?
        data['AllocatedCapacity'] = stub[:allocated_capacity] unless stub[:allocated_capacity].nil?
        data['ExecutionTime'] = stub[:execution_time] unless stub[:execution_time].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(stub[:max_capacity])
        data['WorkerType'] = stub[:worker_type] unless stub[:worker_type].nil?
        data['NumberOfWorkers'] = stub[:number_of_workers] unless stub[:number_of_workers].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['NotificationProperty'] = NotificationProperty.stub(stub[:notification_property]) unless stub[:notification_property].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data['DPUSeconds'] = Hearth::NumberHelper.serialize(stub[:dpu_seconds])
        data
      end
    end

    # List Stubber for PredecessorList
    class PredecessorList
      def self.default(visited=[])
        return nil if visited.include?('PredecessorList')
        visited = visited + ['PredecessorList']
        [
          Predecessor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Predecessor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Predecessor
    class Predecessor
      def self.default(visited=[])
        return nil if visited.include?('Predecessor')
        visited = visited + ['Predecessor']
        {
          job_name: 'job_name',
          run_id: 'run_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Predecessor.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data
      end
    end

    # Structure Stubber for TriggerNodeDetails
    class TriggerNodeDetails
      def self.default(visited=[])
        return nil if visited.include?('TriggerNodeDetails')
        visited = visited + ['TriggerNodeDetails']
        {
          trigger: Trigger.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TriggerNodeDetails.new
        data = {}
        data['Trigger'] = Trigger.stub(stub[:trigger]) unless stub[:trigger].nil?
        data
      end
    end

    # Structure Stubber for WorkflowRun
    class WorkflowRun
      def self.default(visited=[])
        return nil if visited.include?('WorkflowRun')
        visited = visited + ['WorkflowRun']
        {
          name: 'name',
          workflow_run_id: 'workflow_run_id',
          previous_run_id: 'previous_run_id',
          workflow_run_properties: WorkflowRunProperties.default(visited),
          started_on: Time.now,
          completed_on: Time.now,
          status: 'status',
          error_message: 'error_message',
          statistics: WorkflowRunStatistics.default(visited),
          graph: WorkflowGraph.default(visited),
          starting_event_batch_condition: StartingEventBatchCondition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowRun.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['WorkflowRunId'] = stub[:workflow_run_id] unless stub[:workflow_run_id].nil?
        data['PreviousRunId'] = stub[:previous_run_id] unless stub[:previous_run_id].nil?
        data['WorkflowRunProperties'] = WorkflowRunProperties.stub(stub[:workflow_run_properties]) unless stub[:workflow_run_properties].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['Statistics'] = WorkflowRunStatistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['Graph'] = WorkflowGraph.stub(stub[:graph]) unless stub[:graph].nil?
        data['StartingEventBatchCondition'] = StartingEventBatchCondition.stub(stub[:starting_event_batch_condition]) unless stub[:starting_event_batch_condition].nil?
        data
      end
    end

    # Structure Stubber for StartingEventBatchCondition
    class StartingEventBatchCondition
      def self.default(visited=[])
        return nil if visited.include?('StartingEventBatchCondition')
        visited = visited + ['StartingEventBatchCondition']
        {
          batch_size: 1,
          batch_window: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StartingEventBatchCondition.new
        data = {}
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['BatchWindow'] = stub[:batch_window] unless stub[:batch_window].nil?
        data
      end
    end

    # Structure Stubber for WorkflowRunStatistics
    class WorkflowRunStatistics
      def self.default(visited=[])
        return nil if visited.include?('WorkflowRunStatistics')
        visited = visited + ['WorkflowRunStatistics']
        {
          total_actions: 1,
          timeout_actions: 1,
          failed_actions: 1,
          stopped_actions: 1,
          succeeded_actions: 1,
          running_actions: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowRunStatistics.new
        data = {}
        data['TotalActions'] = stub[:total_actions] unless stub[:total_actions].nil?
        data['TimeoutActions'] = stub[:timeout_actions] unless stub[:timeout_actions].nil?
        data['FailedActions'] = stub[:failed_actions] unless stub[:failed_actions].nil?
        data['StoppedActions'] = stub[:stopped_actions] unless stub[:stopped_actions].nil?
        data['SucceededActions'] = stub[:succeeded_actions] unless stub[:succeeded_actions].nil?
        data['RunningActions'] = stub[:running_actions] unless stub[:running_actions].nil?
        data
      end
    end

    # Map Stubber for WorkflowRunProperties
    class WorkflowRunProperties
      def self.default(visited=[])
        return nil if visited.include?('WorkflowRunProperties')
        visited = visited + ['WorkflowRunProperties']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for BatchStopJobRun
    class BatchStopJobRun
      def self.default(visited=[])
        {
          successful_submissions: BatchStopJobRunSuccessfulSubmissionList.default(visited),
          errors: BatchStopJobRunErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SuccessfulSubmissions'] = BatchStopJobRunSuccessfulSubmissionList.stub(stub[:successful_submissions]) unless stub[:successful_submissions].nil?
        data['Errors'] = BatchStopJobRunErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchStopJobRunErrorList
    class BatchStopJobRunErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchStopJobRunErrorList')
        visited = visited + ['BatchStopJobRunErrorList']
        [
          BatchStopJobRunError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchStopJobRunError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchStopJobRunError
    class BatchStopJobRunError
      def self.default(visited=[])
        return nil if visited.include?('BatchStopJobRunError')
        visited = visited + ['BatchStopJobRunError']
        {
          job_name: 'job_name',
          job_run_id: 'job_run_id',
          error_detail: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchStopJobRunError.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        data['ErrorDetail'] = ErrorDetail.stub(stub[:error_detail]) unless stub[:error_detail].nil?
        data
      end
    end

    # List Stubber for BatchStopJobRunSuccessfulSubmissionList
    class BatchStopJobRunSuccessfulSubmissionList
      def self.default(visited=[])
        return nil if visited.include?('BatchStopJobRunSuccessfulSubmissionList')
        visited = visited + ['BatchStopJobRunSuccessfulSubmissionList']
        [
          BatchStopJobRunSuccessfulSubmission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchStopJobRunSuccessfulSubmission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchStopJobRunSuccessfulSubmission
    class BatchStopJobRunSuccessfulSubmission
      def self.default(visited=[])
        return nil if visited.include?('BatchStopJobRunSuccessfulSubmission')
        visited = visited + ['BatchStopJobRunSuccessfulSubmission']
        {
          job_name: 'job_name',
          job_run_id: 'job_run_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchStopJobRunSuccessfulSubmission.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        data
      end
    end

    # Operation Stubber for BatchUpdatePartition
    class BatchUpdatePartition
      def self.default(visited=[])
        {
          errors: BatchUpdatePartitionFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = BatchUpdatePartitionFailureList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchUpdatePartitionFailureList
    class BatchUpdatePartitionFailureList
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdatePartitionFailureList')
        visited = visited + ['BatchUpdatePartitionFailureList']
        [
          BatchUpdatePartitionFailureEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchUpdatePartitionFailureEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchUpdatePartitionFailureEntry
    class BatchUpdatePartitionFailureEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdatePartitionFailureEntry')
        visited = visited + ['BatchUpdatePartitionFailureEntry']
        {
          partition_value_list: BoundedPartitionValueList.default(visited),
          error_detail: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdatePartitionFailureEntry.new
        data = {}
        data['PartitionValueList'] = BoundedPartitionValueList.stub(stub[:partition_value_list]) unless stub[:partition_value_list].nil?
        data['ErrorDetail'] = ErrorDetail.stub(stub[:error_detail]) unless stub[:error_detail].nil?
        data
      end
    end

    # List Stubber for BoundedPartitionValueList
    class BoundedPartitionValueList
      def self.default(visited=[])
        return nil if visited.include?('BoundedPartitionValueList')
        visited = visited + ['BoundedPartitionValueList']
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

    # Operation Stubber for CancelMLTaskRun
    class CancelMLTaskRun
      def self.default(visited=[])
        {
          transform_id: 'transform_id',
          task_run_id: 'task_run_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelStatement
    class CancelStatement
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

    # Operation Stubber for CheckSchemaVersionValidity
    class CheckSchemaVersionValidity
      def self.default(visited=[])
        {
          valid: false,
          error: 'error',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Valid'] = stub[:valid] unless stub[:valid].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBlueprint
    class CreateBlueprint
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateClassifier
    class CreateClassifier
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

    # Operation Stubber for CreateConnection
    class CreateConnection
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

    # Operation Stubber for CreateCrawler
    class CreateCrawler
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

    # Operation Stubber for CreateCustomEntityType
    class CreateCustomEntityType
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDatabase
    class CreateDatabase
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

    # Operation Stubber for CreateDevEndpoint
    class CreateDevEndpoint
      def self.default(visited=[])
        {
          endpoint_name: 'endpoint_name',
          status: 'status',
          security_group_ids: StringList.default(visited),
          subnet_id: 'subnet_id',
          role_arn: 'role_arn',
          yarn_endpoint_address: 'yarn_endpoint_address',
          zeppelin_remote_spark_interpreter_port: 1,
          number_of_nodes: 1,
          worker_type: 'worker_type',
          glue_version: 'glue_version',
          number_of_workers: 1,
          availability_zone: 'availability_zone',
          vpc_id: 'vpc_id',
          extra_python_libs_s3_path: 'extra_python_libs_s3_path',
          extra_jars_s3_path: 'extra_jars_s3_path',
          failure_reason: 'failure_reason',
          security_configuration: 'security_configuration',
          created_timestamp: Time.now,
          arguments: MapValue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SecurityGroupIds'] = StringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['YarnEndpointAddress'] = stub[:yarn_endpoint_address] unless stub[:yarn_endpoint_address].nil?
        data['ZeppelinRemoteSparkInterpreterPort'] = stub[:zeppelin_remote_spark_interpreter_port] unless stub[:zeppelin_remote_spark_interpreter_port].nil?
        data['NumberOfNodes'] = stub[:number_of_nodes] unless stub[:number_of_nodes].nil?
        data['WorkerType'] = stub[:worker_type] unless stub[:worker_type].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data['NumberOfWorkers'] = stub[:number_of_workers] unless stub[:number_of_workers].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ExtraPythonLibsS3Path'] = stub[:extra_python_libs_s3_path] unless stub[:extra_python_libs_s3_path].nil?
        data['ExtraJarsS3Path'] = stub[:extra_jars_s3_path] unless stub[:extra_jars_s3_path].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['Arguments'] = MapValue.stub(stub[:arguments]) unless stub[:arguments].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateMLTransform
    class CreateMLTransform
      def self.default(visited=[])
        {
          transform_id: 'transform_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePartition
    class CreatePartition
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

    # Operation Stubber for CreatePartitionIndex
    class CreatePartitionIndex
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

    # Operation Stubber for CreateRegistry
    class CreateRegistry
      def self.default(visited=[])
        {
          registry_arn: 'registry_arn',
          registry_name: 'registry_name',
          description: 'description',
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateSchema
    class CreateSchema
      def self.default(visited=[])
        {
          registry_name: 'registry_name',
          registry_arn: 'registry_arn',
          schema_name: 'schema_name',
          schema_arn: 'schema_arn',
          description: 'description',
          data_format: 'data_format',
          compatibility: 'compatibility',
          schema_checkpoint: 1,
          latest_schema_version: 1,
          next_schema_version: 1,
          schema_status: 'schema_status',
          tags: TagsMap.default(visited),
          schema_version_id: 'schema_version_id',
          schema_version_status: 'schema_version_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['Compatibility'] = stub[:compatibility] unless stub[:compatibility].nil?
        data['SchemaCheckpoint'] = stub[:schema_checkpoint] unless stub[:schema_checkpoint].nil?
        data['LatestSchemaVersion'] = stub[:latest_schema_version] unless stub[:latest_schema_version].nil?
        data['NextSchemaVersion'] = stub[:next_schema_version] unless stub[:next_schema_version].nil?
        data['SchemaStatus'] = stub[:schema_status] unless stub[:schema_status].nil?
        data['Tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['SchemaVersionStatus'] = stub[:schema_version_status] unless stub[:schema_version_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateScript
    class CreateScript
      def self.default(visited=[])
        {
          python_script: 'python_script',
          scala_code: 'scala_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PythonScript'] = stub[:python_script] unless stub[:python_script].nil?
        data['ScalaCode'] = stub[:scala_code] unless stub[:scala_code].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSecurityConfiguration
    class CreateSecurityConfiguration
      def self.default(visited=[])
        {
          name: 'name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSession
    class CreateSession
      def self.default(visited=[])
        {
          session: Session.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Session'] = Session.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Session
    class Session
      def self.default(visited=[])
        return nil if visited.include?('Session')
        visited = visited + ['Session']
        {
          id: 'id',
          created_on: Time.now,
          status: 'status',
          error_message: 'error_message',
          description: 'description',
          role: 'role',
          command: SessionCommand.default(visited),
          default_arguments: OrchestrationArgumentsMap.default(visited),
          connections: ConnectionsList.default(visited),
          progress: 1.0,
          max_capacity: 1.0,
          security_configuration: 'security_configuration',
          glue_version: 'glue_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Session.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Command'] = SessionCommand.stub(stub[:command]) unless stub[:command].nil?
        data['DefaultArguments'] = OrchestrationArgumentsMap.stub(stub[:default_arguments]) unless stub[:default_arguments].nil?
        data['Connections'] = ConnectionsList.stub(stub[:connections]) unless stub[:connections].nil?
        data['Progress'] = Hearth::NumberHelper.serialize(stub[:progress])
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(stub[:max_capacity])
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data
      end
    end

    # Map Stubber for OrchestrationArgumentsMap
    class OrchestrationArgumentsMap
      def self.default(visited=[])
        return nil if visited.include?('OrchestrationArgumentsMap')
        visited = visited + ['OrchestrationArgumentsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for SessionCommand
    class SessionCommand
      def self.default(visited=[])
        return nil if visited.include?('SessionCommand')
        visited = visited + ['SessionCommand']
        {
          name: 'name',
          python_version: 'python_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionCommand.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PythonVersion'] = stub[:python_version] unless stub[:python_version].nil?
        data
      end
    end

    # Operation Stubber for CreateTable
    class CreateTable
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

    # Operation Stubber for CreateTrigger
    class CreateTrigger
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUserDefinedFunction
    class CreateUserDefinedFunction
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

    # Operation Stubber for CreateWorkflow
    class CreateWorkflow
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBlueprint
    class DeleteBlueprint
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteClassifier
    class DeleteClassifier
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

    # Operation Stubber for DeleteColumnStatisticsForPartition
    class DeleteColumnStatisticsForPartition
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

    # Operation Stubber for DeleteColumnStatisticsForTable
    class DeleteColumnStatisticsForTable
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

    # Operation Stubber for DeleteConnection
    class DeleteConnection
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

    # Operation Stubber for DeleteCrawler
    class DeleteCrawler
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

    # Operation Stubber for DeleteCustomEntityType
    class DeleteCustomEntityType
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDatabase
    class DeleteDatabase
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

    # Operation Stubber for DeleteDevEndpoint
    class DeleteDevEndpoint
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

    # Operation Stubber for DeleteJob
    class DeleteJob
      def self.default(visited=[])
        {
          job_name: 'job_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMLTransform
    class DeleteMLTransform
      def self.default(visited=[])
        {
          transform_id: 'transform_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePartition
    class DeletePartition
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

    # Operation Stubber for DeletePartitionIndex
    class DeletePartitionIndex
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

    # Operation Stubber for DeleteRegistry
    class DeleteRegistry
      def self.default(visited=[])
        {
          registry_name: 'registry_name',
          registry_arn: 'registry_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
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

    # Operation Stubber for DeleteSchema
    class DeleteSchema
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSchemaVersions
    class DeleteSchemaVersions
      def self.default(visited=[])
        {
          schema_version_errors: SchemaVersionErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaVersionErrors'] = SchemaVersionErrorList.stub(stub[:schema_version_errors]) unless stub[:schema_version_errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SchemaVersionErrorList
    class SchemaVersionErrorList
      def self.default(visited=[])
        return nil if visited.include?('SchemaVersionErrorList')
        visited = visited + ['SchemaVersionErrorList']
        [
          SchemaVersionErrorItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaVersionErrorItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaVersionErrorItem
    class SchemaVersionErrorItem
      def self.default(visited=[])
        return nil if visited.include?('SchemaVersionErrorItem')
        visited = visited + ['SchemaVersionErrorItem']
        {
          version_number: 1,
          error_details: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaVersionErrorItem.new
        data = {}
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['ErrorDetails'] = ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetails.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for DeleteSecurityConfiguration
    class DeleteSecurityConfiguration
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

    # Operation Stubber for DeleteSession
    class DeleteSession
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTable
    class DeleteTable
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

    # Operation Stubber for DeleteTableVersion
    class DeleteTableVersion
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

    # Operation Stubber for DeleteTrigger
    class DeleteTrigger
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserDefinedFunction
    class DeleteUserDefinedFunction
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

    # Operation Stubber for DeleteWorkflow
    class DeleteWorkflow
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetBlueprint
    class GetBlueprint
      def self.default(visited=[])
        {
          blueprint: Blueprint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Blueprint'] = Blueprint.stub(stub[:blueprint]) unless stub[:blueprint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetBlueprintRun
    class GetBlueprintRun
      def self.default(visited=[])
        {
          blueprint_run: BlueprintRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BlueprintRun'] = BlueprintRun.stub(stub[:blueprint_run]) unless stub[:blueprint_run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BlueprintRun
    class BlueprintRun
      def self.default(visited=[])
        return nil if visited.include?('BlueprintRun')
        visited = visited + ['BlueprintRun']
        {
          blueprint_name: 'blueprint_name',
          run_id: 'run_id',
          workflow_name: 'workflow_name',
          state: 'state',
          started_on: Time.now,
          completed_on: Time.now,
          error_message: 'error_message',
          rollback_error_message: 'rollback_error_message',
          parameters: 'parameters',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlueprintRun.new
        data = {}
        data['BlueprintName'] = stub[:blueprint_name] unless stub[:blueprint_name].nil?
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data['WorkflowName'] = stub[:workflow_name] unless stub[:workflow_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['RollbackErrorMessage'] = stub[:rollback_error_message] unless stub[:rollback_error_message].nil?
        data['Parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Operation Stubber for GetBlueprintRuns
    class GetBlueprintRuns
      def self.default(visited=[])
        {
          blueprint_runs: BlueprintRuns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BlueprintRuns'] = BlueprintRuns.stub(stub[:blueprint_runs]) unless stub[:blueprint_runs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BlueprintRuns
    class BlueprintRuns
      def self.default(visited=[])
        return nil if visited.include?('BlueprintRuns')
        visited = visited + ['BlueprintRuns']
        [
          BlueprintRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BlueprintRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetCatalogImportStatus
    class GetCatalogImportStatus
      def self.default(visited=[])
        {
          import_status: CatalogImportStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImportStatus'] = CatalogImportStatus.stub(stub[:import_status]) unless stub[:import_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CatalogImportStatus
    class CatalogImportStatus
      def self.default(visited=[])
        return nil if visited.include?('CatalogImportStatus')
        visited = visited + ['CatalogImportStatus']
        {
          import_completed: false,
          import_time: Time.now,
          imported_by: 'imported_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogImportStatus.new
        data = {}
        data['ImportCompleted'] = stub[:import_completed] unless stub[:import_completed].nil?
        data['ImportTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:import_time]).to_i unless stub[:import_time].nil?
        data['ImportedBy'] = stub[:imported_by] unless stub[:imported_by].nil?
        data
      end
    end

    # Operation Stubber for GetClassifier
    class GetClassifier
      def self.default(visited=[])
        {
          classifier: Classifier.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Classifier'] = Classifier.stub(stub[:classifier]) unless stub[:classifier].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Classifier
    class Classifier
      def self.default(visited=[])
        return nil if visited.include?('Classifier')
        visited = visited + ['Classifier']
        {
          grok_classifier: GrokClassifier.default(visited),
          xml_classifier: XMLClassifier.default(visited),
          json_classifier: JsonClassifier.default(visited),
          csv_classifier: CsvClassifier.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Classifier.new
        data = {}
        data['GrokClassifier'] = GrokClassifier.stub(stub[:grok_classifier]) unless stub[:grok_classifier].nil?
        data['XMLClassifier'] = XMLClassifier.stub(stub[:xml_classifier]) unless stub[:xml_classifier].nil?
        data['JsonClassifier'] = JsonClassifier.stub(stub[:json_classifier]) unless stub[:json_classifier].nil?
        data['CsvClassifier'] = CsvClassifier.stub(stub[:csv_classifier]) unless stub[:csv_classifier].nil?
        data
      end
    end

    # Structure Stubber for CsvClassifier
    class CsvClassifier
      def self.default(visited=[])
        return nil if visited.include?('CsvClassifier')
        visited = visited + ['CsvClassifier']
        {
          name: 'name',
          creation_time: Time.now,
          last_updated: Time.now,
          version: 1,
          delimiter: 'delimiter',
          quote_symbol: 'quote_symbol',
          contains_header: 'contains_header',
          header: CsvHeader.default(visited),
          disable_value_trimming: false,
          allow_single_column: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CsvClassifier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data['QuoteSymbol'] = stub[:quote_symbol] unless stub[:quote_symbol].nil?
        data['ContainsHeader'] = stub[:contains_header] unless stub[:contains_header].nil?
        data['Header'] = CsvHeader.stub(stub[:header]) unless stub[:header].nil?
        data['DisableValueTrimming'] = stub[:disable_value_trimming] unless stub[:disable_value_trimming].nil?
        data['AllowSingleColumn'] = stub[:allow_single_column] unless stub[:allow_single_column].nil?
        data
      end
    end

    # List Stubber for CsvHeader
    class CsvHeader
      def self.default(visited=[])
        return nil if visited.include?('CsvHeader')
        visited = visited + ['CsvHeader']
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

    # Structure Stubber for JsonClassifier
    class JsonClassifier
      def self.default(visited=[])
        return nil if visited.include?('JsonClassifier')
        visited = visited + ['JsonClassifier']
        {
          name: 'name',
          creation_time: Time.now,
          last_updated: Time.now,
          version: 1,
          json_path: 'json_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonClassifier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['JsonPath'] = stub[:json_path] unless stub[:json_path].nil?
        data
      end
    end

    # Structure Stubber for XMLClassifier
    class XMLClassifier
      def self.default(visited=[])
        return nil if visited.include?('XMLClassifier')
        visited = visited + ['XMLClassifier']
        {
          name: 'name',
          classification: 'classification',
          creation_time: Time.now,
          last_updated: Time.now,
          version: 1,
          row_tag: 'row_tag',
        }
      end

      def self.stub(stub)
        stub ||= Types::XMLClassifier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['RowTag'] = stub[:row_tag] unless stub[:row_tag].nil?
        data
      end
    end

    # Structure Stubber for GrokClassifier
    class GrokClassifier
      def self.default(visited=[])
        return nil if visited.include?('GrokClassifier')
        visited = visited + ['GrokClassifier']
        {
          name: 'name',
          classification: 'classification',
          creation_time: Time.now,
          last_updated: Time.now,
          version: 1,
          grok_pattern: 'grok_pattern',
          custom_patterns: 'custom_patterns',
        }
      end

      def self.stub(stub)
        stub ||= Types::GrokClassifier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['GrokPattern'] = stub[:grok_pattern] unless stub[:grok_pattern].nil?
        data['CustomPatterns'] = stub[:custom_patterns] unless stub[:custom_patterns].nil?
        data
      end
    end

    # Operation Stubber for GetClassifiers
    class GetClassifiers
      def self.default(visited=[])
        {
          classifiers: ClassifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Classifiers'] = ClassifierList.stub(stub[:classifiers]) unless stub[:classifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClassifierList
    class ClassifierList
      def self.default(visited=[])
        return nil if visited.include?('ClassifierList')
        visited = visited + ['ClassifierList']
        [
          Classifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Classifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetColumnStatisticsForPartition
    class GetColumnStatisticsForPartition
      def self.default(visited=[])
        {
          column_statistics_list: ColumnStatisticsList.default(visited),
          errors: ColumnErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ColumnStatisticsList'] = ColumnStatisticsList.stub(stub[:column_statistics_list]) unless stub[:column_statistics_list].nil?
        data['Errors'] = ColumnErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ColumnErrors
    class ColumnErrors
      def self.default(visited=[])
        return nil if visited.include?('ColumnErrors')
        visited = visited + ['ColumnErrors']
        [
          ColumnError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnError
    class ColumnError
      def self.default(visited=[])
        return nil if visited.include?('ColumnError')
        visited = visited + ['ColumnError']
        {
          column_name: 'column_name',
          error: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnError.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['Error'] = ErrorDetail.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # List Stubber for ColumnStatisticsList
    class ColumnStatisticsList
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatisticsList')
        visited = visited + ['ColumnStatisticsList']
        [
          ColumnStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnStatistics
    class ColumnStatistics
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatistics')
        visited = visited + ['ColumnStatistics']
        {
          column_name: 'column_name',
          column_type: 'column_type',
          analyzed_time: Time.now,
          statistics_data: ColumnStatisticsData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnStatistics.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['ColumnType'] = stub[:column_type] unless stub[:column_type].nil?
        data['AnalyzedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:analyzed_time]).to_i unless stub[:analyzed_time].nil?
        data['StatisticsData'] = ColumnStatisticsData.stub(stub[:statistics_data]) unless stub[:statistics_data].nil?
        data
      end
    end

    # Structure Stubber for ColumnStatisticsData
    class ColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatisticsData')
        visited = visited + ['ColumnStatisticsData']
        {
          type: 'type',
          boolean_column_statistics_data: BooleanColumnStatisticsData.default(visited),
          date_column_statistics_data: DateColumnStatisticsData.default(visited),
          decimal_column_statistics_data: DecimalColumnStatisticsData.default(visited),
          double_column_statistics_data: DoubleColumnStatisticsData.default(visited),
          long_column_statistics_data: LongColumnStatisticsData.default(visited),
          string_column_statistics_data: StringColumnStatisticsData.default(visited),
          binary_column_statistics_data: BinaryColumnStatisticsData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnStatisticsData.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['BooleanColumnStatisticsData'] = BooleanColumnStatisticsData.stub(stub[:boolean_column_statistics_data]) unless stub[:boolean_column_statistics_data].nil?
        data['DateColumnStatisticsData'] = DateColumnStatisticsData.stub(stub[:date_column_statistics_data]) unless stub[:date_column_statistics_data].nil?
        data['DecimalColumnStatisticsData'] = DecimalColumnStatisticsData.stub(stub[:decimal_column_statistics_data]) unless stub[:decimal_column_statistics_data].nil?
        data['DoubleColumnStatisticsData'] = DoubleColumnStatisticsData.stub(stub[:double_column_statistics_data]) unless stub[:double_column_statistics_data].nil?
        data['LongColumnStatisticsData'] = LongColumnStatisticsData.stub(stub[:long_column_statistics_data]) unless stub[:long_column_statistics_data].nil?
        data['StringColumnStatisticsData'] = StringColumnStatisticsData.stub(stub[:string_column_statistics_data]) unless stub[:string_column_statistics_data].nil?
        data['BinaryColumnStatisticsData'] = BinaryColumnStatisticsData.stub(stub[:binary_column_statistics_data]) unless stub[:binary_column_statistics_data].nil?
        data
      end
    end

    # Structure Stubber for BinaryColumnStatisticsData
    class BinaryColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('BinaryColumnStatisticsData')
        visited = visited + ['BinaryColumnStatisticsData']
        {
          maximum_length: 1,
          average_length: 1.0,
          number_of_nulls: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BinaryColumnStatisticsData.new
        data = {}
        data['MaximumLength'] = stub[:maximum_length] unless stub[:maximum_length].nil?
        data['AverageLength'] = Hearth::NumberHelper.serialize(stub[:average_length])
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data
      end
    end

    # Structure Stubber for StringColumnStatisticsData
    class StringColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('StringColumnStatisticsData')
        visited = visited + ['StringColumnStatisticsData']
        {
          maximum_length: 1,
          average_length: 1.0,
          number_of_nulls: 1,
          number_of_distinct_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StringColumnStatisticsData.new
        data = {}
        data['MaximumLength'] = stub[:maximum_length] unless stub[:maximum_length].nil?
        data['AverageLength'] = Hearth::NumberHelper.serialize(stub[:average_length])
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = stub[:number_of_distinct_values] unless stub[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Stubber for LongColumnStatisticsData
    class LongColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('LongColumnStatisticsData')
        visited = visited + ['LongColumnStatisticsData']
        {
          minimum_value: 1,
          maximum_value: 1,
          number_of_nulls: 1,
          number_of_distinct_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LongColumnStatisticsData.new
        data = {}
        data['MinimumValue'] = stub[:minimum_value] unless stub[:minimum_value].nil?
        data['MaximumValue'] = stub[:maximum_value] unless stub[:maximum_value].nil?
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = stub[:number_of_distinct_values] unless stub[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Stubber for DoubleColumnStatisticsData
    class DoubleColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('DoubleColumnStatisticsData')
        visited = visited + ['DoubleColumnStatisticsData']
        {
          minimum_value: 1.0,
          maximum_value: 1.0,
          number_of_nulls: 1,
          number_of_distinct_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DoubleColumnStatisticsData.new
        data = {}
        data['MinimumValue'] = Hearth::NumberHelper.serialize(stub[:minimum_value])
        data['MaximumValue'] = Hearth::NumberHelper.serialize(stub[:maximum_value])
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = stub[:number_of_distinct_values] unless stub[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Stubber for DecimalColumnStatisticsData
    class DecimalColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('DecimalColumnStatisticsData')
        visited = visited + ['DecimalColumnStatisticsData']
        {
          minimum_value: DecimalNumber.default(visited),
          maximum_value: DecimalNumber.default(visited),
          number_of_nulls: 1,
          number_of_distinct_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DecimalColumnStatisticsData.new
        data = {}
        data['MinimumValue'] = DecimalNumber.stub(stub[:minimum_value]) unless stub[:minimum_value].nil?
        data['MaximumValue'] = DecimalNumber.stub(stub[:maximum_value]) unless stub[:maximum_value].nil?
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = stub[:number_of_distinct_values] unless stub[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Stubber for DecimalNumber
    class DecimalNumber
      def self.default(visited=[])
        return nil if visited.include?('DecimalNumber')
        visited = visited + ['DecimalNumber']
        {
          unscaled_value: 'unscaled_value',
          scale: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DecimalNumber.new
        data = {}
        data['UnscaledValue'] = ::Base64::encode64(stub[:unscaled_value]) unless stub[:unscaled_value].nil?
        data['Scale'] = stub[:scale] unless stub[:scale].nil?
        data
      end
    end

    # Structure Stubber for DateColumnStatisticsData
    class DateColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('DateColumnStatisticsData')
        visited = visited + ['DateColumnStatisticsData']
        {
          minimum_value: Time.now,
          maximum_value: Time.now,
          number_of_nulls: 1,
          number_of_distinct_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DateColumnStatisticsData.new
        data = {}
        data['MinimumValue'] = Hearth::TimeHelper.to_epoch_seconds(stub[:minimum_value]).to_i unless stub[:minimum_value].nil?
        data['MaximumValue'] = Hearth::TimeHelper.to_epoch_seconds(stub[:maximum_value]).to_i unless stub[:maximum_value].nil?
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = stub[:number_of_distinct_values] unless stub[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Stubber for BooleanColumnStatisticsData
    class BooleanColumnStatisticsData
      def self.default(visited=[])
        return nil if visited.include?('BooleanColumnStatisticsData')
        visited = visited + ['BooleanColumnStatisticsData']
        {
          number_of_trues: 1,
          number_of_falses: 1,
          number_of_nulls: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BooleanColumnStatisticsData.new
        data = {}
        data['NumberOfTrues'] = stub[:number_of_trues] unless stub[:number_of_trues].nil?
        data['NumberOfFalses'] = stub[:number_of_falses] unless stub[:number_of_falses].nil?
        data['NumberOfNulls'] = stub[:number_of_nulls] unless stub[:number_of_nulls].nil?
        data
      end
    end

    # Operation Stubber for GetColumnStatisticsForTable
    class GetColumnStatisticsForTable
      def self.default(visited=[])
        {
          column_statistics_list: ColumnStatisticsList.default(visited),
          errors: ColumnErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ColumnStatisticsList'] = ColumnStatisticsList.stub(stub[:column_statistics_list]) unless stub[:column_statistics_list].nil?
        data['Errors'] = ColumnErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetConnection
    class GetConnection
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
          name: 'name',
          description: 'description',
          connection_type: 'connection_type',
          match_criteria: MatchCriteria.default(visited),
          connection_properties: ConnectionProperties.default(visited),
          physical_connection_requirements: PhysicalConnectionRequirements.default(visited),
          creation_time: Time.now,
          last_updated_time: Time.now,
          last_updated_by: 'last_updated_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['MatchCriteria'] = MatchCriteria.stub(stub[:match_criteria]) unless stub[:match_criteria].nil?
        data['ConnectionProperties'] = ConnectionProperties.stub(stub[:connection_properties]) unless stub[:connection_properties].nil?
        data['PhysicalConnectionRequirements'] = PhysicalConnectionRequirements.stub(stub[:physical_connection_requirements]) unless stub[:physical_connection_requirements].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['LastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data
      end
    end

    # Structure Stubber for PhysicalConnectionRequirements
    class PhysicalConnectionRequirements
      def self.default(visited=[])
        return nil if visited.include?('PhysicalConnectionRequirements')
        visited = visited + ['PhysicalConnectionRequirements']
        {
          subnet_id: 'subnet_id',
          security_group_id_list: SecurityGroupIdList.default(visited),
          availability_zone: 'availability_zone',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhysicalConnectionRequirements.new
        data = {}
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['SecurityGroupIdList'] = SecurityGroupIdList.stub(stub[:security_group_id_list]) unless stub[:security_group_id_list].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
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

    # Map Stubber for ConnectionProperties
    class ConnectionProperties
      def self.default(visited=[])
        return nil if visited.include?('ConnectionProperties')
        visited = visited + ['ConnectionProperties']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for MatchCriteria
    class MatchCriteria
      def self.default(visited=[])
        return nil if visited.include?('MatchCriteria')
        visited = visited + ['MatchCriteria']
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

    # Operation Stubber for GetConnections
    class GetConnections
      def self.default(visited=[])
        {
          connection_list: ConnectionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionList'] = ConnectionList.stub(stub[:connection_list]) unless stub[:connection_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
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

    # Operation Stubber for GetCrawler
    class GetCrawler
      def self.default(visited=[])
        {
          crawler: Crawler.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Crawler'] = Crawler.stub(stub[:crawler]) unless stub[:crawler].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCrawlerMetrics
    class GetCrawlerMetrics
      def self.default(visited=[])
        {
          crawler_metrics_list: CrawlerMetricsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CrawlerMetricsList'] = CrawlerMetricsList.stub(stub[:crawler_metrics_list]) unless stub[:crawler_metrics_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CrawlerMetricsList
    class CrawlerMetricsList
      def self.default(visited=[])
        return nil if visited.include?('CrawlerMetricsList')
        visited = visited + ['CrawlerMetricsList']
        [
          CrawlerMetrics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CrawlerMetrics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CrawlerMetrics
    class CrawlerMetrics
      def self.default(visited=[])
        return nil if visited.include?('CrawlerMetrics')
        visited = visited + ['CrawlerMetrics']
        {
          crawler_name: 'crawler_name',
          time_left_seconds: 1.0,
          still_estimating: false,
          last_runtime_seconds: 1.0,
          median_runtime_seconds: 1.0,
          tables_created: 1,
          tables_updated: 1,
          tables_deleted: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CrawlerMetrics.new
        data = {}
        data['CrawlerName'] = stub[:crawler_name] unless stub[:crawler_name].nil?
        data['TimeLeftSeconds'] = Hearth::NumberHelper.serialize(stub[:time_left_seconds])
        data['StillEstimating'] = stub[:still_estimating] unless stub[:still_estimating].nil?
        data['LastRuntimeSeconds'] = Hearth::NumberHelper.serialize(stub[:last_runtime_seconds])
        data['MedianRuntimeSeconds'] = Hearth::NumberHelper.serialize(stub[:median_runtime_seconds])
        data['TablesCreated'] = stub[:tables_created] unless stub[:tables_created].nil?
        data['TablesUpdated'] = stub[:tables_updated] unless stub[:tables_updated].nil?
        data['TablesDeleted'] = stub[:tables_deleted] unless stub[:tables_deleted].nil?
        data
      end
    end

    # Operation Stubber for GetCrawlers
    class GetCrawlers
      def self.default(visited=[])
        {
          crawlers: CrawlerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Crawlers'] = CrawlerList.stub(stub[:crawlers]) unless stub[:crawlers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCustomEntityType
    class GetCustomEntityType
      def self.default(visited=[])
        {
          name: 'name',
          regex_string: 'regex_string',
          context_words: ContextWords.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegexString'] = stub[:regex_string] unless stub[:regex_string].nil?
        data['ContextWords'] = ContextWords.stub(stub[:context_words]) unless stub[:context_words].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDataCatalogEncryptionSettings
    class GetDataCatalogEncryptionSettings
      def self.default(visited=[])
        {
          data_catalog_encryption_settings: DataCatalogEncryptionSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataCatalogEncryptionSettings'] = DataCatalogEncryptionSettings.stub(stub[:data_catalog_encryption_settings]) unless stub[:data_catalog_encryption_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataCatalogEncryptionSettings
    class DataCatalogEncryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogEncryptionSettings')
        visited = visited + ['DataCatalogEncryptionSettings']
        {
          encryption_at_rest: EncryptionAtRest.default(visited),
          connection_password_encryption: ConnectionPasswordEncryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCatalogEncryptionSettings.new
        data = {}
        data['EncryptionAtRest'] = EncryptionAtRest.stub(stub[:encryption_at_rest]) unless stub[:encryption_at_rest].nil?
        data['ConnectionPasswordEncryption'] = ConnectionPasswordEncryption.stub(stub[:connection_password_encryption]) unless stub[:connection_password_encryption].nil?
        data
      end
    end

    # Structure Stubber for ConnectionPasswordEncryption
    class ConnectionPasswordEncryption
      def self.default(visited=[])
        return nil if visited.include?('ConnectionPasswordEncryption')
        visited = visited + ['ConnectionPasswordEncryption']
        {
          return_connection_password_encrypted: false,
          aws_kms_key_id: 'aws_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionPasswordEncryption.new
        data = {}
        data['ReturnConnectionPasswordEncrypted'] = stub[:return_connection_password_encrypted] unless stub[:return_connection_password_encrypted].nil?
        data['AwsKmsKeyId'] = stub[:aws_kms_key_id] unless stub[:aws_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for EncryptionAtRest
    class EncryptionAtRest
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAtRest')
        visited = visited + ['EncryptionAtRest']
        {
          catalog_encryption_mode: 'catalog_encryption_mode',
          sse_aws_kms_key_id: 'sse_aws_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionAtRest.new
        data = {}
        data['CatalogEncryptionMode'] = stub[:catalog_encryption_mode] unless stub[:catalog_encryption_mode].nil?
        data['SseAwsKmsKeyId'] = stub[:sse_aws_kms_key_id] unless stub[:sse_aws_kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for GetDatabase
    class GetDatabase
      def self.default(visited=[])
        {
          database: Database.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Database'] = Database.stub(stub[:database]) unless stub[:database].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Database
    class Database
      def self.default(visited=[])
        return nil if visited.include?('Database')
        visited = visited + ['Database']
        {
          name: 'name',
          description: 'description',
          location_uri: 'location_uri',
          parameters: ParametersMap.default(visited),
          create_time: Time.now,
          create_table_default_permissions: PrincipalPermissionsList.default(visited),
          target_database: DatabaseIdentifier.default(visited),
          catalog_id: 'catalog_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Database.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['Parameters'] = ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['CreateTableDefaultPermissions'] = PrincipalPermissionsList.stub(stub[:create_table_default_permissions]) unless stub[:create_table_default_permissions].nil?
        data['TargetDatabase'] = DatabaseIdentifier.stub(stub[:target_database]) unless stub[:target_database].nil?
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data
      end
    end

    # Structure Stubber for DatabaseIdentifier
    class DatabaseIdentifier
      def self.default(visited=[])
        return nil if visited.include?('DatabaseIdentifier')
        visited = visited + ['DatabaseIdentifier']
        {
          catalog_id: 'catalog_id',
          database_name: 'database_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseIdentifier.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data
      end
    end

    # List Stubber for PrincipalPermissionsList
    class PrincipalPermissionsList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalPermissionsList')
        visited = visited + ['PrincipalPermissionsList']
        [
          PrincipalPermissions.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PrincipalPermissions.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PrincipalPermissions
    class PrincipalPermissions
      def self.default(visited=[])
        return nil if visited.include?('PrincipalPermissions')
        visited = visited + ['PrincipalPermissions']
        {
          principal: DataLakePrincipal.default(visited),
          permissions: PermissionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrincipalPermissions.new
        data = {}
        data['Principal'] = DataLakePrincipal.stub(stub[:principal]) unless stub[:principal].nil?
        data['Permissions'] = PermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # List Stubber for PermissionList
    class PermissionList
      def self.default(visited=[])
        return nil if visited.include?('PermissionList')
        visited = visited + ['PermissionList']
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

    # Structure Stubber for DataLakePrincipal
    class DataLakePrincipal
      def self.default(visited=[])
        return nil if visited.include?('DataLakePrincipal')
        visited = visited + ['DataLakePrincipal']
        {
          data_lake_principal_identifier: 'data_lake_principal_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataLakePrincipal.new
        data = {}
        data['DataLakePrincipalIdentifier'] = stub[:data_lake_principal_identifier] unless stub[:data_lake_principal_identifier].nil?
        data
      end
    end

    # Operation Stubber for GetDatabases
    class GetDatabases
      def self.default(visited=[])
        {
          database_list: DatabaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatabaseList'] = DatabaseList.stub(stub[:database_list]) unless stub[:database_list].nil?
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
          Database.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Database.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDataflowGraph
    class GetDataflowGraph
      def self.default(visited=[])
        {
          dag_nodes: DagNodes.default(visited),
          dag_edges: DagEdges.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DagNodes'] = DagNodes.stub(stub[:dag_nodes]) unless stub[:dag_nodes].nil?
        data['DagEdges'] = DagEdges.stub(stub[:dag_edges]) unless stub[:dag_edges].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DagEdges
    class DagEdges
      def self.default(visited=[])
        return nil if visited.include?('DagEdges')
        visited = visited + ['DagEdges']
        [
          CodeGenEdge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CodeGenEdge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeGenEdge
    class CodeGenEdge
      def self.default(visited=[])
        return nil if visited.include?('CodeGenEdge')
        visited = visited + ['CodeGenEdge']
        {
          source: 'source',
          target: 'target',
          target_parameter: 'target_parameter',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeGenEdge.new
        data = {}
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['TargetParameter'] = stub[:target_parameter] unless stub[:target_parameter].nil?
        data
      end
    end

    # List Stubber for DagNodes
    class DagNodes
      def self.default(visited=[])
        return nil if visited.include?('DagNodes')
        visited = visited + ['DagNodes']
        [
          CodeGenNode.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CodeGenNode.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeGenNode
    class CodeGenNode
      def self.default(visited=[])
        return nil if visited.include?('CodeGenNode')
        visited = visited + ['CodeGenNode']
        {
          id: 'id',
          node_type: 'node_type',
          args: CodeGenNodeArgs.default(visited),
          line_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeGenNode.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['Args'] = CodeGenNodeArgs.stub(stub[:args]) unless stub[:args].nil?
        data['LineNumber'] = stub[:line_number] unless stub[:line_number].nil?
        data
      end
    end

    # List Stubber for CodeGenNodeArgs
    class CodeGenNodeArgs
      def self.default(visited=[])
        return nil if visited.include?('CodeGenNodeArgs')
        visited = visited + ['CodeGenNodeArgs']
        [
          CodeGenNodeArg.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CodeGenNodeArg.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeGenNodeArg
    class CodeGenNodeArg
      def self.default(visited=[])
        return nil if visited.include?('CodeGenNodeArg')
        visited = visited + ['CodeGenNodeArg']
        {
          name: 'name',
          value: 'value',
          param: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeGenNodeArg.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Param'] = stub[:param] unless stub[:param].nil?
        data
      end
    end

    # Operation Stubber for GetDevEndpoint
    class GetDevEndpoint
      def self.default(visited=[])
        {
          dev_endpoint: DevEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DevEndpoint'] = DevEndpoint.stub(stub[:dev_endpoint]) unless stub[:dev_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDevEndpoints
    class GetDevEndpoints
      def self.default(visited=[])
        {
          dev_endpoints: DevEndpointList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DevEndpoints'] = DevEndpointList.stub(stub[:dev_endpoints]) unless stub[:dev_endpoints].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJob
    class GetJob
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJobBookmark
    class GetJobBookmark
      def self.default(visited=[])
        {
          job_bookmark_entry: JobBookmarkEntry.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobBookmarkEntry'] = JobBookmarkEntry.stub(stub[:job_bookmark_entry]) unless stub[:job_bookmark_entry].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for JobBookmarkEntry
    class JobBookmarkEntry
      def self.default(visited=[])
        return nil if visited.include?('JobBookmarkEntry')
        visited = visited + ['JobBookmarkEntry']
        {
          job_name: 'job_name',
          version: 1,
          run: 1,
          attempt: 1,
          previous_run_id: 'previous_run_id',
          run_id: 'run_id',
          job_bookmark: 'job_bookmark',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobBookmarkEntry.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Run'] = stub[:run] unless stub[:run].nil?
        data['Attempt'] = stub[:attempt] unless stub[:attempt].nil?
        data['PreviousRunId'] = stub[:previous_run_id] unless stub[:previous_run_id].nil?
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data['JobBookmark'] = stub[:job_bookmark] unless stub[:job_bookmark].nil?
        data
      end
    end

    # Operation Stubber for GetJobRun
    class GetJobRun
      def self.default(visited=[])
        {
          job_run: JobRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobRun'] = JobRun.stub(stub[:job_run]) unless stub[:job_run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJobRuns
    class GetJobRuns
      def self.default(visited=[])
        {
          job_runs: JobRunList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobRuns'] = JobRunList.stub(stub[:job_runs]) unless stub[:job_runs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJobs
    class GetJobs
      def self.default(visited=[])
        {
          jobs: JobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Jobs'] = JobList.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMLTaskRun
    class GetMLTaskRun
      def self.default(visited=[])
        {
          transform_id: 'transform_id',
          task_run_id: 'task_run_id',
          status: 'status',
          log_group_name: 'log_group_name',
          properties: TaskRunProperties.default(visited),
          error_string: 'error_string',
          started_on: Time.now,
          last_modified_on: Time.now,
          completed_on: Time.now,
          execution_time: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['Properties'] = TaskRunProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['ErrorString'] = stub[:error_string] unless stub[:error_string].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['ExecutionTime'] = stub[:execution_time] unless stub[:execution_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TaskRunProperties
    class TaskRunProperties
      def self.default(visited=[])
        return nil if visited.include?('TaskRunProperties')
        visited = visited + ['TaskRunProperties']
        {
          task_type: 'task_type',
          import_labels_task_run_properties: ImportLabelsTaskRunProperties.default(visited),
          export_labels_task_run_properties: ExportLabelsTaskRunProperties.default(visited),
          labeling_set_generation_task_run_properties: LabelingSetGenerationTaskRunProperties.default(visited),
          find_matches_task_run_properties: FindMatchesTaskRunProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskRunProperties.new
        data = {}
        data['TaskType'] = stub[:task_type] unless stub[:task_type].nil?
        data['ImportLabelsTaskRunProperties'] = ImportLabelsTaskRunProperties.stub(stub[:import_labels_task_run_properties]) unless stub[:import_labels_task_run_properties].nil?
        data['ExportLabelsTaskRunProperties'] = ExportLabelsTaskRunProperties.stub(stub[:export_labels_task_run_properties]) unless stub[:export_labels_task_run_properties].nil?
        data['LabelingSetGenerationTaskRunProperties'] = LabelingSetGenerationTaskRunProperties.stub(stub[:labeling_set_generation_task_run_properties]) unless stub[:labeling_set_generation_task_run_properties].nil?
        data['FindMatchesTaskRunProperties'] = FindMatchesTaskRunProperties.stub(stub[:find_matches_task_run_properties]) unless stub[:find_matches_task_run_properties].nil?
        data
      end
    end

    # Structure Stubber for FindMatchesTaskRunProperties
    class FindMatchesTaskRunProperties
      def self.default(visited=[])
        return nil if visited.include?('FindMatchesTaskRunProperties')
        visited = visited + ['FindMatchesTaskRunProperties']
        {
          job_id: 'job_id',
          job_name: 'job_name',
          job_run_id: 'job_run_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::FindMatchesTaskRunProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        data
      end
    end

    # Structure Stubber for LabelingSetGenerationTaskRunProperties
    class LabelingSetGenerationTaskRunProperties
      def self.default(visited=[])
        return nil if visited.include?('LabelingSetGenerationTaskRunProperties')
        visited = visited + ['LabelingSetGenerationTaskRunProperties']
        {
          output_s3_path: 'output_s3_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingSetGenerationTaskRunProperties.new
        data = {}
        data['OutputS3Path'] = stub[:output_s3_path] unless stub[:output_s3_path].nil?
        data
      end
    end

    # Structure Stubber for ExportLabelsTaskRunProperties
    class ExportLabelsTaskRunProperties
      def self.default(visited=[])
        return nil if visited.include?('ExportLabelsTaskRunProperties')
        visited = visited + ['ExportLabelsTaskRunProperties']
        {
          output_s3_path: 'output_s3_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportLabelsTaskRunProperties.new
        data = {}
        data['OutputS3Path'] = stub[:output_s3_path] unless stub[:output_s3_path].nil?
        data
      end
    end

    # Structure Stubber for ImportLabelsTaskRunProperties
    class ImportLabelsTaskRunProperties
      def self.default(visited=[])
        return nil if visited.include?('ImportLabelsTaskRunProperties')
        visited = visited + ['ImportLabelsTaskRunProperties']
        {
          input_s3_path: 'input_s3_path',
          replace: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportLabelsTaskRunProperties.new
        data = {}
        data['InputS3Path'] = stub[:input_s3_path] unless stub[:input_s3_path].nil?
        data['Replace'] = stub[:replace] unless stub[:replace].nil?
        data
      end
    end

    # Operation Stubber for GetMLTaskRuns
    class GetMLTaskRuns
      def self.default(visited=[])
        {
          task_runs: TaskRunList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskRuns'] = TaskRunList.stub(stub[:task_runs]) unless stub[:task_runs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TaskRunList
    class TaskRunList
      def self.default(visited=[])
        return nil if visited.include?('TaskRunList')
        visited = visited + ['TaskRunList']
        [
          TaskRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TaskRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskRun
    class TaskRun
      def self.default(visited=[])
        return nil if visited.include?('TaskRun')
        visited = visited + ['TaskRun']
        {
          transform_id: 'transform_id',
          task_run_id: 'task_run_id',
          status: 'status',
          log_group_name: 'log_group_name',
          properties: TaskRunProperties.default(visited),
          error_string: 'error_string',
          started_on: Time.now,
          last_modified_on: Time.now,
          completed_on: Time.now,
          execution_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskRun.new
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['Properties'] = TaskRunProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['ErrorString'] = stub[:error_string] unless stub[:error_string].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['ExecutionTime'] = stub[:execution_time] unless stub[:execution_time].nil?
        data
      end
    end

    # Operation Stubber for GetMLTransform
    class GetMLTransform
      def self.default(visited=[])
        {
          transform_id: 'transform_id',
          name: 'name',
          description: 'description',
          status: 'status',
          created_on: Time.now,
          last_modified_on: Time.now,
          input_record_tables: GlueTables.default(visited),
          parameters: TransformParameters.default(visited),
          evaluation_metrics: EvaluationMetrics.default(visited),
          label_count: 1,
          schema: TransformSchema.default(visited),
          role: 'role',
          glue_version: 'glue_version',
          max_capacity: 1.0,
          worker_type: 'worker_type',
          number_of_workers: 1,
          timeout: 1,
          max_retries: 1,
          transform_encryption: TransformEncryption.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['InputRecordTables'] = GlueTables.stub(stub[:input_record_tables]) unless stub[:input_record_tables].nil?
        data['Parameters'] = TransformParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['EvaluationMetrics'] = EvaluationMetrics.stub(stub[:evaluation_metrics]) unless stub[:evaluation_metrics].nil?
        data['LabelCount'] = stub[:label_count] unless stub[:label_count].nil?
        data['Schema'] = TransformSchema.stub(stub[:schema]) unless stub[:schema].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(stub[:max_capacity])
        data['WorkerType'] = stub[:worker_type] unless stub[:worker_type].nil?
        data['NumberOfWorkers'] = stub[:number_of_workers] unless stub[:number_of_workers].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MaxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['TransformEncryption'] = TransformEncryption.stub(stub[:transform_encryption]) unless stub[:transform_encryption].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TransformEncryption
    class TransformEncryption
      def self.default(visited=[])
        return nil if visited.include?('TransformEncryption')
        visited = visited + ['TransformEncryption']
        {
          ml_user_data_encryption: MLUserDataEncryption.default(visited),
          task_run_security_configuration_name: 'task_run_security_configuration_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformEncryption.new
        data = {}
        data['MlUserDataEncryption'] = MLUserDataEncryption.stub(stub[:ml_user_data_encryption]) unless stub[:ml_user_data_encryption].nil?
        data['TaskRunSecurityConfigurationName'] = stub[:task_run_security_configuration_name] unless stub[:task_run_security_configuration_name].nil?
        data
      end
    end

    # Structure Stubber for MLUserDataEncryption
    class MLUserDataEncryption
      def self.default(visited=[])
        return nil if visited.include?('MLUserDataEncryption')
        visited = visited + ['MLUserDataEncryption']
        {
          ml_user_data_encryption_mode: 'ml_user_data_encryption_mode',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MLUserDataEncryption.new
        data = {}
        data['MlUserDataEncryptionMode'] = stub[:ml_user_data_encryption_mode] unless stub[:ml_user_data_encryption_mode].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # List Stubber for TransformSchema
    class TransformSchema
      def self.default(visited=[])
        return nil if visited.include?('TransformSchema')
        visited = visited + ['TransformSchema']
        [
          SchemaColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaColumn
    class SchemaColumn
      def self.default(visited=[])
        return nil if visited.include?('SchemaColumn')
        visited = visited + ['SchemaColumn']
        {
          name: 'name',
          data_type: 'data_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaColumn.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data
      end
    end

    # Structure Stubber for EvaluationMetrics
    class EvaluationMetrics
      def self.default(visited=[])
        return nil if visited.include?('EvaluationMetrics')
        visited = visited + ['EvaluationMetrics']
        {
          transform_type: 'transform_type',
          find_matches_metrics: FindMatchesMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationMetrics.new
        data = {}
        data['TransformType'] = stub[:transform_type] unless stub[:transform_type].nil?
        data['FindMatchesMetrics'] = FindMatchesMetrics.stub(stub[:find_matches_metrics]) unless stub[:find_matches_metrics].nil?
        data
      end
    end

    # Structure Stubber for FindMatchesMetrics
    class FindMatchesMetrics
      def self.default(visited=[])
        return nil if visited.include?('FindMatchesMetrics')
        visited = visited + ['FindMatchesMetrics']
        {
          area_under_pr_curve: 1.0,
          precision: 1.0,
          recall: 1.0,
          f1: 1.0,
          confusion_matrix: ConfusionMatrix.default(visited),
          column_importances: ColumnImportanceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindMatchesMetrics.new
        data = {}
        data['AreaUnderPRCurve'] = Hearth::NumberHelper.serialize(stub[:area_under_pr_curve])
        data['Precision'] = Hearth::NumberHelper.serialize(stub[:precision])
        data['Recall'] = Hearth::NumberHelper.serialize(stub[:recall])
        data['F1'] = Hearth::NumberHelper.serialize(stub[:f1])
        data['ConfusionMatrix'] = ConfusionMatrix.stub(stub[:confusion_matrix]) unless stub[:confusion_matrix].nil?
        data['ColumnImportances'] = ColumnImportanceList.stub(stub[:column_importances]) unless stub[:column_importances].nil?
        data
      end
    end

    # List Stubber for ColumnImportanceList
    class ColumnImportanceList
      def self.default(visited=[])
        return nil if visited.include?('ColumnImportanceList')
        visited = visited + ['ColumnImportanceList']
        [
          ColumnImportance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnImportance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnImportance
    class ColumnImportance
      def self.default(visited=[])
        return nil if visited.include?('ColumnImportance')
        visited = visited + ['ColumnImportance']
        {
          column_name: 'column_name',
          importance: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnImportance.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['Importance'] = Hearth::NumberHelper.serialize(stub[:importance])
        data
      end
    end

    # Structure Stubber for ConfusionMatrix
    class ConfusionMatrix
      def self.default(visited=[])
        return nil if visited.include?('ConfusionMatrix')
        visited = visited + ['ConfusionMatrix']
        {
          num_true_positives: 1,
          num_false_positives: 1,
          num_true_negatives: 1,
          num_false_negatives: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfusionMatrix.new
        data = {}
        data['NumTruePositives'] = stub[:num_true_positives] unless stub[:num_true_positives].nil?
        data['NumFalsePositives'] = stub[:num_false_positives] unless stub[:num_false_positives].nil?
        data['NumTrueNegatives'] = stub[:num_true_negatives] unless stub[:num_true_negatives].nil?
        data['NumFalseNegatives'] = stub[:num_false_negatives] unless stub[:num_false_negatives].nil?
        data
      end
    end

    # Structure Stubber for TransformParameters
    class TransformParameters
      def self.default(visited=[])
        return nil if visited.include?('TransformParameters')
        visited = visited + ['TransformParameters']
        {
          transform_type: 'transform_type',
          find_matches_parameters: FindMatchesParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformParameters.new
        data = {}
        data['TransformType'] = stub[:transform_type] unless stub[:transform_type].nil?
        data['FindMatchesParameters'] = FindMatchesParameters.stub(stub[:find_matches_parameters]) unless stub[:find_matches_parameters].nil?
        data
      end
    end

    # Structure Stubber for FindMatchesParameters
    class FindMatchesParameters
      def self.default(visited=[])
        return nil if visited.include?('FindMatchesParameters')
        visited = visited + ['FindMatchesParameters']
        {
          primary_key_column_name: 'primary_key_column_name',
          precision_recall_tradeoff: 1.0,
          accuracy_cost_tradeoff: 1.0,
          enforce_provided_labels: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FindMatchesParameters.new
        data = {}
        data['PrimaryKeyColumnName'] = stub[:primary_key_column_name] unless stub[:primary_key_column_name].nil?
        data['PrecisionRecallTradeoff'] = Hearth::NumberHelper.serialize(stub[:precision_recall_tradeoff])
        data['AccuracyCostTradeoff'] = Hearth::NumberHelper.serialize(stub[:accuracy_cost_tradeoff])
        data['EnforceProvidedLabels'] = stub[:enforce_provided_labels] unless stub[:enforce_provided_labels].nil?
        data
      end
    end

    # List Stubber for GlueTables
    class GlueTables
      def self.default(visited=[])
        return nil if visited.include?('GlueTables')
        visited = visited + ['GlueTables']
        [
          GlueTable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlueTable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GlueTable
    class GlueTable
      def self.default(visited=[])
        return nil if visited.include?('GlueTable')
        visited = visited + ['GlueTable']
        {
          database_name: 'database_name',
          table_name: 'table_name',
          catalog_id: 'catalog_id',
          connection_name: 'connection_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlueTable.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data
      end
    end

    # Operation Stubber for GetMLTransforms
    class GetMLTransforms
      def self.default(visited=[])
        {
          transforms: TransformList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Transforms'] = TransformList.stub(stub[:transforms]) unless stub[:transforms].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TransformList
    class TransformList
      def self.default(visited=[])
        return nil if visited.include?('TransformList')
        visited = visited + ['TransformList']
        [
          MLTransform.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MLTransform.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MLTransform
    class MLTransform
      def self.default(visited=[])
        return nil if visited.include?('MLTransform')
        visited = visited + ['MLTransform']
        {
          transform_id: 'transform_id',
          name: 'name',
          description: 'description',
          status: 'status',
          created_on: Time.now,
          last_modified_on: Time.now,
          input_record_tables: GlueTables.default(visited),
          parameters: TransformParameters.default(visited),
          evaluation_metrics: EvaluationMetrics.default(visited),
          label_count: 1,
          schema: TransformSchema.default(visited),
          role: 'role',
          glue_version: 'glue_version',
          max_capacity: 1.0,
          worker_type: 'worker_type',
          number_of_workers: 1,
          timeout: 1,
          max_retries: 1,
          transform_encryption: TransformEncryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MLTransform.new
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['LastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['InputRecordTables'] = GlueTables.stub(stub[:input_record_tables]) unless stub[:input_record_tables].nil?
        data['Parameters'] = TransformParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['EvaluationMetrics'] = EvaluationMetrics.stub(stub[:evaluation_metrics]) unless stub[:evaluation_metrics].nil?
        data['LabelCount'] = stub[:label_count] unless stub[:label_count].nil?
        data['Schema'] = TransformSchema.stub(stub[:schema]) unless stub[:schema].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['GlueVersion'] = stub[:glue_version] unless stub[:glue_version].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(stub[:max_capacity])
        data['WorkerType'] = stub[:worker_type] unless stub[:worker_type].nil?
        data['NumberOfWorkers'] = stub[:number_of_workers] unless stub[:number_of_workers].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MaxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['TransformEncryption'] = TransformEncryption.stub(stub[:transform_encryption]) unless stub[:transform_encryption].nil?
        data
      end
    end

    # Operation Stubber for GetMapping
    class GetMapping
      def self.default(visited=[])
        {
          mapping: MappingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Mapping'] = MappingList.stub(stub[:mapping]) unless stub[:mapping].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MappingList
    class MappingList
      def self.default(visited=[])
        return nil if visited.include?('MappingList')
        visited = visited + ['MappingList']
        [
          MappingEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MappingEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MappingEntry
    class MappingEntry
      def self.default(visited=[])
        return nil if visited.include?('MappingEntry')
        visited = visited + ['MappingEntry']
        {
          source_table: 'source_table',
          source_path: 'source_path',
          source_type: 'source_type',
          target_table: 'target_table',
          target_path: 'target_path',
          target_type: 'target_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MappingEntry.new
        data = {}
        data['SourceTable'] = stub[:source_table] unless stub[:source_table].nil?
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['TargetTable'] = stub[:target_table] unless stub[:target_table].nil?
        data['TargetPath'] = stub[:target_path] unless stub[:target_path].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data
      end
    end

    # Operation Stubber for GetPartition
    class GetPartition
      def self.default(visited=[])
        {
          partition: Partition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Partition'] = Partition.stub(stub[:partition]) unless stub[:partition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPartitionIndexes
    class GetPartitionIndexes
      def self.default(visited=[])
        {
          partition_index_descriptor_list: PartitionIndexDescriptorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PartitionIndexDescriptorList'] = PartitionIndexDescriptorList.stub(stub[:partition_index_descriptor_list]) unless stub[:partition_index_descriptor_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PartitionIndexDescriptorList
    class PartitionIndexDescriptorList
      def self.default(visited=[])
        return nil if visited.include?('PartitionIndexDescriptorList')
        visited = visited + ['PartitionIndexDescriptorList']
        [
          PartitionIndexDescriptor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PartitionIndexDescriptor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartitionIndexDescriptor
    class PartitionIndexDescriptor
      def self.default(visited=[])
        return nil if visited.include?('PartitionIndexDescriptor')
        visited = visited + ['PartitionIndexDescriptor']
        {
          index_name: 'index_name',
          keys: KeySchemaElementList.default(visited),
          index_status: 'index_status',
          backfill_errors: BackfillErrors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PartitionIndexDescriptor.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['Keys'] = KeySchemaElementList.stub(stub[:keys]) unless stub[:keys].nil?
        data['IndexStatus'] = stub[:index_status] unless stub[:index_status].nil?
        data['BackfillErrors'] = BackfillErrors.stub(stub[:backfill_errors]) unless stub[:backfill_errors].nil?
        data
      end
    end

    # List Stubber for BackfillErrors
    class BackfillErrors
      def self.default(visited=[])
        return nil if visited.include?('BackfillErrors')
        visited = visited + ['BackfillErrors']
        [
          BackfillError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BackfillError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackfillError
    class BackfillError
      def self.default(visited=[])
        return nil if visited.include?('BackfillError')
        visited = visited + ['BackfillError']
        {
          code: 'code',
          partitions: BackfillErroredPartitionsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackfillError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Partitions'] = BackfillErroredPartitionsList.stub(stub[:partitions]) unless stub[:partitions].nil?
        data
      end
    end

    # List Stubber for BackfillErroredPartitionsList
    class BackfillErroredPartitionsList
      def self.default(visited=[])
        return nil if visited.include?('BackfillErroredPartitionsList')
        visited = visited + ['BackfillErroredPartitionsList']
        [
          PartitionValueList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PartitionValueList.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for KeySchemaElementList
    class KeySchemaElementList
      def self.default(visited=[])
        return nil if visited.include?('KeySchemaElementList')
        visited = visited + ['KeySchemaElementList']
        [
          KeySchemaElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeySchemaElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeySchemaElement
    class KeySchemaElement
      def self.default(visited=[])
        return nil if visited.include?('KeySchemaElement')
        visited = visited + ['KeySchemaElement']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeySchemaElement.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for GetPartitions
    class GetPartitions
      def self.default(visited=[])
        {
          partitions: PartitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Partitions'] = PartitionList.stub(stub[:partitions]) unless stub[:partitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPlan
    class GetPlan
      def self.default(visited=[])
        {
          python_script: 'python_script',
          scala_code: 'scala_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PythonScript'] = stub[:python_script] unless stub[:python_script].nil?
        data['ScalaCode'] = stub[:scala_code] unless stub[:scala_code].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRegistry
    class GetRegistry
      def self.default(visited=[])
        {
          registry_name: 'registry_name',
          registry_arn: 'registry_arn',
          description: 'description',
          status: 'status',
          created_time: 'created_time',
          updated_time: 'updated_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['UpdatedTime'] = stub[:updated_time] unless stub[:updated_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResourcePolicies
    class GetResourcePolicies
      def self.default(visited=[])
        {
          get_resource_policies_response_list: GetResourcePoliciesResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GetResourcePoliciesResponseList'] = GetResourcePoliciesResponseList.stub(stub[:get_resource_policies_response_list]) unless stub[:get_resource_policies_response_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GetResourcePoliciesResponseList
    class GetResourcePoliciesResponseList
      def self.default(visited=[])
        return nil if visited.include?('GetResourcePoliciesResponseList')
        visited = visited + ['GetResourcePoliciesResponseList']
        [
          GluePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GluePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GluePolicy
    class GluePolicy
      def self.default(visited=[])
        return nil if visited.include?('GluePolicy')
        visited = visited + ['GluePolicy']
        {
          policy_in_json: 'policy_in_json',
          policy_hash: 'policy_hash',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GluePolicy.new
        data = {}
        data['PolicyInJson'] = stub[:policy_in_json] unless stub[:policy_in_json].nil?
        data['PolicyHash'] = stub[:policy_hash] unless stub[:policy_hash].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for GetResourcePolicy
    class GetResourcePolicy
      def self.default(visited=[])
        {
          policy_in_json: 'policy_in_json',
          policy_hash: 'policy_hash',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyInJson'] = stub[:policy_in_json] unless stub[:policy_in_json].nil?
        data['PolicyHash'] = stub[:policy_hash] unless stub[:policy_hash].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSchema
    class GetSchema
      def self.default(visited=[])
        {
          registry_name: 'registry_name',
          registry_arn: 'registry_arn',
          schema_name: 'schema_name',
          schema_arn: 'schema_arn',
          description: 'description',
          data_format: 'data_format',
          compatibility: 'compatibility',
          schema_checkpoint: 1,
          latest_schema_version: 1,
          next_schema_version: 1,
          schema_status: 'schema_status',
          created_time: 'created_time',
          updated_time: 'updated_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['Compatibility'] = stub[:compatibility] unless stub[:compatibility].nil?
        data['SchemaCheckpoint'] = stub[:schema_checkpoint] unless stub[:schema_checkpoint].nil?
        data['LatestSchemaVersion'] = stub[:latest_schema_version] unless stub[:latest_schema_version].nil?
        data['NextSchemaVersion'] = stub[:next_schema_version] unless stub[:next_schema_version].nil?
        data['SchemaStatus'] = stub[:schema_status] unless stub[:schema_status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['UpdatedTime'] = stub[:updated_time] unless stub[:updated_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSchemaByDefinition
    class GetSchemaByDefinition
      def self.default(visited=[])
        {
          schema_version_id: 'schema_version_id',
          schema_arn: 'schema_arn',
          data_format: 'data_format',
          status: 'status',
          created_time: 'created_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSchemaVersion
    class GetSchemaVersion
      def self.default(visited=[])
        {
          schema_version_id: 'schema_version_id',
          schema_definition: 'schema_definition',
          data_format: 'data_format',
          schema_arn: 'schema_arn',
          version_number: 1,
          status: 'status',
          created_time: 'created_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['SchemaDefinition'] = stub[:schema_definition] unless stub[:schema_definition].nil?
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSchemaVersionsDiff
    class GetSchemaVersionsDiff
      def self.default(visited=[])
        {
          diff: 'diff',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Diff'] = stub[:diff] unless stub[:diff].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSecurityConfiguration
    class GetSecurityConfiguration
      def self.default(visited=[])
        {
          security_configuration: SecurityConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SecurityConfiguration'] = SecurityConfiguration.stub(stub[:security_configuration]) unless stub[:security_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SecurityConfiguration
    class SecurityConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SecurityConfiguration')
        visited = visited + ['SecurityConfiguration']
        {
          name: 'name',
          created_time_stamp: Time.now,
          encryption_configuration: EncryptionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time_stamp]).to_i unless stub[:created_time_stamp].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          s3_encryption: S3EncryptionList.default(visited),
          cloud_watch_encryption: CloudWatchEncryption.default(visited),
          job_bookmarks_encryption: JobBookmarksEncryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['S3Encryption'] = S3EncryptionList.stub(stub[:s3_encryption]) unless stub[:s3_encryption].nil?
        data['CloudWatchEncryption'] = CloudWatchEncryption.stub(stub[:cloud_watch_encryption]) unless stub[:cloud_watch_encryption].nil?
        data['JobBookmarksEncryption'] = JobBookmarksEncryption.stub(stub[:job_bookmarks_encryption]) unless stub[:job_bookmarks_encryption].nil?
        data
      end
    end

    # Structure Stubber for JobBookmarksEncryption
    class JobBookmarksEncryption
      def self.default(visited=[])
        return nil if visited.include?('JobBookmarksEncryption')
        visited = visited + ['JobBookmarksEncryption']
        {
          job_bookmarks_encryption_mode: 'job_bookmarks_encryption_mode',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobBookmarksEncryption.new
        data = {}
        data['JobBookmarksEncryptionMode'] = stub[:job_bookmarks_encryption_mode] unless stub[:job_bookmarks_encryption_mode].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchEncryption
    class CloudWatchEncryption
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchEncryption')
        visited = visited + ['CloudWatchEncryption']
        {
          cloud_watch_encryption_mode: 'cloud_watch_encryption_mode',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchEncryption.new
        data = {}
        data['CloudWatchEncryptionMode'] = stub[:cloud_watch_encryption_mode] unless stub[:cloud_watch_encryption_mode].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # List Stubber for S3EncryptionList
    class S3EncryptionList
      def self.default(visited=[])
        return nil if visited.include?('S3EncryptionList')
        visited = visited + ['S3EncryptionList']
        [
          S3Encryption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << S3Encryption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3Encryption
    class S3Encryption
      def self.default(visited=[])
        return nil if visited.include?('S3Encryption')
        visited = visited + ['S3Encryption']
        {
          s3_encryption_mode: 's3_encryption_mode',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Encryption.new
        data = {}
        data['S3EncryptionMode'] = stub[:s3_encryption_mode] unless stub[:s3_encryption_mode].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Operation Stubber for GetSecurityConfigurations
    class GetSecurityConfigurations
      def self.default(visited=[])
        {
          security_configurations: SecurityConfigurationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SecurityConfigurations'] = SecurityConfigurationList.stub(stub[:security_configurations]) unless stub[:security_configurations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SecurityConfigurationList
    class SecurityConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('SecurityConfigurationList')
        visited = visited + ['SecurityConfigurationList']
        [
          SecurityConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetSession
    class GetSession
      def self.default(visited=[])
        {
          session: Session.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Session'] = Session.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetStatement
    class GetStatement
      def self.default(visited=[])
        {
          statement: Statement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Statement'] = Statement.stub(stub[:statement]) unless stub[:statement].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Statement
    class Statement
      def self.default(visited=[])
        return nil if visited.include?('Statement')
        visited = visited + ['Statement']
        {
          id: 1,
          code: 'code',
          state: 'state',
          output: StatementOutput.default(visited),
          progress: 1.0,
          started_on: 1,
          completed_on: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Statement.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Output'] = StatementOutput.stub(stub[:output]) unless stub[:output].nil?
        data['Progress'] = Hearth::NumberHelper.serialize(stub[:progress])
        data['StartedOn'] = stub[:started_on] unless stub[:started_on].nil?
        data['CompletedOn'] = stub[:completed_on] unless stub[:completed_on].nil?
        data
      end
    end

    # Structure Stubber for StatementOutput
    class StatementOutput
      def self.default(visited=[])
        return nil if visited.include?('StatementOutput')
        visited = visited + ['StatementOutput']
        {
          data: StatementOutputData.default(visited),
          execution_count: 1,
          status: 'status',
          error_name: 'error_name',
          error_value: 'error_value',
          traceback: OrchestrationStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatementOutput.new
        data = {}
        data['Data'] = StatementOutputData.stub(stub[:data]) unless stub[:data].nil?
        data['ExecutionCount'] = stub[:execution_count] unless stub[:execution_count].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorName'] = stub[:error_name] unless stub[:error_name].nil?
        data['ErrorValue'] = stub[:error_value] unless stub[:error_value].nil?
        data['Traceback'] = OrchestrationStringList.stub(stub[:traceback]) unless stub[:traceback].nil?
        data
      end
    end

    # Structure Stubber for StatementOutputData
    class StatementOutputData
      def self.default(visited=[])
        return nil if visited.include?('StatementOutputData')
        visited = visited + ['StatementOutputData']
        {
          text_plain: 'text_plain',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatementOutputData.new
        data = {}
        data['TextPlain'] = stub[:text_plain] unless stub[:text_plain].nil?
        data
      end
    end

    # Operation Stubber for GetTable
    class GetTable
      def self.default(visited=[])
        {
          table: Table.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = Table.stub(stub[:table]) unless stub[:table].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Table
    class Table
      def self.default(visited=[])
        return nil if visited.include?('Table')
        visited = visited + ['Table']
        {
          name: 'name',
          database_name: 'database_name',
          description: 'description',
          owner: 'owner',
          create_time: Time.now,
          update_time: Time.now,
          last_access_time: Time.now,
          last_analyzed_time: Time.now,
          retention: 1,
          storage_descriptor: StorageDescriptor.default(visited),
          partition_keys: ColumnList.default(visited),
          view_original_text: 'view_original_text',
          view_expanded_text: 'view_expanded_text',
          table_type: 'table_type',
          parameters: ParametersMap.default(visited),
          created_by: 'created_by',
          is_registered_with_lake_formation: false,
          target_table: TableIdentifier.default(visited),
          catalog_id: 'catalog_id',
          version_id: 'version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Table.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data['LastAccessTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_access_time]).to_i unless stub[:last_access_time].nil?
        data['LastAnalyzedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_analyzed_time]).to_i unless stub[:last_analyzed_time].nil?
        data['Retention'] = stub[:retention] unless stub[:retention].nil?
        data['StorageDescriptor'] = StorageDescriptor.stub(stub[:storage_descriptor]) unless stub[:storage_descriptor].nil?
        data['PartitionKeys'] = ColumnList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['ViewOriginalText'] = stub[:view_original_text] unless stub[:view_original_text].nil?
        data['ViewExpandedText'] = stub[:view_expanded_text] unless stub[:view_expanded_text].nil?
        data['TableType'] = stub[:table_type] unless stub[:table_type].nil?
        data['Parameters'] = ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['IsRegisteredWithLakeFormation'] = stub[:is_registered_with_lake_formation] unless stub[:is_registered_with_lake_formation].nil?
        data['TargetTable'] = TableIdentifier.stub(stub[:target_table]) unless stub[:target_table].nil?
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data
      end
    end

    # Structure Stubber for TableIdentifier
    class TableIdentifier
      def self.default(visited=[])
        return nil if visited.include?('TableIdentifier')
        visited = visited + ['TableIdentifier']
        {
          catalog_id: 'catalog_id',
          database_name: 'database_name',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TableIdentifier.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetTableVersion
    class GetTableVersion
      def self.default(visited=[])
        {
          table_version: TableVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableVersion'] = TableVersion.stub(stub[:table_version]) unless stub[:table_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TableVersion
    class TableVersion
      def self.default(visited=[])
        return nil if visited.include?('TableVersion')
        visited = visited + ['TableVersion']
        {
          table: Table.default(visited),
          version_id: 'version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TableVersion.new
        data = {}
        data['Table'] = Table.stub(stub[:table]) unless stub[:table].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data
      end
    end

    # Operation Stubber for GetTableVersions
    class GetTableVersions
      def self.default(visited=[])
        {
          table_versions: GetTableVersionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableVersions'] = GetTableVersionsList.stub(stub[:table_versions]) unless stub[:table_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GetTableVersionsList
    class GetTableVersionsList
      def self.default(visited=[])
        return nil if visited.include?('GetTableVersionsList')
        visited = visited + ['GetTableVersionsList']
        [
          TableVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTables
    class GetTables
      def self.default(visited=[])
        {
          table_list: TableList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableList'] = TableList.stub(stub[:table_list]) unless stub[:table_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableList
    class TableList
      def self.default(visited=[])
        return nil if visited.include?('TableList')
        visited = visited + ['TableList']
        [
          Table.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Table.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTags
    class GetTags
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTrigger
    class GetTrigger
      def self.default(visited=[])
        {
          trigger: Trigger.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Trigger'] = Trigger.stub(stub[:trigger]) unless stub[:trigger].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTriggers
    class GetTriggers
      def self.default(visited=[])
        {
          triggers: TriggerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Triggers'] = TriggerList.stub(stub[:triggers]) unless stub[:triggers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetUnfilteredPartitionMetadata
    class GetUnfilteredPartitionMetadata
      def self.default(visited=[])
        {
          partition: Partition.default(visited),
          authorized_columns: NameStringList.default(visited),
          is_registered_with_lake_formation: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Partition'] = Partition.stub(stub[:partition]) unless stub[:partition].nil?
        data['AuthorizedColumns'] = NameStringList.stub(stub[:authorized_columns]) unless stub[:authorized_columns].nil?
        data['IsRegisteredWithLakeFormation'] = stub[:is_registered_with_lake_formation] unless stub[:is_registered_with_lake_formation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetUnfilteredPartitionsMetadata
    class GetUnfilteredPartitionsMetadata
      def self.default(visited=[])
        {
          unfiltered_partitions: UnfilteredPartitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UnfilteredPartitions'] = UnfilteredPartitionList.stub(stub[:unfiltered_partitions]) unless stub[:unfiltered_partitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnfilteredPartitionList
    class UnfilteredPartitionList
      def self.default(visited=[])
        return nil if visited.include?('UnfilteredPartitionList')
        visited = visited + ['UnfilteredPartitionList']
        [
          UnfilteredPartition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UnfilteredPartition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnfilteredPartition
    class UnfilteredPartition
      def self.default(visited=[])
        return nil if visited.include?('UnfilteredPartition')
        visited = visited + ['UnfilteredPartition']
        {
          partition: Partition.default(visited),
          authorized_columns: NameStringList.default(visited),
          is_registered_with_lake_formation: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UnfilteredPartition.new
        data = {}
        data['Partition'] = Partition.stub(stub[:partition]) unless stub[:partition].nil?
        data['AuthorizedColumns'] = NameStringList.stub(stub[:authorized_columns]) unless stub[:authorized_columns].nil?
        data['IsRegisteredWithLakeFormation'] = stub[:is_registered_with_lake_formation] unless stub[:is_registered_with_lake_formation].nil?
        data
      end
    end

    # Operation Stubber for GetUnfilteredTableMetadata
    class GetUnfilteredTableMetadata
      def self.default(visited=[])
        {
          table: Table.default(visited),
          authorized_columns: NameStringList.default(visited),
          is_registered_with_lake_formation: false,
          cell_filters: ColumnRowFilterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = Table.stub(stub[:table]) unless stub[:table].nil?
        data['AuthorizedColumns'] = NameStringList.stub(stub[:authorized_columns]) unless stub[:authorized_columns].nil?
        data['IsRegisteredWithLakeFormation'] = stub[:is_registered_with_lake_formation] unless stub[:is_registered_with_lake_formation].nil?
        data['CellFilters'] = ColumnRowFilterList.stub(stub[:cell_filters]) unless stub[:cell_filters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ColumnRowFilterList
    class ColumnRowFilterList
      def self.default(visited=[])
        return nil if visited.include?('ColumnRowFilterList')
        visited = visited + ['ColumnRowFilterList']
        [
          ColumnRowFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnRowFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnRowFilter
    class ColumnRowFilter
      def self.default(visited=[])
        return nil if visited.include?('ColumnRowFilter')
        visited = visited + ['ColumnRowFilter']
        {
          column_name: 'column_name',
          row_filter_expression: 'row_filter_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnRowFilter.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['RowFilterExpression'] = stub[:row_filter_expression] unless stub[:row_filter_expression].nil?
        data
      end
    end

    # Operation Stubber for GetUserDefinedFunction
    class GetUserDefinedFunction
      def self.default(visited=[])
        {
          user_defined_function: UserDefinedFunction.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserDefinedFunction'] = UserDefinedFunction.stub(stub[:user_defined_function]) unless stub[:user_defined_function].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UserDefinedFunction
    class UserDefinedFunction
      def self.default(visited=[])
        return nil if visited.include?('UserDefinedFunction')
        visited = visited + ['UserDefinedFunction']
        {
          function_name: 'function_name',
          database_name: 'database_name',
          class_name: 'class_name',
          owner_name: 'owner_name',
          owner_type: 'owner_type',
          create_time: Time.now,
          resource_uris: ResourceUriList.default(visited),
          catalog_id: 'catalog_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserDefinedFunction.new
        data = {}
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['ClassName'] = stub[:class_name] unless stub[:class_name].nil?
        data['OwnerName'] = stub[:owner_name] unless stub[:owner_name].nil?
        data['OwnerType'] = stub[:owner_type] unless stub[:owner_type].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['ResourceUris'] = ResourceUriList.stub(stub[:resource_uris]) unless stub[:resource_uris].nil?
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data
      end
    end

    # List Stubber for ResourceUriList
    class ResourceUriList
      def self.default(visited=[])
        return nil if visited.include?('ResourceUriList')
        visited = visited + ['ResourceUriList']
        [
          ResourceUri.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceUri.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceUri
    class ResourceUri
      def self.default(visited=[])
        return nil if visited.include?('ResourceUri')
        visited = visited + ['ResourceUri']
        {
          resource_type: 'resource_type',
          uri: 'uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceUri.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data
      end
    end

    # Operation Stubber for GetUserDefinedFunctions
    class GetUserDefinedFunctions
      def self.default(visited=[])
        {
          user_defined_functions: UserDefinedFunctionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserDefinedFunctions'] = UserDefinedFunctionList.stub(stub[:user_defined_functions]) unless stub[:user_defined_functions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserDefinedFunctionList
    class UserDefinedFunctionList
      def self.default(visited=[])
        return nil if visited.include?('UserDefinedFunctionList')
        visited = visited + ['UserDefinedFunctionList']
        [
          UserDefinedFunction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserDefinedFunction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetWorkflow
    class GetWorkflow
      def self.default(visited=[])
        {
          workflow: Workflow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workflow'] = Workflow.stub(stub[:workflow]) unless stub[:workflow].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWorkflowRun
    class GetWorkflowRun
      def self.default(visited=[])
        {
          run: WorkflowRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Run'] = WorkflowRun.stub(stub[:run]) unless stub[:run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWorkflowRunProperties
    class GetWorkflowRunProperties
      def self.default(visited=[])
        {
          run_properties: WorkflowRunProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RunProperties'] = WorkflowRunProperties.stub(stub[:run_properties]) unless stub[:run_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWorkflowRuns
    class GetWorkflowRuns
      def self.default(visited=[])
        {
          runs: WorkflowRuns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Runs'] = WorkflowRuns.stub(stub[:runs]) unless stub[:runs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkflowRuns
    class WorkflowRuns
      def self.default(visited=[])
        return nil if visited.include?('WorkflowRuns')
        visited = visited + ['WorkflowRuns']
        [
          WorkflowRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkflowRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ImportCatalogToGlue
    class ImportCatalogToGlue
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

    # Operation Stubber for ListBlueprints
    class ListBlueprints
      def self.default(visited=[])
        {
          blueprints: BlueprintNames.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Blueprints'] = BlueprintNames.stub(stub[:blueprints]) unless stub[:blueprints].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCrawlers
    class ListCrawlers
      def self.default(visited=[])
        {
          crawler_names: CrawlerNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CrawlerNames'] = CrawlerNameList.stub(stub[:crawler_names]) unless stub[:crawler_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCustomEntityTypes
    class ListCustomEntityTypes
      def self.default(visited=[])
        {
          custom_entity_types: CustomEntityTypes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomEntityTypes'] = CustomEntityTypes.stub(stub[:custom_entity_types]) unless stub[:custom_entity_types].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDevEndpoints
    class ListDevEndpoints
      def self.default(visited=[])
        {
          dev_endpoint_names: DevEndpointNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DevEndpointNames'] = DevEndpointNameList.stub(stub[:dev_endpoint_names]) unless stub[:dev_endpoint_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DevEndpointNameList
    class DevEndpointNameList
      def self.default(visited=[])
        return nil if visited.include?('DevEndpointNameList')
        visited = visited + ['DevEndpointNameList']
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

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          job_names: JobNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobNames'] = JobNameList.stub(stub[:job_names]) unless stub[:job_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListMLTransforms
    class ListMLTransforms
      def self.default(visited=[])
        {
          transform_ids: TransformIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformIds'] = TransformIdList.stub(stub[:transform_ids]) unless stub[:transform_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TransformIdList
    class TransformIdList
      def self.default(visited=[])
        return nil if visited.include?('TransformIdList')
        visited = visited + ['TransformIdList']
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

    # Operation Stubber for ListRegistries
    class ListRegistries
      def self.default(visited=[])
        {
          registries: RegistryListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Registries'] = RegistryListDefinition.stub(stub[:registries]) unless stub[:registries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegistryListDefinition
    class RegistryListDefinition
      def self.default(visited=[])
        return nil if visited.include?('RegistryListDefinition')
        visited = visited + ['RegistryListDefinition']
        [
          RegistryListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegistryListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegistryListItem
    class RegistryListItem
      def self.default(visited=[])
        return nil if visited.include?('RegistryListItem')
        visited = visited + ['RegistryListItem']
        {
          registry_name: 'registry_name',
          registry_arn: 'registry_arn',
          description: 'description',
          status: 'status',
          created_time: 'created_time',
          updated_time: 'updated_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistryListItem.new
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['UpdatedTime'] = stub[:updated_time] unless stub[:updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListSchemaVersions
    class ListSchemaVersions
      def self.default(visited=[])
        {
          schemas: SchemaVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Schemas'] = SchemaVersionList.stub(stub[:schemas]) unless stub[:schemas].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SchemaVersionList
    class SchemaVersionList
      def self.default(visited=[])
        return nil if visited.include?('SchemaVersionList')
        visited = visited + ['SchemaVersionList']
        [
          SchemaVersionListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaVersionListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaVersionListItem
    class SchemaVersionListItem
      def self.default(visited=[])
        return nil if visited.include?('SchemaVersionListItem')
        visited = visited + ['SchemaVersionListItem']
        {
          schema_arn: 'schema_arn',
          schema_version_id: 'schema_version_id',
          version_number: 1,
          status: 'status',
          created_time: 'created_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaVersionListItem.new
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListSchemas
    class ListSchemas
      def self.default(visited=[])
        {
          schemas: SchemaListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Schemas'] = SchemaListDefinition.stub(stub[:schemas]) unless stub[:schemas].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SchemaListDefinition
    class SchemaListDefinition
      def self.default(visited=[])
        return nil if visited.include?('SchemaListDefinition')
        visited = visited + ['SchemaListDefinition']
        [
          SchemaListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaListItem
    class SchemaListItem
      def self.default(visited=[])
        return nil if visited.include?('SchemaListItem')
        visited = visited + ['SchemaListItem']
        {
          registry_name: 'registry_name',
          schema_name: 'schema_name',
          schema_arn: 'schema_arn',
          description: 'description',
          schema_status: 'schema_status',
          created_time: 'created_time',
          updated_time: 'updated_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaListItem.new
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['SchemaStatus'] = stub[:schema_status] unless stub[:schema_status].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['UpdatedTime'] = stub[:updated_time] unless stub[:updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListSessions
    class ListSessions
      def self.default(visited=[])
        {
          ids: SessionIdList.default(visited),
          sessions: SessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Ids'] = SessionIdList.stub(stub[:ids]) unless stub[:ids].nil?
        data['Sessions'] = SessionList.stub(stub[:sessions]) unless stub[:sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SessionList
    class SessionList
      def self.default(visited=[])
        return nil if visited.include?('SessionList')
        visited = visited + ['SessionList']
        [
          Session.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Session.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for SessionIdList
    class SessionIdList
      def self.default(visited=[])
        return nil if visited.include?('SessionIdList')
        visited = visited + ['SessionIdList']
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

    # Operation Stubber for ListStatements
    class ListStatements
      def self.default(visited=[])
        {
          statements: StatementList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Statements'] = StatementList.stub(stub[:statements]) unless stub[:statements].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StatementList
    class StatementList
      def self.default(visited=[])
        return nil if visited.include?('StatementList')
        visited = visited + ['StatementList']
        [
          Statement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Statement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTriggers
    class ListTriggers
      def self.default(visited=[])
        {
          trigger_names: TriggerNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TriggerNames'] = TriggerNameList.stub(stub[:trigger_names]) unless stub[:trigger_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListWorkflows
    class ListWorkflows
      def self.default(visited=[])
        {
          workflows: WorkflowNames.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workflows'] = WorkflowNames.stub(stub[:workflows]) unless stub[:workflows].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDataCatalogEncryptionSettings
    class PutDataCatalogEncryptionSettings
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

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          policy_hash: 'policy_hash',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyHash'] = stub[:policy_hash] unless stub[:policy_hash].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutSchemaVersionMetadata
    class PutSchemaVersionMetadata
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          registry_name: 'registry_name',
          latest_version: false,
          version_number: 1,
          schema_version_id: 'schema_version_id',
          metadata_key: 'metadata_key',
          metadata_value: 'metadata_value',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['MetadataKey'] = stub[:metadata_key] unless stub[:metadata_key].nil?
        data['MetadataValue'] = stub[:metadata_value] unless stub[:metadata_value].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutWorkflowRunProperties
    class PutWorkflowRunProperties
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

    # Operation Stubber for QuerySchemaVersionMetadata
    class QuerySchemaVersionMetadata
      def self.default(visited=[])
        {
          metadata_info_map: MetadataInfoMap.default(visited),
          schema_version_id: 'schema_version_id',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MetadataInfoMap'] = MetadataInfoMap.stub(stub[:metadata_info_map]) unless stub[:metadata_info_map].nil?
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for MetadataInfoMap
    class MetadataInfoMap
      def self.default(visited=[])
        return nil if visited.include?('MetadataInfoMap')
        visited = visited + ['MetadataInfoMap']
        {
          test_key: MetadataInfo.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = MetadataInfo.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MetadataInfo
    class MetadataInfo
      def self.default(visited=[])
        return nil if visited.include?('MetadataInfo')
        visited = visited + ['MetadataInfo']
        {
          metadata_value: 'metadata_value',
          created_time: 'created_time',
          other_metadata_value_list: OtherMetadataValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetadataInfo.new
        data = {}
        data['MetadataValue'] = stub[:metadata_value] unless stub[:metadata_value].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['OtherMetadataValueList'] = OtherMetadataValueList.stub(stub[:other_metadata_value_list]) unless stub[:other_metadata_value_list].nil?
        data
      end
    end

    # List Stubber for OtherMetadataValueList
    class OtherMetadataValueList
      def self.default(visited=[])
        return nil if visited.include?('OtherMetadataValueList')
        visited = visited + ['OtherMetadataValueList']
        [
          OtherMetadataValueListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OtherMetadataValueListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OtherMetadataValueListItem
    class OtherMetadataValueListItem
      def self.default(visited=[])
        return nil if visited.include?('OtherMetadataValueListItem')
        visited = visited + ['OtherMetadataValueListItem']
        {
          metadata_value: 'metadata_value',
          created_time: 'created_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::OtherMetadataValueListItem.new
        data = {}
        data['MetadataValue'] = stub[:metadata_value] unless stub[:metadata_value].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for RegisterSchemaVersion
    class RegisterSchemaVersion
      def self.default(visited=[])
        {
          schema_version_id: 'schema_version_id',
          version_number: 1,
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveSchemaVersionMetadata
    class RemoveSchemaVersionMetadata
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          registry_name: 'registry_name',
          latest_version: false,
          version_number: 1,
          schema_version_id: 'schema_version_id',
          metadata_key: 'metadata_key',
          metadata_value: 'metadata_value',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['SchemaVersionId'] = stub[:schema_version_id] unless stub[:schema_version_id].nil?
        data['MetadataKey'] = stub[:metadata_key] unless stub[:metadata_key].nil?
        data['MetadataValue'] = stub[:metadata_value] unless stub[:metadata_value].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetJobBookmark
    class ResetJobBookmark
      def self.default(visited=[])
        {
          job_bookmark_entry: JobBookmarkEntry.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobBookmarkEntry'] = JobBookmarkEntry.stub(stub[:job_bookmark_entry]) unless stub[:job_bookmark_entry].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeWorkflowRun
    class ResumeWorkflowRun
      def self.default(visited=[])
        {
          run_id: 'run_id',
          node_ids: NodeIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data['NodeIds'] = NodeIdList.stub(stub[:node_ids]) unless stub[:node_ids].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NodeIdList
    class NodeIdList
      def self.default(visited=[])
        return nil if visited.include?('NodeIdList')
        visited = visited + ['NodeIdList']
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

    # Operation Stubber for RunStatement
    class RunStatement
      def self.default(visited=[])
        {
          id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchTables
    class SearchTables
      def self.default(visited=[])
        {
          next_token: 'next_token',
          table_list: TableList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TableList'] = TableList.stub(stub[:table_list]) unless stub[:table_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartBlueprintRun
    class StartBlueprintRun
      def self.default(visited=[])
        {
          run_id: 'run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartCrawler
    class StartCrawler
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

    # Operation Stubber for StartCrawlerSchedule
    class StartCrawlerSchedule
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

    # Operation Stubber for StartExportLabelsTaskRun
    class StartExportLabelsTaskRun
      def self.default(visited=[])
        {
          task_run_id: 'task_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartImportLabelsTaskRun
    class StartImportLabelsTaskRun
      def self.default(visited=[])
        {
          task_run_id: 'task_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartJobRun
    class StartJobRun
      def self.default(visited=[])
        {
          job_run_id: 'job_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMLEvaluationTaskRun
    class StartMLEvaluationTaskRun
      def self.default(visited=[])
        {
          task_run_id: 'task_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMLLabelingSetGenerationTaskRun
    class StartMLLabelingSetGenerationTaskRun
      def self.default(visited=[])
        {
          task_run_id: 'task_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskRunId'] = stub[:task_run_id] unless stub[:task_run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartTrigger
    class StartTrigger
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartWorkflowRun
    class StartWorkflowRun
      def self.default(visited=[])
        {
          run_id: 'run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopCrawler
    class StopCrawler
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

    # Operation Stubber for StopCrawlerSchedule
    class StopCrawlerSchedule
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

    # Operation Stubber for StopSession
    class StopSession
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTrigger
    class StopTrigger
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopWorkflowRun
    class StopWorkflowRun
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

    # Operation Stubber for TagResource
    class TagResource
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

    # Operation Stubber for UntagResource
    class UntagResource
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

    # Operation Stubber for UpdateBlueprint
    class UpdateBlueprint
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateClassifier
    class UpdateClassifier
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

    # Operation Stubber for UpdateColumnStatisticsForPartition
    class UpdateColumnStatisticsForPartition
      def self.default(visited=[])
        {
          errors: ColumnStatisticsErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = ColumnStatisticsErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ColumnStatisticsErrors
    class ColumnStatisticsErrors
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatisticsErrors')
        visited = visited + ['ColumnStatisticsErrors']
        [
          ColumnStatisticsError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnStatisticsError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnStatisticsError
    class ColumnStatisticsError
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatisticsError')
        visited = visited + ['ColumnStatisticsError']
        {
          column_statistics: ColumnStatistics.default(visited),
          error: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnStatisticsError.new
        data = {}
        data['ColumnStatistics'] = ColumnStatistics.stub(stub[:column_statistics]) unless stub[:column_statistics].nil?
        data['Error'] = ErrorDetail.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for UpdateColumnStatisticsForTable
    class UpdateColumnStatisticsForTable
      def self.default(visited=[])
        {
          errors: ColumnStatisticsErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = ColumnStatisticsErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConnection
    class UpdateConnection
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

    # Operation Stubber for UpdateCrawler
    class UpdateCrawler
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

    # Operation Stubber for UpdateCrawlerSchedule
    class UpdateCrawlerSchedule
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

    # Operation Stubber for UpdateDatabase
    class UpdateDatabase
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

    # Operation Stubber for UpdateDevEndpoint
    class UpdateDevEndpoint
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

    # Operation Stubber for UpdateJob
    class UpdateJob
      def self.default(visited=[])
        {
          job_name: 'job_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMLTransform
    class UpdateMLTransform
      def self.default(visited=[])
        {
          transform_id: 'transform_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformId'] = stub[:transform_id] unless stub[:transform_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePartition
    class UpdatePartition
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

    # Operation Stubber for UpdateRegistry
    class UpdateRegistry
      def self.default(visited=[])
        {
          registry_name: 'registry_name',
          registry_arn: 'registry_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSchema
    class UpdateSchema
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          registry_name: 'registry_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTable
    class UpdateTable
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

    # Operation Stubber for UpdateTrigger
    class UpdateTrigger
      def self.default(visited=[])
        {
          trigger: Trigger.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Trigger'] = Trigger.stub(stub[:trigger]) unless stub[:trigger].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserDefinedFunction
    class UpdateUserDefinedFunction
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

    # Operation Stubber for UpdateWorkflow
    class UpdateWorkflow
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
