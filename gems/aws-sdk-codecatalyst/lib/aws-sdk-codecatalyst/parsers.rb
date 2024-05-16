# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCatalyst
  # @api private
  module Parsers

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class AccessTokenSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AccessTokenSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccessTokenSummary
      def self.parse(map)
        data = Types::AccessTokenSummary.new
        data.id = map['id']
        data.name = map['name']
        data.expires_time = Time.parse(map['expiresTime']) if map['expiresTime']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class CreateAccessToken
      def self.parse(http_resp)
        data = Types::CreateAccessTokenOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.secret = map['secret']
        data.name = map['name']
        data.expires_time = Time.parse(map['expiresTime']) if map['expiresTime']
        data.access_token_id = map['accessTokenId']
        data
      end
    end

    class CreateDevEnvironment
      def self.parse(http_resp)
        data = Types::CreateDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.vpc_connection_name = map['vpcConnectionName']
        data
      end
    end

    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.name = map['name']
        data.display_name = map['displayName']
        data.description = map['description']
        data
      end
    end

    class CreateSourceRepository
      def self.parse(http_resp)
        data = Types::CreateSourceRepositoryOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.name = map['name']
        data.description = map['description']
        data
      end
    end

    class CreateSourceRepositoryBranch
      def self.parse(http_resp)
        data = Types::CreateSourceRepositoryBranchOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.ref = map['ref']
        data.name = map['name']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.head_commit_id = map['headCommitId']
        data
      end
    end

    class DeleteAccessToken
      def self.parse(http_resp)
        data = Types::DeleteAccessTokenOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data
      end
    end

    class DeleteDevEnvironment
      def self.parse(http_resp)
        data = Types::DeleteDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data
      end
    end

    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.name = map['name']
        data.display_name = map['displayName']
        data
      end
    end

    class DeleteSourceRepository
      def self.parse(http_resp)
        data = Types::DeleteSourceRepositoryOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.name = map['name']
        data
      end
    end

    class DeleteSpace
      def self.parse(http_resp)
        data = Types::DeleteSpaceOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.name = map['name']
        data.display_name = map['displayName']
        data
      end
    end

    class DevEnvironmentAccessDetails
      def self.parse(map)
        data = Types::DevEnvironmentAccessDetails.new
        data.stream_url = map['streamUrl']
        data.token_value = map['tokenValue']
        return data
      end
    end

    class DevEnvironmentRepositorySummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DevEnvironmentRepositorySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DevEnvironmentRepositorySummary
      def self.parse(map)
        data = Types::DevEnvironmentRepositorySummary.new
        data.repository_name = map['repositoryName']
        data.branch_name = map['branchName']
        return data
      end
    end

    class DevEnvironmentSessionSummary
      def self.parse(map)
        data = Types::DevEnvironmentSessionSummary.new
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.dev_environment_id = map['devEnvironmentId']
        data.started_time = Time.parse(map['startedTime']) if map['startedTime']
        data.id = map['id']
        return data
      end
    end

    class DevEnvironmentSessionsSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DevEnvironmentSessionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DevEnvironmentSummary
      def self.parse(map)
        data = Types::DevEnvironmentSummary.new
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.creator_id = map['creatorId']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.repositories = (DevEnvironmentRepositorySummaries.parse(map['repositories']) unless map['repositories'].nil?)
        data.alias = map['alias']
        data.ides = (Ides.parse(map['ides']) unless map['ides'].nil?)
        data.instance_type = map['instanceType']
        data.inactivity_timeout_minutes = map['inactivityTimeoutMinutes']
        data.persistent_storage = (PersistentStorage.parse(map['persistentStorage']) unless map['persistentStorage'].nil?)
        data.vpc_connection_name = map['vpcConnectionName']
        return data
      end
    end

    class DevEnvironmentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DevEnvironmentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EmailAddress
      def self.parse(map)
        data = Types::EmailAddress.new
        data.email = map['email']
        data.verified = map['verified']
        return data
      end
    end

    class EventLogEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << EventLogEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventLogEntry
      def self.parse(map)
        data = Types::EventLogEntry.new
        data.id = map['id']
        data.event_name = map['eventName']
        data.event_type = map['eventType']
        data.event_category = map['eventCategory']
        data.event_source = map['eventSource']
        data.event_time = Time.parse(map['eventTime']) if map['eventTime']
        data.operation_type = map['operationType']
        data.user_identity = (UserIdentity.parse(map['userIdentity']) unless map['userIdentity'].nil?)
        data.project_information = (ProjectInformation.parse(map['projectInformation']) unless map['projectInformation'].nil?)
        data.request_id = map['requestId']
        data.request_payload = (EventPayload.parse(map['requestPayload']) unless map['requestPayload'].nil?)
        data.response_payload = (EventPayload.parse(map['responsePayload']) unless map['responsePayload'].nil?)
        data.error_code = map['errorCode']
        data.source_ip_address = map['sourceIpAddress']
        data.user_agent = map['userAgent']
        return data
      end
    end

    class EventPayload
      def self.parse(map)
        data = Types::EventPayload.new
        data.content_type = map['contentType']
        data.data = map['data']
        return data
      end
    end

    class GetDevEnvironment
      def self.parse(http_resp)
        data = Types::GetDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.creator_id = map['creatorId']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.repositories = (DevEnvironmentRepositorySummaries.parse(map['repositories']) unless map['repositories'].nil?)
        data.alias = map['alias']
        data.ides = (Ides.parse(map['ides']) unless map['ides'].nil?)
        data.instance_type = map['instanceType']
        data.inactivity_timeout_minutes = map['inactivityTimeoutMinutes']
        data.persistent_storage = (PersistentStorage.parse(map['persistentStorage']) unless map['persistentStorage'].nil?)
        data.vpc_connection_name = map['vpcConnectionName']
        data
      end
    end

    class GetProject
      def self.parse(http_resp)
        data = Types::GetProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.name = map['name']
        data.display_name = map['displayName']
        data.description = map['description']
        data
      end
    end

    class GetSourceRepository
      def self.parse(http_resp)
        data = Types::GetSourceRepositoryOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.name = map['name']
        data.description = map['description']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        data
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.parse(http_resp)
        data = Types::GetSourceRepositoryCloneUrlsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.https = map['https']
        data
      end
    end

    class GetSpace
      def self.parse(http_resp)
        data = Types::GetSpaceOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.name = map['name']
        data.region_name = map['regionName']
        data.display_name = map['displayName']
        data.description = map['description']
        data
      end
    end

    class GetSubscription
      def self.parse(http_resp)
        data = Types::GetSubscriptionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.subscription_type = map['subscriptionType']
        data.aws_account_name = map['awsAccountName']
        data.pending_subscription_type = map['pendingSubscriptionType']
        data.pending_subscription_start_time = Time.parse(map['pendingSubscriptionStartTime']) if map['pendingSubscriptionStartTime']
        data
      end
    end

    class GetUserDetails
      def self.parse(http_resp)
        data = Types::GetUserDetailsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.user_id = map['userId']
        data.user_name = map['userName']
        data.display_name = map['displayName']
        data.primary_email = (EmailAddress.parse(map['primaryEmail']) unless map['primaryEmail'].nil?)
        data.version = map['version']
        data
      end
    end

    class GetWorkflow
      def self.parse(http_resp)
        data = Types::GetWorkflowOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.name = map['name']
        data.source_repository_name = map['sourceRepositoryName']
        data.source_branch_name = map['sourceBranchName']
        data.definition = (WorkflowDefinition.parse(map['definition']) unless map['definition'].nil?)
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.run_mode = map['runMode']
        data.status = map['status']
        data
      end
    end

    class GetWorkflowRun
      def self.parse(http_resp)
        data = Types::GetWorkflowRunOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.workflow_id = map['workflowId']
        data.status = map['status']
        data.status_reasons = (WorkflowRunStatusReasons.parse(map['statusReasons']) unless map['statusReasons'].nil?)
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data
      end
    end

    class Ide
      def self.parse(map)
        data = Types::Ide.new
        data.runtime = map['runtime']
        data.name = map['name']
        return data
      end
    end

    class IdeConfiguration
      def self.parse(map)
        data = Types::IdeConfiguration.new
        data.runtime = map['runtime']
        data.name = map['name']
        return data
      end
    end

    class IdeConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IdeConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Ides
      def self.parse(list)
        data = []
        list.map do |value|
          data << Ide.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListAccessTokens
      def self.parse(http_resp)
        data = Types::ListAccessTokensOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = (AccessTokenSummaries.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListDevEnvironmentSessions
      def self.parse(http_resp)
        data = Types::ListDevEnvironmentSessionsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = (DevEnvironmentSessionsSummaryList.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListDevEnvironments
      def self.parse(http_resp)
        data = Types::ListDevEnvironmentsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = (DevEnvironmentSummaryList.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListEventLogs
      def self.parse(http_resp)
        data = Types::ListEventLogsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken']
        data.items = (EventLogEntries.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken']
        data.items = (ProjectSummaries.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class ListSourceRepositories
      def self.parse(http_resp)
        data = Types::ListSourceRepositoriesOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = (ListSourceRepositoriesItems.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListSourceRepositoriesItem
      def self.parse(map)
        data = Types::ListSourceRepositoriesItem.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        return data
      end
    end

    class ListSourceRepositoriesItems
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListSourceRepositoriesItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListSourceRepositoryBranches
      def self.parse(http_resp)
        data = Types::ListSourceRepositoryBranchesOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken']
        data.items = (ListSourceRepositoryBranchesItems.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class ListSourceRepositoryBranchesItem
      def self.parse(map)
        data = Types::ListSourceRepositoryBranchesItem.new
        data.ref = map['ref']
        data.name = map['name']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.head_commit_id = map['headCommitId']
        return data
      end
    end

    class ListSourceRepositoryBranchesItems
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListSourceRepositoryBranchesItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListSpaces
      def self.parse(http_resp)
        data = Types::ListSpacesOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken']
        data.items = (SpaceSummaries.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class ListWorkflowRuns
      def self.parse(http_resp)
        data = Types::ListWorkflowRunsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken']
        data.items = (WorkflowRunSummaries.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class ListWorkflows
      def self.parse(http_resp)
        data = Types::ListWorkflowsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken']
        data.items = (WorkflowSummaries.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class PersistentStorage
      def self.parse(map)
        data = Types::PersistentStorage.new
        data.size_in_gi_b = map['sizeInGiB']
        return data
      end
    end

    class ProjectInformation
      def self.parse(map)
        data = Types::ProjectInformation.new
        data.name = map['name']
        data.project_id = map['projectId']
        return data
      end
    end

    class ProjectSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProjectSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.name = map['name']
        data.display_name = map['displayName']
        data.description = map['description']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class SpaceSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << SpaceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SpaceSummary
      def self.parse(map)
        data = Types::SpaceSummary.new
        data.name = map['name']
        data.region_name = map['regionName']
        data.display_name = map['displayName']
        data.description = map['description']
        return data
      end
    end

    class StartDevEnvironment
      def self.parse(http_resp)
        data = Types::StartDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.status = map['status']
        data
      end
    end

    class StartDevEnvironmentSession
      def self.parse(http_resp)
        data = Types::StartDevEnvironmentSessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.access_details = (DevEnvironmentAccessDetails.parse(map['accessDetails']) unless map['accessDetails'].nil?)
        data.session_id = map['sessionId']
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data
      end
    end

    class StartWorkflowRun
      def self.parse(http_resp)
        data = Types::StartWorkflowRunOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.workflow_id = map['workflowId']
        data
      end
    end

    class StopDevEnvironment
      def self.parse(http_resp)
        data = Types::StopDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.status = map['status']
        data
      end
    end

    class StopDevEnvironmentSession
      def self.parse(http_resp)
        data = Types::StopDevEnvironmentSessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.id = map['id']
        data.session_id = map['sessionId']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class UpdateDevEnvironment
      def self.parse(http_resp)
        data = Types::UpdateDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.id = map['id']
        data.space_name = map['spaceName']
        data.project_name = map['projectName']
        data.alias = map['alias']
        data.ides = (IdeConfigurationList.parse(map['ides']) unless map['ides'].nil?)
        data.instance_type = map['instanceType']
        data.inactivity_timeout_minutes = map['inactivityTimeoutMinutes']
        data.client_token = map['clientToken']
        data
      end
    end

    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName']
        data.name = map['name']
        data.display_name = map['displayName']
        data.description = map['description']
        data
      end
    end

    class UpdateSpace
      def self.parse(http_resp)
        data = Types::UpdateSpaceOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.name = map['name']
        data.display_name = map['displayName']
        data.description = map['description']
        data
      end
    end

    class UserIdentity
      def self.parse(map)
        data = Types::UserIdentity.new
        data.user_type = map['userType']
        data.principal_id = map['principalId']
        data.user_name = map['userName']
        data.aws_account_id = map['awsAccountId']
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class VerifySession
      def self.parse(http_resp)
        data = Types::VerifySessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.identity = map['identity']
        data
      end
    end

    class WorkflowDefinition
      def self.parse(map)
        data = Types::WorkflowDefinition.new
        data.path = map['path']
        return data
      end
    end

    class WorkflowDefinitionSummary
      def self.parse(map)
        data = Types::WorkflowDefinitionSummary.new
        data.path = map['path']
        return data
      end
    end

    class WorkflowRunStatusReason
      def self.parse(map)
        data = Types::WorkflowRunStatusReason.new
        return data
      end
    end

    class WorkflowRunStatusReasons
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkflowRunStatusReason.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkflowRunSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkflowRunSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkflowRunSummary
      def self.parse(map)
        data = Types::WorkflowRunSummary.new
        data.id = map['id']
        data.workflow_id = map['workflowId']
        data.workflow_name = map['workflowName']
        data.status = map['status']
        data.status_reasons = (WorkflowRunStatusReasons.parse(map['statusReasons']) unless map['statusReasons'].nil?)
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        return data
      end
    end

    class WorkflowSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkflowSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkflowSummary
      def self.parse(map)
        data = Types::WorkflowSummary.new
        data.id = map['id']
        data.name = map['name']
        data.source_repository_name = map['sourceRepositoryName']
        data.source_branch_name = map['sourceBranchName']
        data.definition = (WorkflowDefinitionSummary.parse(map['definition']) unless map['definition'].nil?)
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.run_mode = map['runMode']
        data.status = map['status']
        return data
      end
    end
  end
end
