# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Schemas
  module Stubs

    # Operation Stubber for CreateDiscoverer
    class CreateDiscoverer
      def self.default(visited=[])
        {
          description: 'description',
          discoverer_arn: 'discoverer_arn',
          discoverer_id: 'discoverer_id',
          source_arn: 'source_arn',
          state: 'state',
          cross_account: false,
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DiscovererArn'] = stub[:discoverer_arn] unless stub[:discoverer_arn].nil?
        data['DiscovererId'] = stub[:discoverer_id] unless stub[:discoverer_id].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CrossAccount'] = stub[:cross_account] unless stub[:cross_account].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for CreateRegistry
    class CreateRegistry
      def self.default(visited=[])
        {
          description: 'description',
          registry_arn: 'registry_arn',
          registry_name: 'registry_name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSchema
    class CreateSchema
      def self.default(visited=[])
        {
          description: 'description',
          last_modified: Time.now,
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          schema_version: 'schema_version',
          tags: Tags.default(visited),
          type: 'type',
          version_created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['VersionCreatedDate'] = Hearth::TimeHelper.to_date_time(stub[:version_created_date]) unless stub[:version_created_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDiscoverer
    class DeleteDiscoverer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRegistry
    class DeleteRegistry
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSchema
    class DeleteSchema
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSchemaVersion
    class DeleteSchemaVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeCodeBinding
    class DescribeCodeBinding
      def self.default(visited=[])
        {
          creation_date: Time.now,
          last_modified: Time.now,
          schema_version: 'schema_version',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['LastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDiscoverer
    class DescribeDiscoverer
      def self.default(visited=[])
        {
          description: 'description',
          discoverer_arn: 'discoverer_arn',
          discoverer_id: 'discoverer_id',
          source_arn: 'source_arn',
          state: 'state',
          cross_account: false,
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DiscovererArn'] = stub[:discoverer_arn] unless stub[:discoverer_arn].nil?
        data['DiscovererId'] = stub[:discoverer_id] unless stub[:discoverer_id].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CrossAccount'] = stub[:cross_account] unless stub[:cross_account].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRegistry
    class DescribeRegistry
      def self.default(visited=[])
        {
          description: 'description',
          registry_arn: 'registry_arn',
          registry_name: 'registry_name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSchema
    class DescribeSchema
      def self.default(visited=[])
        {
          content: 'content',
          description: 'description',
          last_modified: Time.now,
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          schema_version: 'schema_version',
          tags: Tags.default(visited),
          type: 'type',
          version_created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['VersionCreatedDate'] = Hearth::TimeHelper.to_date_time(stub[:version_created_date]) unless stub[:version_created_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExportSchema
    class ExportSchema
      def self.default(visited=[])
        {
          content: 'content',
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          schema_version: 'schema_version',
          type: 'type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCodeBindingSource
    class GetCodeBindingSource
      def self.default(visited=[])
        {
          body: 'body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:body] || '')
      end
    end

    # Operation Stubber for GetDiscoveredSchema
    class GetDiscoveredSchema
      def self.default(visited=[])
        {
          content: 'content',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Content'] = stub[:content] unless stub[:content].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResourcePolicy
    class GetResourcePolicy
      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDiscoverers
    class ListDiscoverers
      def self.default(visited=[])
        {
          discoverers: List____listOfDiscovererSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Discoverers'] = List____listOfDiscovererSummary.stub(stub[:discoverers]) unless stub[:discoverers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDiscovererSummary
    class List____listOfDiscovererSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDiscovererSummary')
        visited = visited + ['List____listOfDiscovererSummary']
        [
          DiscovererSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DiscovererSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DiscovererSummary
    class DiscovererSummary
      def self.default(visited=[])
        return nil if visited.include?('DiscovererSummary')
        visited = visited + ['DiscovererSummary']
        {
          discoverer_arn: 'discoverer_arn',
          discoverer_id: 'discoverer_id',
          source_arn: 'source_arn',
          state: 'state',
          cross_account: false,
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DiscovererSummary.new
        data = {}
        data['DiscovererArn'] = stub[:discoverer_arn] unless stub[:discoverer_arn].nil?
        data['DiscovererId'] = stub[:discoverer_id] unless stub[:discoverer_id].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CrossAccount'] = stub[:cross_account] unless stub[:cross_account].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListRegistries
    class ListRegistries
      def self.default(visited=[])
        {
          next_token: 'next_token',
          registries: List____listOfRegistrySummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Registries'] = List____listOfRegistrySummary.stub(stub[:registries]) unless stub[:registries].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRegistrySummary
    class List____listOfRegistrySummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRegistrySummary')
        visited = visited + ['List____listOfRegistrySummary']
        [
          RegistrySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegistrySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegistrySummary
    class RegistrySummary
      def self.default(visited=[])
        return nil if visited.include?('RegistrySummary')
        visited = visited + ['RegistrySummary']
        {
          registry_arn: 'registry_arn',
          registry_name: 'registry_name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistrySummary.new
        data = {}
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListSchemaVersions
    class ListSchemaVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          schema_versions: List____listOfSchemaVersionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['SchemaVersions'] = List____listOfSchemaVersionSummary.stub(stub[:schema_versions]) unless stub[:schema_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSchemaVersionSummary
    class List____listOfSchemaVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSchemaVersionSummary')
        visited = visited + ['List____listOfSchemaVersionSummary']
        [
          SchemaVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaVersionSummary
    class SchemaVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('SchemaVersionSummary')
        visited = visited + ['SchemaVersionSummary']
        {
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          schema_version: 'schema_version',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaVersionSummary.new
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListSchemas
    class ListSchemas
      def self.default(visited=[])
        {
          next_token: 'next_token',
          schemas: List____listOfSchemaSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Schemas'] = List____listOfSchemaSummary.stub(stub[:schemas]) unless stub[:schemas].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSchemaSummary
    class List____listOfSchemaSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSchemaSummary')
        visited = visited + ['List____listOfSchemaSummary']
        [
          SchemaSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaSummary
    class SchemaSummary
      def self.default(visited=[])
        return nil if visited.include?('SchemaSummary')
        visited = visited + ['SchemaSummary']
        {
          last_modified: Time.now,
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          tags: Tags.default(visited),
          version_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaSummary.new
        data = {}
        data['LastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['VersionCount'] = stub[:version_count] unless stub[:version_count].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutCodeBinding
    class PutCodeBinding
      def self.default(visited=[])
        {
          creation_date: Time.now,
          last_modified: Time.now,
          schema_version: 'schema_version',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['LastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchSchemas
    class SearchSchemas
      def self.default(visited=[])
        {
          next_token: 'next_token',
          schemas: List____listOfSearchSchemaSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Schemas'] = List____listOfSearchSchemaSummary.stub(stub[:schemas]) unless stub[:schemas].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSearchSchemaSummary
    class List____listOfSearchSchemaSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSearchSchemaSummary')
        visited = visited + ['List____listOfSearchSchemaSummary']
        [
          SearchSchemaSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SearchSchemaSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchSchemaSummary
    class SearchSchemaSummary
      def self.default(visited=[])
        return nil if visited.include?('SearchSchemaSummary')
        visited = visited + ['SearchSchemaSummary']
        {
          registry_name: 'registry_name',
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          schema_versions: List____listOfSearchSchemaVersionSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchSchemaSummary.new
        data = {}
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaVersions'] = List____listOfSearchSchemaVersionSummary.stub(stub[:schema_versions]) unless stub[:schema_versions].nil?
        data
      end
    end

    # List Stubber for __listOfSearchSchemaVersionSummary
    class List____listOfSearchSchemaVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSearchSchemaVersionSummary')
        visited = visited + ['List____listOfSearchSchemaVersionSummary']
        [
          SearchSchemaVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SearchSchemaVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchSchemaVersionSummary
    class SearchSchemaVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('SearchSchemaVersionSummary')
        visited = visited + ['SearchSchemaVersionSummary']
        {
          created_date: Time.now,
          schema_version: 'schema_version',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchSchemaVersionSummary.new
        data = {}
        data['CreatedDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for StartDiscoverer
    class StartDiscoverer
      def self.default(visited=[])
        {
          discoverer_id: 'discoverer_id',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DiscovererId'] = stub[:discoverer_id] unless stub[:discoverer_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopDiscoverer
    class StopDiscoverer
      def self.default(visited=[])
        {
          discoverer_id: 'discoverer_id',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DiscovererId'] = stub[:discoverer_id] unless stub[:discoverer_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateDiscoverer
    class UpdateDiscoverer
      def self.default(visited=[])
        {
          description: 'description',
          discoverer_arn: 'discoverer_arn',
          discoverer_id: 'discoverer_id',
          source_arn: 'source_arn',
          state: 'state',
          cross_account: false,
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DiscovererArn'] = stub[:discoverer_arn] unless stub[:discoverer_arn].nil?
        data['DiscovererId'] = stub[:discoverer_id] unless stub[:discoverer_id].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CrossAccount'] = stub[:cross_account] unless stub[:cross_account].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRegistry
    class UpdateRegistry
      def self.default(visited=[])
        {
          description: 'description',
          registry_arn: 'registry_arn',
          registry_name: 'registry_name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['RegistryName'] = stub[:registry_name] unless stub[:registry_name].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSchema
    class UpdateSchema
      def self.default(visited=[])
        {
          description: 'description',
          last_modified: Time.now,
          schema_arn: 'schema_arn',
          schema_name: 'schema_name',
          schema_version: 'schema_version',
          tags: Tags.default(visited),
          type: 'type',
          version_created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['VersionCreatedDate'] = Hearth::TimeHelper.to_date_time(stub[:version_created_date]) unless stub[:version_created_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
