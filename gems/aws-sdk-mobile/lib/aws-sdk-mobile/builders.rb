# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Mobile
  module Builders

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['region'] = input[:region].to_s unless input[:region].nil?
        params['snapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = ::StringIO.new(input[:contents] || '')
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBundle
    class DescribeBundle
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bundle_id].to_s.empty?
          raise ArgumentError, "HTTP label :bundle_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bundles/%<bundleId>s',
            bundleId: Hearth::HTTP.uri_escape(input[:bundle_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/project')
        params = Hearth::Query::ParamList.new
        params['projectId'] = input[:project_id].to_s unless input[:project_id].nil?
        params['syncFromResources'] = input[:sync_from_resources].to_s unless input[:sync_from_resources].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportBundle
    class ExportBundle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bundle_id].to_s.empty?
          raise ArgumentError, "HTTP label :bundle_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bundles/%<bundleId>s',
            bundleId: Hearth::HTTP.uri_escape(input[:bundle_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['projectId'] = input[:project_id].to_s unless input[:project_id].nil?
        params['platform'] = input[:platform].to_s unless input[:platform].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportProject
    class ExportProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/exports/%<projectId>s',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBundles
    class ListBundles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/bundles')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update')
        params = Hearth::Query::ParamList.new
        params['projectId'] = input[:project_id].to_s unless input[:project_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = ::StringIO.new(input[:contents] || '')
      end
    end
  end
end
