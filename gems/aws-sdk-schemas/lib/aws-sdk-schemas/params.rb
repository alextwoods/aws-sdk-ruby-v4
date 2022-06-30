# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Schemas
  module Params

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module CreateDiscovererInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiscovererInput, context: context)
        type = Types::CreateDiscovererInput.new
        type.description = params[:description]
        type.source_arn = params[:source_arn]
        type.cross_account = params[:cross_account]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDiscovererOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiscovererOutput, context: context)
        type = Types::CreateDiscovererOutput.new
        type.description = params[:description]
        type.discoverer_arn = params[:discoverer_arn]
        type.discoverer_id = params[:discoverer_id]
        type.source_arn = params[:source_arn]
        type.state = params[:state]
        type.cross_account = params[:cross_account]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegistryInput, context: context)
        type = Types::CreateRegistryInput.new
        type.description = params[:description]
        type.registry_name = params[:registry_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegistryOutput, context: context)
        type = Types::CreateRegistryOutput.new
        type.description = params[:description]
        type.registry_arn = params[:registry_arn]
        type.registry_name = params[:registry_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaInput, context: context)
        type = Types::CreateSchemaInput.new
        type.content = params[:content]
        type.description = params[:description]
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type
      end
    end

    module CreateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaOutput, context: context)
        type = Types::CreateSchemaOutput.new
        type.description = params[:description]
        type.last_modified = params[:last_modified]
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.version_created_date = params[:version_created_date]
        type
      end
    end

    module DeleteDiscovererInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDiscovererInput, context: context)
        type = Types::DeleteDiscovererInput.new
        type.discoverer_id = params[:discoverer_id]
        type
      end
    end

    module DeleteDiscovererOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDiscovererOutput, context: context)
        type = Types::DeleteDiscovererOutput.new
        type
      end
    end

    module DeleteRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistryInput, context: context)
        type = Types::DeleteRegistryInput.new
        type.registry_name = params[:registry_name]
        type
      end
    end

    module DeleteRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistryOutput, context: context)
        type = Types::DeleteRegistryOutput.new
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.registry_name = params[:registry_name]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaInput, context: context)
        type = Types::DeleteSchemaInput.new
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type
      end
    end

    module DeleteSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaOutput, context: context)
        type = Types::DeleteSchemaOutput.new
        type
      end
    end

    module DeleteSchemaVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaVersionInput, context: context)
        type = Types::DeleteSchemaVersionInput.new
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type
      end
    end

    module DeleteSchemaVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaVersionOutput, context: context)
        type = Types::DeleteSchemaVersionOutput.new
        type
      end
    end

    module DescribeCodeBindingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeBindingInput, context: context)
        type = Types::DescribeCodeBindingInput.new
        type.language = params[:language]
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type
      end
    end

    module DescribeCodeBindingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeBindingOutput, context: context)
        type = Types::DescribeCodeBindingOutput.new
        type.creation_date = params[:creation_date]
        type.last_modified = params[:last_modified]
        type.schema_version = params[:schema_version]
        type.status = params[:status]
        type
      end
    end

    module DescribeDiscovererInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDiscovererInput, context: context)
        type = Types::DescribeDiscovererInput.new
        type.discoverer_id = params[:discoverer_id]
        type
      end
    end

    module DescribeDiscovererOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDiscovererOutput, context: context)
        type = Types::DescribeDiscovererOutput.new
        type.description = params[:description]
        type.discoverer_arn = params[:discoverer_arn]
        type.discoverer_id = params[:discoverer_id]
        type.source_arn = params[:source_arn]
        type.state = params[:state]
        type.cross_account = params[:cross_account]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegistryInput, context: context)
        type = Types::DescribeRegistryInput.new
        type.registry_name = params[:registry_name]
        type
      end
    end

    module DescribeRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegistryOutput, context: context)
        type = Types::DescribeRegistryOutput.new
        type.description = params[:description]
        type.registry_arn = params[:registry_arn]
        type.registry_name = params[:registry_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchemaInput, context: context)
        type = Types::DescribeSchemaInput.new
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type
      end
    end

    module DescribeSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchemaOutput, context: context)
        type = Types::DescribeSchemaOutput.new
        type.content = params[:content]
        type.description = params[:description]
        type.last_modified = params[:last_modified]
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.version_created_date = params[:version_created_date]
        type
      end
    end

    module DiscovererSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscovererSummary, context: context)
        type = Types::DiscovererSummary.new
        type.discoverer_arn = params[:discoverer_arn]
        type.discoverer_id = params[:discoverer_id]
        type.source_arn = params[:source_arn]
        type.state = params[:state]
        type.cross_account = params[:cross_account]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ExportSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSchemaInput, context: context)
        type = Types::ExportSchemaInput.new
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type.type = params[:type]
        type
      end
    end

    module ExportSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSchemaOutput, context: context)
        type = Types::ExportSchemaOutput.new
        type.content = params[:content]
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type.type = params[:type]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module GetCodeBindingSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCodeBindingSourceInput, context: context)
        type = Types::GetCodeBindingSourceInput.new
        type.language = params[:language]
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type
      end
    end

    module GetCodeBindingSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCodeBindingSourceOutput, context: context)
        type = Types::GetCodeBindingSourceOutput.new
        type.body = params[:body]
        type
      end
    end

    module GetDiscoveredSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiscoveredSchemaInput, context: context)
        type = Types::GetDiscoveredSchemaInput.new
        type.events = List____listOfGetDiscoveredSchemaVersionItemInput.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.type = params[:type]
        type
      end
    end

    module GetDiscoveredSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiscoveredSchemaOutput, context: context)
        type = Types::GetDiscoveredSchemaOutput.new
        type.content = params[:content]
        type
      end
    end

    module GetResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        type.registry_name = params[:registry_name]
        type
      end
    end

    module GetResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GoneException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoneException, context: context)
        type = Types::GoneException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ListDiscoverersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDiscoverersInput, context: context)
        type = Types::ListDiscoverersInput.new
        type.discoverer_id_prefix = params[:discoverer_id_prefix]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.source_arn_prefix = params[:source_arn_prefix]
        type
      end
    end

    module ListDiscoverersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDiscoverersOutput, context: context)
        type = Types::ListDiscoverersOutput.new
        type.discoverers = List____listOfDiscovererSummary.build(params[:discoverers], context: "#{context}[:discoverers]") unless params[:discoverers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRegistriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegistriesInput, context: context)
        type = Types::ListRegistriesInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.registry_name_prefix = params[:registry_name_prefix]
        type.scope = params[:scope]
        type
      end
    end

    module ListRegistriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegistriesOutput, context: context)
        type = Types::ListRegistriesOutput.new
        type.next_token = params[:next_token]
        type.registries = List____listOfRegistrySummary.build(params[:registries], context: "#{context}[:registries]") unless params[:registries].nil?
        type
      end
    end

    module ListSchemaVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemaVersionsInput, context: context)
        type = Types::ListSchemaVersionsInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type
      end
    end

    module ListSchemaVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemaVersionsOutput, context: context)
        type = Types::ListSchemaVersionsOutput.new
        type.next_token = params[:next_token]
        type.schema_versions = List____listOfSchemaVersionSummary.build(params[:schema_versions], context: "#{context}[:schema_versions]") unless params[:schema_versions].nil?
        type
      end
    end

    module ListSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasInput, context: context)
        type = Types::ListSchemasInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.registry_name = params[:registry_name]
        type.schema_name_prefix = params[:schema_name_prefix]
        type
      end
    end

    module ListSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasOutput, context: context)
        type = Types::ListSchemasOutput.new
        type.next_token = params[:next_token]
        type.schemas = List____listOfSchemaSummary.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module PreconditionFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionFailedException, context: context)
        type = Types::PreconditionFailedException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module PutCodeBindingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCodeBindingInput, context: context)
        type = Types::PutCodeBindingInput.new
        type.language = params[:language]
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type
      end
    end

    module PutCodeBindingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCodeBindingOutput, context: context)
        type = Types::PutCodeBindingOutput.new
        type.creation_date = params[:creation_date]
        type.last_modified = params[:last_modified]
        type.schema_version = params[:schema_version]
        type.status = params[:status]
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.policy = params[:policy]
        type.registry_name = params[:registry_name]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module RegistrySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistrySummary, context: context)
        type = Types::RegistrySummary.new
        type.registry_arn = params[:registry_arn]
        type.registry_name = params[:registry_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SchemaSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaSummary, context: context)
        type = Types::SchemaSummary.new
        type.last_modified = params[:last_modified]
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version_count = params[:version_count]
        type
      end
    end

    module SchemaVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaVersionSummary, context: context)
        type = Types::SchemaVersionSummary.new
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type.type = params[:type]
        type
      end
    end

    module SearchSchemaSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSchemaSummary, context: context)
        type = Types::SearchSchemaSummary.new
        type.registry_name = params[:registry_name]
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.schema_versions = List____listOfSearchSchemaVersionSummary.build(params[:schema_versions], context: "#{context}[:schema_versions]") unless params[:schema_versions].nil?
        type
      end
    end

    module SearchSchemaVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSchemaVersionSummary, context: context)
        type = Types::SearchSchemaVersionSummary.new
        type.created_date = params[:created_date]
        type.schema_version = params[:schema_version]
        type.type = params[:type]
        type
      end
    end

    module SearchSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSchemasInput, context: context)
        type = Types::SearchSchemasInput.new
        type.keywords = params[:keywords]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.registry_name = params[:registry_name]
        type
      end
    end

    module SearchSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSchemasOutput, context: context)
        type = Types::SearchSchemasOutput.new
        type.next_token = params[:next_token]
        type.schemas = List____listOfSearchSchemaSummary.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module StartDiscovererInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDiscovererInput, context: context)
        type = Types::StartDiscovererInput.new
        type.discoverer_id = params[:discoverer_id]
        type
      end
    end

    module StartDiscovererOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDiscovererOutput, context: context)
        type = Types::StartDiscovererOutput.new
        type.discoverer_id = params[:discoverer_id]
        type.state = params[:state]
        type
      end
    end

    module StopDiscovererInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDiscovererInput, context: context)
        type = Types::StopDiscovererInput.new
        type.discoverer_id = params[:discoverer_id]
        type
      end
    end

    module StopDiscovererOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDiscovererOutput, context: context)
        type = Types::StopDiscovererOutput.new
        type.discoverer_id = params[:discoverer_id]
        type.state = params[:state]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDiscovererInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDiscovererInput, context: context)
        type = Types::UpdateDiscovererInput.new
        type.description = params[:description]
        type.discoverer_id = params[:discoverer_id]
        type.cross_account = params[:cross_account]
        type
      end
    end

    module UpdateDiscovererOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDiscovererOutput, context: context)
        type = Types::UpdateDiscovererOutput.new
        type.description = params[:description]
        type.discoverer_arn = params[:discoverer_arn]
        type.discoverer_id = params[:discoverer_id]
        type.source_arn = params[:source_arn]
        type.state = params[:state]
        type.cross_account = params[:cross_account]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegistryInput, context: context)
        type = Types::UpdateRegistryInput.new
        type.description = params[:description]
        type.registry_name = params[:registry_name]
        type
      end
    end

    module UpdateRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegistryOutput, context: context)
        type = Types::UpdateRegistryOutput.new
        type.description = params[:description]
        type.registry_arn = params[:registry_arn]
        type.registry_name = params[:registry_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchemaInput, context: context)
        type = Types::UpdateSchemaInput.new
        type.client_token_id = params[:client_token_id] || SecureRandom.uuid
        type.content = params[:content]
        type.description = params[:description]
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.type = params[:type]
        type
      end
    end

    module UpdateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchemaOutput, context: context)
        type = Types::UpdateSchemaOutput.new
        type.description = params[:description]
        type.last_modified = params[:last_modified]
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.schema_version = params[:schema_version]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.version_created_date = params[:version_created_date]
        type
      end
    end

    module List____listOfDiscovererSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DiscovererSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfGetDiscoveredSchemaVersionItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfRegistrySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegistrySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSchemaSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSchemaVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSearchSchemaSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchSchemaSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSearchSchemaVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchSchemaVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
