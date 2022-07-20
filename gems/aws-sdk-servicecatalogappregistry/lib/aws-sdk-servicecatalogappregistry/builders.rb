# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ServiceCatalogAppRegistry
  module Builders

    # Operation Builder for AssociateAttributeGroup
    class AssociateAttributeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        if input[:attribute_group].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/attribute-groups/%<attributeGroup>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s),
            attributeGroup: Hearth::HTTP.uri_escape(input[:attribute_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AssociateResource
    class AssociateResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/resources/%<resourceType>s/%<resource>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s),
            resourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s),
            resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
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

    # Operation Builder for CreateAttributeGroup
    class CreateAttributeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/attribute-groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['attributes'] = input[:attributes] unless input[:attributes].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAttributeGroup
    class DeleteAttributeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:attribute_group].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attribute-groups/%<attributeGroup>s',
            attributeGroup: Hearth::HTTP.uri_escape(input[:attribute_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateAttributeGroup
    class DisassociateAttributeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        if input[:attribute_group].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/attribute-groups/%<attributeGroup>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s),
            attributeGroup: Hearth::HTTP.uri_escape(input[:attribute_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateResource
    class DisassociateResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/resources/%<resourceType>s/%<resource>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s),
            resourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s),
            resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssociatedResource
    class GetAssociatedResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/resources/%<resourceType>s/%<resource>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s),
            resourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s),
            resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAttributeGroup
    class GetAttributeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:attribute_group].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attribute-groups/%<attributeGroup>s',
            attributeGroup: Hearth::HTTP.uri_escape(input[:attribute_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssociatedAttributeGroups
    class ListAssociatedAttributeGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/attribute-groups',
            application: Hearth::HTTP.uri_escape(input[:application].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssociatedResources
    class ListAssociatedResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s/resources',
            application: Hearth::HTTP.uri_escape(input[:application].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAttributeGroups
    class ListAttributeGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/attribute-groups')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SyncResource
    class SyncResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sync/%<resourceType>s/%<resource>s',
            resourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s),
            resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<application>s',
            application: Hearth::HTTP.uri_escape(input[:application].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAttributeGroup
    class UpdateAttributeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:attribute_group].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attribute-groups/%<attributeGroup>s',
            attributeGroup: Hearth::HTTP.uri_escape(input[:attribute_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['attributes'] = input[:attributes] unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
