# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Schemas
  module Parsers

    # Operation Parser for CreateDiscoverer
    class CreateDiscoverer
      def self.parse(http_resp)
        data = Types::CreateDiscovererOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.discoverer_arn = map['DiscovererArn']
        data.discoverer_id = map['DiscovererId']
        data.source_arn = map['SourceArn']
        data.state = map['State']
        data.cross_account = map['CrossAccount']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateRegistry
    class CreateRegistry
      def self.parse(http_resp)
        data = Types::CreateRegistryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.registry_arn = map['RegistryArn']
        data.registry_name = map['RegistryName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for CreateSchema
    class CreateSchema
      def self.parse(http_resp)
        data = Types::CreateSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.last_modified = Time.parse(map['LastModified']) if map['LastModified']
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.schema_version = map['SchemaVersion']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['Type']
        data.version_created_date = Time.parse(map['VersionCreatedDate']) if map['VersionCreatedDate']
        data
      end
    end

    # Operation Parser for DeleteDiscoverer
    class DeleteDiscoverer
      def self.parse(http_resp)
        data = Types::DeleteDiscovererOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteRegistry
    class DeleteRegistry
      def self.parse(http_resp)
        data = Types::DeleteRegistryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSchema
    class DeleteSchema
      def self.parse(http_resp)
        data = Types::DeleteSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSchemaVersion
    class DeleteSchemaVersion
      def self.parse(http_resp)
        data = Types::DeleteSchemaVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeCodeBinding
    class DescribeCodeBinding
      def self.parse(http_resp)
        data = Types::DescribeCodeBindingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.last_modified = Time.parse(map['LastModified']) if map['LastModified']
        data.schema_version = map['SchemaVersion']
        data.status = map['Status']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeDiscoverer
    class DescribeDiscoverer
      def self.parse(http_resp)
        data = Types::DescribeDiscovererOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.discoverer_arn = map['DiscovererArn']
        data.discoverer_id = map['DiscovererId']
        data.source_arn = map['SourceArn']
        data.state = map['State']
        data.cross_account = map['CrossAccount']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeRegistry
    class DescribeRegistry
      def self.parse(http_resp)
        data = Types::DescribeRegistryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.registry_arn = map['RegistryArn']
        data.registry_name = map['RegistryName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeSchema
    class DescribeSchema
      def self.parse(http_resp)
        data = Types::DescribeSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = map['Content']
        data.description = map['Description']
        data.last_modified = Time.parse(map['LastModified']) if map['LastModified']
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.schema_version = map['SchemaVersion']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['Type']
        data.version_created_date = Time.parse(map['VersionCreatedDate']) if map['VersionCreatedDate']
        data
      end
    end

    # Operation Parser for ExportSchema
    class ExportSchema
      def self.parse(http_resp)
        data = Types::ExportSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = map['Content']
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.schema_version = map['SchemaVersion']
        data.type = map['Type']
        data
      end
    end

    # Operation Parser for GetCodeBindingSource
    class GetCodeBindingSource
      def self.parse(http_resp)
        data = Types::GetCodeBindingSourceOutput.new
        payload = http_resp.body.read
        data.body = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetDiscoveredSchema
    class GetDiscoveredSchema
      def self.parse(http_resp)
        data = Types::GetDiscoveredSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = map['Content']
        data
      end
    end

    # Operation Parser for GetResourcePolicy
    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Operation Parser for ListDiscoverers
    class ListDiscoverers
      def self.parse(http_resp)
        data = Types::ListDiscoverersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.discoverers = (Parsers::List____listOfDiscovererSummary.parse(map['Discoverers']) unless map['Discoverers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfDiscovererSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DiscovererSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DiscovererSummary
      def self.parse(map)
        data = Types::DiscovererSummary.new
        data.discoverer_arn = map['DiscovererArn']
        data.discoverer_id = map['DiscovererId']
        data.source_arn = map['SourceArn']
        data.state = map['State']
        data.cross_account = map['CrossAccount']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListRegistries
    class ListRegistries
      def self.parse(http_resp)
        data = Types::ListRegistriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.registries = (Parsers::List____listOfRegistrySummary.parse(map['Registries']) unless map['Registries'].nil?)
        data
      end
    end

    class List____listOfRegistrySummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RegistrySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RegistrySummary
      def self.parse(map)
        data = Types::RegistrySummary.new
        data.registry_arn = map['RegistryArn']
        data.registry_name = map['RegistryName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListSchemaVersions
    class ListSchemaVersions
      def self.parse(http_resp)
        data = Types::ListSchemaVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.schema_versions = (Parsers::List____listOfSchemaVersionSummary.parse(map['SchemaVersions']) unless map['SchemaVersions'].nil?)
        data
      end
    end

    class List____listOfSchemaVersionSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SchemaVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SchemaVersionSummary
      def self.parse(map)
        data = Types::SchemaVersionSummary.new
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.schema_version = map['SchemaVersion']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListSchemas
    class ListSchemas
      def self.parse(http_resp)
        data = Types::ListSchemasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.schemas = (Parsers::List____listOfSchemaSummary.parse(map['Schemas']) unless map['Schemas'].nil?)
        data
      end
    end

    class List____listOfSchemaSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SchemaSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SchemaSummary
      def self.parse(map)
        data = Types::SchemaSummary.new
        data.last_modified = Time.parse(map['LastModified']) if map['LastModified']
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version_count = map['VersionCount']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PutCodeBinding
    class PutCodeBinding
      def self.parse(http_resp)
        data = Types::PutCodeBindingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.last_modified = Time.parse(map['LastModified']) if map['LastModified']
        data.schema_version = map['SchemaVersion']
        data.status = map['Status']
        data
      end
    end

    # Error Parser for GoneException
    class GoneException
      def self.parse(http_resp)
        data = Types::GoneException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Error Parser for PreconditionFailedException
    class PreconditionFailedException
      def self.parse(http_resp)
        data = Types::PreconditionFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for SearchSchemas
    class SearchSchemas
      def self.parse(http_resp)
        data = Types::SearchSchemasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.schemas = (Parsers::List____listOfSearchSchemaSummary.parse(map['Schemas']) unless map['Schemas'].nil?)
        data
      end
    end

    class List____listOfSearchSchemaSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SearchSchemaSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SearchSchemaSummary
      def self.parse(map)
        data = Types::SearchSchemaSummary.new
        data.registry_name = map['RegistryName']
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.schema_versions = (Parsers::List____listOfSearchSchemaVersionSummary.parse(map['SchemaVersions']) unless map['SchemaVersions'].nil?)
        return data
      end
    end

    class List____listOfSearchSchemaVersionSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SearchSchemaVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SearchSchemaVersionSummary
      def self.parse(map)
        data = Types::SearchSchemaVersionSummary.new
        data.created_date = Time.parse(map['CreatedDate']) if map['CreatedDate']
        data.schema_version = map['SchemaVersion']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for StartDiscoverer
    class StartDiscoverer
      def self.parse(http_resp)
        data = Types::StartDiscovererOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.discoverer_id = map['DiscovererId']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for StopDiscoverer
    class StopDiscoverer
      def self.parse(http_resp)
        data = Types::StopDiscovererOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.discoverer_id = map['DiscovererId']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDiscoverer
    class UpdateDiscoverer
      def self.parse(http_resp)
        data = Types::UpdateDiscovererOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.discoverer_arn = map['DiscovererArn']
        data.discoverer_id = map['DiscovererId']
        data.source_arn = map['SourceArn']
        data.state = map['State']
        data.cross_account = map['CrossAccount']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRegistry
    class UpdateRegistry
      def self.parse(http_resp)
        data = Types::UpdateRegistryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.registry_arn = map['RegistryArn']
        data.registry_name = map['RegistryName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSchema
    class UpdateSchema
      def self.parse(http_resp)
        data = Types::UpdateSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.last_modified = Time.parse(map['LastModified']) if map['LastModified']
        data.schema_arn = map['SchemaArn']
        data.schema_name = map['SchemaName']
        data.schema_version = map['SchemaVersion']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['Type']
        data.version_created_date = Time.parse(map['VersionCreatedDate']) if map['VersionCreatedDate']
        data
      end
    end
  end
end
