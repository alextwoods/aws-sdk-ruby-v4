# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCatalyst
  # @api private
  module Telemetry

    class CreateAccessToken
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'CreateAccessToken',
          'code.function' => 'create_access_token',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.CreateAccessToken',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateDevEnvironment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'CreateDevEnvironment',
          'code.function' => 'create_dev_environment',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.CreateDevEnvironment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateProject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'CreateProject',
          'code.function' => 'create_project',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.CreateProject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateSourceRepository
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'CreateSourceRepository',
          'code.function' => 'create_source_repository',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.CreateSourceRepository',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateSourceRepositoryBranch
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'CreateSourceRepositoryBranch',
          'code.function' => 'create_source_repository_branch',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.CreateSourceRepositoryBranch',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteAccessToken
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'DeleteAccessToken',
          'code.function' => 'delete_access_token',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.DeleteAccessToken',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteDevEnvironment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'DeleteDevEnvironment',
          'code.function' => 'delete_dev_environment',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.DeleteDevEnvironment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteProject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'DeleteProject',
          'code.function' => 'delete_project',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.DeleteProject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteSourceRepository
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'DeleteSourceRepository',
          'code.function' => 'delete_source_repository',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.DeleteSourceRepository',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteSpace
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'DeleteSpace',
          'code.function' => 'delete_space',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.DeleteSpace',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetDevEnvironment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetDevEnvironment',
          'code.function' => 'get_dev_environment',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetDevEnvironment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetProject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetProject',
          'code.function' => 'get_project',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetProject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetSourceRepository
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetSourceRepository',
          'code.function' => 'get_source_repository',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetSourceRepository',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetSourceRepositoryCloneUrls',
          'code.function' => 'get_source_repository_clone_urls',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetSourceRepositoryCloneUrls',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetSpace
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetSpace',
          'code.function' => 'get_space',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetSpace',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetSubscription
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetSubscription',
          'code.function' => 'get_subscription',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetSubscription',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetUserDetails
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetUserDetails',
          'code.function' => 'get_user_details',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetUserDetails',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetWorkflow
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetWorkflow',
          'code.function' => 'get_workflow',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetWorkflow',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetWorkflowRun
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'GetWorkflowRun',
          'code.function' => 'get_workflow_run',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.GetWorkflowRun',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListAccessTokens
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListAccessTokens',
          'code.function' => 'list_access_tokens',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListAccessTokens',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListDevEnvironmentSessions
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListDevEnvironmentSessions',
          'code.function' => 'list_dev_environment_sessions',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListDevEnvironmentSessions',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListDevEnvironments
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListDevEnvironments',
          'code.function' => 'list_dev_environments',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListDevEnvironments',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListEventLogs
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListEventLogs',
          'code.function' => 'list_event_logs',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListEventLogs',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListProjects
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListProjects',
          'code.function' => 'list_projects',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListProjects',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListSourceRepositories
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListSourceRepositories',
          'code.function' => 'list_source_repositories',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListSourceRepositories',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListSourceRepositoryBranches
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListSourceRepositoryBranches',
          'code.function' => 'list_source_repository_branches',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListSourceRepositoryBranches',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListSpaces
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListSpaces',
          'code.function' => 'list_spaces',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListSpaces',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListWorkflowRuns
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListWorkflowRuns',
          'code.function' => 'list_workflow_runs',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListWorkflowRuns',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListWorkflows
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'ListWorkflows',
          'code.function' => 'list_workflows',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.ListWorkflows',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartDevEnvironment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'StartDevEnvironment',
          'code.function' => 'start_dev_environment',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.StartDevEnvironment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartDevEnvironmentSession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'StartDevEnvironmentSession',
          'code.function' => 'start_dev_environment_session',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.StartDevEnvironmentSession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartWorkflowRun
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'StartWorkflowRun',
          'code.function' => 'start_workflow_run',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.StartWorkflowRun',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StopDevEnvironment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'StopDevEnvironment',
          'code.function' => 'stop_dev_environment',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.StopDevEnvironment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StopDevEnvironmentSession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'StopDevEnvironmentSession',
          'code.function' => 'stop_dev_environment_session',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.StopDevEnvironmentSession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateDevEnvironment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'UpdateDevEnvironment',
          'code.function' => 'update_dev_environment',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.UpdateDevEnvironment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateProject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'UpdateProject',
          'code.function' => 'update_project',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.UpdateProject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateSpace
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'UpdateSpace',
          'code.function' => 'update_space',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.UpdateSpace',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class VerifySession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'CodeCatalyst',
          'rpc.method' => 'VerifySession',
          'code.function' => 'verify_session',
          'code.namespace' => 'AWS::SDK::CodeCatalyst::Telemetry'
        }
        context.tracer.in_span(
          'CodeCatalyst.VerifySession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
