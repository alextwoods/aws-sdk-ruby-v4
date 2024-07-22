# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeCatalyst
  # @api private
  module Builders

    class CreateAccessToken
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/accessTokens')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input.name unless input.name.nil?
        data['expiresTime'] = Hearth::TimeHelper.to_date_time(input.expires_time) unless input.expires_time.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateDevEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['repositories'] = RepositoriesInput.build(input.repositories) unless input.repositories.nil?
        data['clientToken'] = input.client_token unless input.client_token.nil?
        data['alias'] = input.alias unless input.alias.nil?
        data['ides'] = IdeConfigurationList.build(input.ides) unless input.ides.nil?
        data['instanceType'] = input.instance_type unless input.instance_type.nil?
        data['inactivityTimeoutMinutes'] = input.inactivity_timeout_minutes unless input.inactivity_timeout_minutes.nil?
        data['persistentStorage'] = PersistentStorageConfiguration.build(input.persistent_storage) unless input.persistent_storage.nil?
        data['vpcConnectionName'] = input.vpc_connection_name unless input.vpc_connection_name.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['displayName'] = input.display_name unless input.display_name.nil?
        data['description'] = input.description unless input.description.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateSourceRepository
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input.description unless input.description.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateSourceRepositoryBranch
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.source_repository_name.to_s.empty?
          raise ArgumentError, "HTTP label :source_repository_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories/%<sourceRepositoryName>s/branches/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            sourceRepositoryName: Hearth::HTTP.uri_escape(input.source_repository_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['headCommitId'] = input.head_commit_id unless input.head_commit_id.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteAccessToken
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/accessTokens/%<id>s',
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )
      end
    end

    class DeleteDevEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )
      end
    end

    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )
      end
    end

    class DeleteSourceRepository
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )
      end
    end

    class DeleteSpace
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<name>s',
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )
      end
    end

    class DevEnvironmentSessionConfiguration
      def self.build(input)
        data = {}
        data['sessionType'] = input.session_type unless input.session_type.nil?
        data['executeCommandSessionConfiguration'] = ExecuteCommandSessionConfiguration.build(input.execute_command_session_configuration) unless input.execute_command_session_configuration.nil?
        data
      end
    end

    class ExecuteCommandSessionConfiguration
      def self.build(input)
        data = {}
        data['command'] = input.command unless input.command.nil?
        data['arguments'] = ExecuteCommandSessionConfigurationArguments.build(input.arguments) unless input.arguments.nil?
        data
      end
    end

    class ExecuteCommandSessionConfigurationArguments
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class Filter
      def self.build(input)
        data = {}
        data['key'] = input.key unless input.key.nil?
        data['values'] = StringList.build(input.values) unless input.values.nil?
        data['comparisonOperator'] = input.comparison_operator unless input.comparison_operator.nil?
        data
      end
    end

    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Filter.build(element) unless element.nil?
        end
        data
      end
    end

    class GetDevEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )
      end
    end

    class GetProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )
      end
    end

    class GetSourceRepository
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.source_repository_name.to_s.empty?
          raise ArgumentError, "HTTP label :source_repository_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories/%<sourceRepositoryName>s/cloneUrls',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            sourceRepositoryName: Hearth::HTTP.uri_escape(input.source_repository_name.to_s)
          )
        )
      end
    end

    class GetSpace
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<name>s',
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )
      end
    end

    class GetSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/subscription',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s)
          )
        )
      end
    end

    class GetUserDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/userDetails')
        params = Hearth::Query::ParamList.new
        params['id'] = input.id.to_s unless input.id.nil?
        params['userName'] = input.user_name.to_s unless input.user_name.nil?
        http_req.append_query_param_list(params)
      end
    end

    class GetWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/workflows/%<id>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )
      end
    end

    class GetWorkflowRun
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/workflowRuns/%<id>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )
      end
    end

    class IdeConfiguration
      def self.build(input)
        data = {}
        data['runtime'] = input.runtime unless input.runtime.nil?
        data['name'] = input.name unless input.name.nil?
        data
      end
    end

    class IdeConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << IdeConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    class ListAccessTokens
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/accessTokens')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input.max_results unless input.max_results.nil?
        data['nextToken'] = input.next_token unless input.next_token.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListDevEnvironmentSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.dev_environment_id.to_s.empty?
          raise ArgumentError, "HTTP label :dev_environment_id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<devEnvironmentId>s/sessions',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            devEnvironmentId: Hearth::HTTP.uri_escape(input.dev_environment_id.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input.next_token unless input.next_token.nil?
        data['maxResults'] = input.max_results unless input.max_results.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListDevEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/devEnvironments',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['projectName'] = input.project_name unless input.project_name.nil?
        data['filters'] = Filters.build(input.filters) unless input.filters.nil?
        data['nextToken'] = input.next_token unless input.next_token.nil?
        data['maxResults'] = input.max_results unless input.max_results.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListEventLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/eventLogs',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_date_time(input.start_time) unless input.start_time.nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(input.end_time) unless input.end_time.nil?
        data['eventName'] = input.event_name unless input.event_name.nil?
        data['nextToken'] = input.next_token unless input.next_token.nil?
        data['maxResults'] = input.max_results unless input.max_results.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input.next_token unless input.next_token.nil?
        data['maxResults'] = input.max_results unless input.max_results.nil?
        data['filters'] = ProjectListFilters.build(input.filters) unless input.filters.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListSourceRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input.next_token unless input.next_token.nil?
        data['maxResults'] = input.max_results unless input.max_results.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListSourceRepositoryBranches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.source_repository_name.to_s.empty?
          raise ArgumentError, "HTTP label :source_repository_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/sourceRepositories/%<sourceRepositoryName>s/branches',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            sourceRepositoryName: Hearth::HTTP.uri_escape(input.source_repository_name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input.next_token unless input.next_token.nil?
        data['maxResults'] = input.max_results unless input.max_results.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListSpaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/spaces')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input.next_token unless input.next_token.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListWorkflowRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/workflowRuns',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['workflowId'] = input.workflow_id.to_s unless input.workflow_id.nil?
        params['nextToken'] = input.next_token.to_s unless input.next_token.nil?
        params['maxResults'] = input.max_results.to_s unless input.max_results.nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = WorkflowRunSortCriteriaList.build(input.sort_by) unless input.sort_by.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListWorkflows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/workflows',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input.next_token.to_s unless input.next_token.nil?
        params['maxResults'] = input.max_results.to_s unless input.max_results.nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = WorkflowSortCriteriaList.build(input.sort_by) unless input.sort_by.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class PersistentStorageConfiguration
      def self.build(input)
        data = {}
        data['sizeInGiB'] = input.size_in_gi_b unless input.size_in_gi_b.nil?
        data
      end
    end

    class ProjectListFilter
      def self.build(input)
        data = {}
        data['key'] = input.key unless input.key.nil?
        data['values'] = StringList.build(input.values) unless input.values.nil?
        data['comparisonOperator'] = input.comparison_operator unless input.comparison_operator.nil?
        data
      end
    end

    class ProjectListFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << ProjectListFilter.build(element) unless element.nil?
        end
        data
      end
    end

    class RepositoriesInput
      def self.build(input)
        data = []
        input.each do |element|
          data << RepositoryInput.build(element) unless element.nil?
        end
        data
      end
    end

    class RepositoryInput
      def self.build(input)
        data = {}
        data['repositoryName'] = input.repository_name unless input.repository_name.nil?
        data['branchName'] = input.branch_name unless input.branch_name.nil?
        data
      end
    end

    class StartDevEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s/start',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ides'] = IdeConfigurationList.build(input.ides) unless input.ides.nil?
        data['instanceType'] = input.instance_type unless input.instance_type.nil?
        data['inactivityTimeoutMinutes'] = input.inactivity_timeout_minutes unless input.inactivity_timeout_minutes.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StartDevEnvironmentSession
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s/session',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sessionConfiguration'] = DevEnvironmentSessionConfiguration.build(input.session_configuration) unless input.session_configuration.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StartWorkflowRun
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/workflowRuns',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['workflowId'] = input.workflow_id.to_s unless input.workflow_id.nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input.client_token unless input.client_token.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StopDevEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s/stop',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )
      end
    end

    class StopDevEnvironmentSession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        if input.session_id.to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s/session/%<sessionId>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s),
            sessionId: Hearth::HTTP.uri_escape(input.session_id.to_s)
          )
        )
      end
    end

    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class UpdateDevEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.project_name.to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be empty."
        end
        if input.id.to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<projectName>s/devEnvironments/%<id>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            projectName: Hearth::HTTP.uri_escape(input.project_name.to_s),
            id: Hearth::HTTP.uri_escape(input.id.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['alias'] = input.alias unless input.alias.nil?
        data['ides'] = IdeConfigurationList.build(input.ides) unless input.ides.nil?
        data['instanceType'] = input.instance_type unless input.instance_type.nil?
        data['inactivityTimeoutMinutes'] = input.inactivity_timeout_minutes unless input.inactivity_timeout_minutes.nil?
        data['clientToken'] = input.client_token unless input.client_token.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input.space_name.to_s.empty?
          raise ArgumentError, "HTTP label :space_name cannot be empty."
        end
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<spaceName>s/projects/%<name>s',
            spaceName: Hearth::HTTP.uri_escape(input.space_name.to_s),
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input.description unless input.description.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateSpace
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input.name.to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/v1/spaces/%<name>s',
            name: Hearth::HTTP.uri_escape(input.name.to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input.description unless input.description.nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class VerifySession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/session')
      end
    end

    class WorkflowRunSortCriteria
      def self.build(input)
        data = {}
        data
      end
    end

    class WorkflowRunSortCriteriaList
      def self.build(input)
        data = []
        input.each do |element|
          data << WorkflowRunSortCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    class WorkflowSortCriteria
      def self.build(input)
        data = {}
        data
      end
    end

    class WorkflowSortCriteriaList
      def self.build(input)
        data = []
        input.each do |element|
          data << WorkflowSortCriteria.build(element) unless element.nil?
        end
        data
      end
    end
  end
end
