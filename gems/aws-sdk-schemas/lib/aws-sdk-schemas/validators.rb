# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Schemas
  module Validators

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateDiscovererInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiscovererInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:cross_account], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDiscovererOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiscovererOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:discoverer_arn], ::String, context: "#{context}[:discoverer_arn]")
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:cross_account], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegistryInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaInput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version_created_date], ::Time, context: "#{context}[:version_created_date]")
      end
    end

    class DeleteDiscovererInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDiscovererInput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
      end
    end

    class DeleteDiscovererOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDiscovererOutput, context: context)
      end
    end

    class DeleteRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistryInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class DeleteRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistryOutput, context: context)
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
      end
    end

    class DeleteSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaOutput, context: context)
      end
    end

    class DeleteSchemaVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaVersionInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class DeleteSchemaVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaVersionOutput, context: context)
      end
    end

    class DescribeCodeBindingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeBindingInput, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class DescribeCodeBindingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeBindingOutput, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeDiscovererInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDiscovererInput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
      end
    end

    class DescribeDiscovererOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDiscovererOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:discoverer_arn], ::String, context: "#{context}[:discoverer_arn]")
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:cross_account], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegistryInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class DescribeRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchemaInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class DescribeSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version_created_date], ::Time, context: "#{context}[:version_created_date]")
      end
    end

    class DiscovererSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscovererSummary, context: context)
        Hearth::Validator.validate!(input[:discoverer_arn], ::String, context: "#{context}[:discoverer_arn]")
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:cross_account], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ExportSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSchemaInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ExportSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetCodeBindingSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCodeBindingSourceInput, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class GetCodeBindingSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCodeBindingSourceOutput, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class GetDiscoveredSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiscoveredSchemaInput, context: context)
        List____listOfGetDiscoveredSchemaVersionItemInput.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class GetDiscoveredSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiscoveredSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GoneException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoneException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDiscoverersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDiscoverersInput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id_prefix], ::String, context: "#{context}[:discoverer_id_prefix]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:source_arn_prefix], ::String, context: "#{context}[:source_arn_prefix]")
      end
    end

    class ListDiscoverersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDiscoverersOutput, context: context)
        List____listOfDiscovererSummary.validate!(input[:discoverers], context: "#{context}[:discoverers]") unless input[:discoverers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRegistriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegistriesInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:registry_name_prefix], ::String, context: "#{context}[:registry_name_prefix]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
      end
    end

    class ListRegistriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegistriesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfRegistrySummary.validate!(input[:registries], context: "#{context}[:registries]") unless input[:registries].nil?
      end
    end

    class ListSchemaVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemaVersionsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
      end
    end

    class ListSchemaVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemaVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfSchemaVersionSummary.validate!(input[:schema_versions], context: "#{context}[:schema_versions]") unless input[:schema_versions].nil?
      end
    end

    class ListSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name_prefix], ::String, context: "#{context}[:schema_name_prefix]")
      end
    end

    class ListSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfSchemaSummary.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutCodeBindingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCodeBindingInput, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class PutCodeBindingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCodeBindingOutput, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class RegistrySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistrySummary, context: context)
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SchemaSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaSummary, context: context)
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version_count], ::Integer, context: "#{context}[:version_count]")
      end
    end

    class SchemaVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaVersionSummary, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SearchSchemaSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSchemaSummary, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        List____listOfSearchSchemaVersionSummary.validate!(input[:schema_versions], context: "#{context}[:schema_versions]") unless input[:schema_versions].nil?
      end
    end

    class SearchSchemaVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSchemaVersionSummary, context: context)
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SearchSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSchemasInput, context: context)
        Hearth::Validator.validate!(input[:keywords], ::String, context: "#{context}[:keywords]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class SearchSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSchemasOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfSearchSchemaSummary.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartDiscovererInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDiscovererInput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
      end
    end

    class StartDiscovererOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDiscovererOutput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class StopDiscovererInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDiscovererInput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
      end
    end

    class StopDiscovererOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDiscovererOutput, context: context)
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDiscovererInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDiscovererInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:cross_account], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account]")
      end
    end

    class UpdateDiscovererOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDiscovererOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:discoverer_arn], ::String, context: "#{context}[:discoverer_arn]")
        Hearth::Validator.validate!(input[:discoverer_id], ::String, context: "#{context}[:discoverer_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:cross_account], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegistryInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class UpdateRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchemaInput, context: context)
        Hearth::Validator.validate!(input[:client_token_id], ::String, context: "#{context}[:client_token_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UpdateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version_created_date], ::Time, context: "#{context}[:version_created_date]")
      end
    end

    class List____listOfDiscovererSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DiscovererSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfGetDiscoveredSchemaVersionItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfRegistrySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegistrySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSchemaSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSchemaVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSearchSchemaSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchSchemaSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSearchSchemaVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchSchemaVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
