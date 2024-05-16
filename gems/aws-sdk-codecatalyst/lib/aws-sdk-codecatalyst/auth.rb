# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCatalyst
  module Auth
    Params = Struct.new(:operation_name, keyword_init: true)

    SCHEMES = [
      Hearth::AuthSchemes::HTTPBearer.new,
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :create_access_token
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :create_dev_environment
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :create_project
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :create_source_repository
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :create_source_repository_branch
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :delete_access_token
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :delete_dev_environment
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :delete_project
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :delete_source_repository
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :delete_space
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_dev_environment
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_project
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_source_repository
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_source_repository_clone_urls
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_space
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_subscription
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_user_details
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_workflow
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :get_workflow_run
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_access_tokens
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_dev_environments
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_dev_environment_sessions
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_event_logs
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_projects
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_source_repositories
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_source_repository_branches
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_spaces
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_workflow_runs
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :list_workflows
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :start_dev_environment
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :start_dev_environment_session
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :start_workflow_run
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :stop_dev_environment
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :stop_dev_environment_session
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :update_dev_environment
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :update_project
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :update_space
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        when :verify_session
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
        else nil
        end
        options
      end

    end
  end
end
