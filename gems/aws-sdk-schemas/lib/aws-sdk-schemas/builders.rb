# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Schemas
  module Builders

    # Operation Builder for CreateDiscoverer
    class CreateDiscoverer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/discoverers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['CrossAccount'] = input[:cross_account] unless input[:cross_account].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRegistry
    class CreateRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSchema
    class CreateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDiscoverer
    class DeleteDiscoverer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:discoverer_id].to_s.empty?
          raise ArgumentError, "HTTP label :discoverer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/discoverers/id/%<DiscovererId>s',
            DiscovererId: Hearth::HTTP.uri_escape(input[:discoverer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRegistry
    class DeleteRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/policy')
        params = Hearth::Query::ParamList.new
        params['registryName'] = input[:registry_name].to_s unless input[:registry_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSchema
    class DeleteSchema
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSchemaVersion
    class DeleteSchemaVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        if input[:schema_version].to_s.empty?
          raise ArgumentError, "HTTP label :schema_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s/version/%<SchemaVersion>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s),
            SchemaVersion: Hearth::HTTP.uri_escape(input[:schema_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCodeBinding
    class DescribeCodeBinding
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:language].to_s.empty?
          raise ArgumentError, "HTTP label :language cannot be nil or empty."
        end
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s/language/%<Language>s',
            Language: Hearth::HTTP.uri_escape(input[:language].to_s),
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['schemaVersion'] = input[:schema_version].to_s unless input[:schema_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDiscoverer
    class DescribeDiscoverer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:discoverer_id].to_s.empty?
          raise ArgumentError, "HTTP label :discoverer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/discoverers/id/%<DiscovererId>s',
            DiscovererId: Hearth::HTTP.uri_escape(input[:discoverer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRegistry
    class DescribeRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSchema
    class DescribeSchema
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['schemaVersion'] = input[:schema_version].to_s unless input[:schema_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportSchema
    class ExportSchema
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s/export',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['schemaVersion'] = input[:schema_version].to_s unless input[:schema_version].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCodeBindingSource
    class GetCodeBindingSource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:language].to_s.empty?
          raise ArgumentError, "HTTP label :language cannot be nil or empty."
        end
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s/language/%<Language>s/source',
            Language: Hearth::HTTP.uri_escape(input[:language].to_s),
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['schemaVersion'] = input[:schema_version].to_s unless input[:schema_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDiscoveredSchema
    class GetDiscoveredSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/discover')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Events'] = List____listOfGetDiscoveredSchemaVersionItemInput.build(input[:events]) unless input[:events].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfGetDiscoveredSchemaVersionItemInput
    class List____listOfGetDiscoveredSchemaVersionItemInput
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetResourcePolicy
    class GetResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/policy')
        params = Hearth::Query::ParamList.new
        params['registryName'] = input[:registry_name].to_s unless input[:registry_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDiscoverers
    class ListDiscoverers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/discoverers')
        params = Hearth::Query::ParamList.new
        params['discovererIdPrefix'] = input[:discoverer_id_prefix].to_s unless input[:discoverer_id_prefix].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['sourceArnPrefix'] = input[:source_arn_prefix].to_s unless input[:source_arn_prefix].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRegistries
    class ListRegistries
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/registries')
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['registryNamePrefix'] = input[:registry_name_prefix].to_s unless input[:registry_name_prefix].nil?
        params['scope'] = input[:scope].to_s unless input[:scope].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSchemaVersions
    class ListSchemaVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s/versions',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSchemas
    class ListSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['schemaNamePrefix'] = input[:schema_name_prefix].to_s unless input[:schema_name_prefix].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutCodeBinding
    class PutCodeBinding
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:language].to_s.empty?
          raise ArgumentError, "HTTP label :language cannot be nil or empty."
        end
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s/language/%<Language>s',
            Language: Hearth::HTTP.uri_escape(input[:language].to_s),
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['schemaVersion'] = input[:schema_version].to_s unless input[:schema_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/policy')
        params = Hearth::Query::ParamList.new
        params['registryName'] = input[:registry_name].to_s unless input[:registry_name].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchSchemas
    class SearchSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/search',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['keywords'] = input[:keywords].to_s unless input[:keywords].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartDiscoverer
    class StartDiscoverer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:discoverer_id].to_s.empty?
          raise ArgumentError, "HTTP label :discoverer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/discoverers/id/%<DiscovererId>s/start',
            DiscovererId: Hearth::HTTP.uri_escape(input[:discoverer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopDiscoverer
    class StopDiscoverer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:discoverer_id].to_s.empty?
          raise ArgumentError, "HTTP label :discoverer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/discoverers/id/%<DiscovererId>s/stop',
            DiscovererId: Hearth::HTTP.uri_escape(input[:discoverer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDiscoverer
    class UpdateDiscoverer
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:discoverer_id].to_s.empty?
          raise ArgumentError, "HTTP label :discoverer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/discoverers/id/%<DiscovererId>s',
            DiscovererId: Hearth::HTTP.uri_escape(input[:discoverer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['CrossAccount'] = input[:cross_account] unless input[:cross_account].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRegistry
    class UpdateRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSchema
    class UpdateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:registry_name].to_s.empty?
          raise ArgumentError, "HTTP label :registry_name cannot be nil or empty."
        end
        if input[:schema_name].to_s.empty?
          raise ArgumentError, "HTTP label :schema_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/registries/name/%<RegistryName>s/schemas/name/%<SchemaName>s',
            RegistryName: Hearth::HTTP.uri_escape(input[:registry_name].to_s),
            SchemaName: Hearth::HTTP.uri_escape(input[:schema_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientTokenId'] = input[:client_token_id] unless input[:client_token_id].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
