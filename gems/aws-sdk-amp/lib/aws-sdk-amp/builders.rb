# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Amp
  module Builders

    # Operation Builder for CreateAlertManagerDefinition
    class CreateAlertManagerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/alertmanager/definition',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRuleGroupsNamespace
    class CreateRuleGroupsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/rulegroupsnamespaces',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateWorkspace
    class CreateWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/workspaces')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['alias'] = input[:alias] unless input[:alias].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlertManagerDefinition
    class DeleteAlertManagerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/alertmanager/definition',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRuleGroupsNamespace
    class DeleteRuleGroupsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/rulegroupsnamespaces/%<name>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWorkspace
    class DeleteWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAlertManagerDefinition
    class DescribeAlertManagerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/alertmanager/definition',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRuleGroupsNamespace
    class DescribeRuleGroupsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/rulegroupsnamespaces/%<name>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeWorkspace
    class DescribeWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRuleGroupsNamespaces
    class ListRuleGroupsNamespaces
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/rulegroupsnamespaces',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['name'] = input[:name].to_s unless input[:name].nil?
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

    # Operation Builder for ListWorkspaces
    class ListWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/workspaces')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['alias'] = input[:alias].to_s unless input[:alias].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutAlertManagerDefinition
    class PutAlertManagerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/alertmanager/definition',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRuleGroupsNamespace
    class PutRuleGroupsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/rulegroupsnamespaces/%<name>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateWorkspaceAlias
    class UpdateWorkspaceAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/alias',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['alias'] = input[:alias] unless input[:alias].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
