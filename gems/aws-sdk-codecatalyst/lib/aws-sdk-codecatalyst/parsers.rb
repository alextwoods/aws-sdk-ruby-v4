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
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
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
        data.id = map['id'] unless map['id'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.expires_time = Time.parse(map['expiresTime']) if map['expiresTime']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class CreateAccessToken
      def self.parse(http_resp)
        data = Types::CreateAccessTokenOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.secret = map['secret'] unless map['secret'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.expires_time = Time.parse(map['expiresTime']) if map['expiresTime']
        data.access_token_id = map['accessTokenId'] unless map['accessTokenId'].nil?
        data
      end
    end

    class CreateDevEnvironment
      def self.parse(http_resp)
        data = Types::CreateDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.vpc_connection_name = map['vpcConnectionName'] unless map['vpcConnectionName'].nil?
        data
      end
    end

    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        data
      end
    end

    class CreateSourceRepository
      def self.parse(http_resp)
        data = Types::CreateSourceRepositoryOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.description = map['description'] unless map['description'].nil?
        data
      end
    end

    class CreateSourceRepositoryBranch
      def self.parse(http_resp)
        data = Types::CreateSourceRepositoryBranchOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.ref = map['ref'] unless map['ref'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.head_commit_id = map['headCommitId'] unless map['headCommitId'].nil?
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
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data
      end
    end

    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data
      end
    end

    class DeleteSourceRepository
      def self.parse(http_resp)
        data = Types::DeleteSourceRepositoryOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data
      end
    end

    class DeleteSpace
      def self.parse(http_resp)
        data = Types::DeleteSpaceOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data
      end
    end

    class DevEnvironmentAccessDetails
      def self.parse(map)
        data = Types::DevEnvironmentAccessDetails.new
        data.stream_url = map['streamUrl'] unless map['streamUrl'].nil?
        data.token_value = map['tokenValue'] unless map['tokenValue'].nil?
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
        data.repository_name = map['repositoryName'] unless map['repositoryName'].nil?
        data.branch_name = map['branchName'] unless map['branchName'].nil?
        return data
      end
    end

    class DevEnvironmentSessionSummary
      def self.parse(map)
        data = Types::DevEnvironmentSessionSummary.new
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.dev_environment_id = map['devEnvironmentId'] unless map['devEnvironmentId'].nil?
        data.started_time = Time.parse(map['startedTime']) if map['startedTime']
        data.id = map['id'] unless map['id'].nil?
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
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.creator_id = map['creatorId'] unless map['creatorId'].nil?
        data.status = map['status'] unless map['status'].nil?
        data.status_reason = map['statusReason'] unless map['statusReason'].nil?
        data.repositories = DevEnvironmentRepositorySummaries.parse(map['repositories']) unless map['repositories'].nil?
        data.alias = map['alias'] unless map['alias'].nil?
        data.ides = Ides.parse(map['ides']) unless map['ides'].nil?
        data.instance_type = map['instanceType'] unless map['instanceType'].nil?
        data.inactivity_timeout_minutes = map['inactivityTimeoutMinutes'] unless map['inactivityTimeoutMinutes'].nil?
        data.persistent_storage = PersistentStorage.parse(map['persistentStorage']) unless map['persistentStorage'].nil?
        data.vpc_connection_name = map['vpcConnectionName'] unless map['vpcConnectionName'].nil?
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
        data.email = map['email'] unless map['email'].nil?
        data.verified = map['verified'] unless map['verified'].nil?
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
        data.id = map['id'] unless map['id'].nil?
        data.event_name = map['eventName'] unless map['eventName'].nil?
        data.event_type = map['eventType'] unless map['eventType'].nil?
        data.event_category = map['eventCategory'] unless map['eventCategory'].nil?
        data.event_source = map['eventSource'] unless map['eventSource'].nil?
        data.event_time = Time.parse(map['eventTime']) if map['eventTime']
        data.operation_type = map['operationType'] unless map['operationType'].nil?
        data.user_identity = UserIdentity.parse(map['userIdentity']) unless map['userIdentity'].nil?
        data.project_information = ProjectInformation.parse(map['projectInformation']) unless map['projectInformation'].nil?
        data.request_id = map['requestId'] unless map['requestId'].nil?
        data.request_payload = EventPayload.parse(map['requestPayload']) unless map['requestPayload'].nil?
        data.response_payload = EventPayload.parse(map['responsePayload']) unless map['responsePayload'].nil?
        data.error_code = map['errorCode'] unless map['errorCode'].nil?
        data.source_ip_address = map['sourceIpAddress'] unless map['sourceIpAddress'].nil?
        data.user_agent = map['userAgent'] unless map['userAgent'].nil?
        return data
      end
    end

    class EventPayload
      def self.parse(map)
        data = Types::EventPayload.new
        data.content_type = map['contentType'] unless map['contentType'].nil?
        data.data = map['data'] unless map['data'].nil?
        return data
      end
    end

    class GetDevEnvironment
      def self.parse(http_resp)
        data = Types::GetDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.creator_id = map['creatorId'] unless map['creatorId'].nil?
        data.status = map['status'] unless map['status'].nil?
        data.status_reason = map['statusReason'] unless map['statusReason'].nil?
        data.repositories = DevEnvironmentRepositorySummaries.parse(map['repositories']) unless map['repositories'].nil?
        data.alias = map['alias'] unless map['alias'].nil?
        data.ides = Ides.parse(map['ides']) unless map['ides'].nil?
        data.instance_type = map['instanceType'] unless map['instanceType'].nil?
        data.inactivity_timeout_minutes = map['inactivityTimeoutMinutes'] unless map['inactivityTimeoutMinutes'].nil?
        data.persistent_storage = PersistentStorage.parse(map['persistentStorage']) unless map['persistentStorage'].nil?
        data.vpc_connection_name = map['vpcConnectionName'] unless map['vpcConnectionName'].nil?
        data
      end
    end

    class GetProject
      def self.parse(http_resp)
        data = Types::GetProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        data
      end
    end

    class GetSourceRepository
      def self.parse(http_resp)
        data = Types::GetSourceRepositoryOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.description = map['description'] unless map['description'].nil?
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        data
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.parse(http_resp)
        data = Types::GetSourceRepositoryCloneUrlsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.https = map['https'] unless map['https'].nil?
        data
      end
    end

    class GetSpace
      def self.parse(http_resp)
        data = Types::GetSpaceOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.name = map['name'] unless map['name'].nil?
        data.region_name = map['regionName'] unless map['regionName'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        data
      end
    end

    class GetSubscription
      def self.parse(http_resp)
        data = Types::GetSubscriptionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.subscription_type = map['subscriptionType'] unless map['subscriptionType'].nil?
        data.aws_account_name = map['awsAccountName'] unless map['awsAccountName'].nil?
        data.pending_subscription_type = map['pendingSubscriptionType'] unless map['pendingSubscriptionType'].nil?
        data.pending_subscription_start_time = Time.parse(map['pendingSubscriptionStartTime']) if map['pendingSubscriptionStartTime']
        data
      end
    end

    class GetUserDetails
      def self.parse(http_resp)
        data = Types::GetUserDetailsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.user_id = map['userId'] unless map['userId'].nil?
        data.user_name = map['userName'] unless map['userName'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.primary_email = EmailAddress.parse(map['primaryEmail']) unless map['primaryEmail'].nil?
        data.version = map['version'] unless map['version'].nil?
        data
      end
    end

    class GetWorkflow
      def self.parse(http_resp)
        data = Types::GetWorkflowOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.source_repository_name = map['sourceRepositoryName'] unless map['sourceRepositoryName'].nil?
        data.source_branch_name = map['sourceBranchName'] unless map['sourceBranchName'].nil?
        data.definition = WorkflowDefinition.parse(map['definition']) unless map['definition'].nil?
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.run_mode = map['runMode'] unless map['runMode'].nil?
        data.status = map['status'] unless map['status'].nil?
        data
      end
    end

    class GetWorkflowRun
      def self.parse(http_resp)
        data = Types::GetWorkflowRunOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.workflow_id = map['workflowId'] unless map['workflowId'].nil?
        data.status = map['status'] unless map['status'].nil?
        data.status_reasons = WorkflowRunStatusReasons.parse(map['statusReasons']) unless map['statusReasons'].nil?
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data
      end
    end

    class Ide
      def self.parse(map)
        data = Types::Ide.new
        data.runtime = map['runtime'] unless map['runtime'].nil?
        data.name = map['name'] unless map['name'].nil?
        return data
      end
    end

    class IdeConfiguration
      def self.parse(map)
        data = Types::IdeConfiguration.new
        data.runtime = map['runtime'] unless map['runtime'].nil?
        data.name = map['name'] unless map['name'].nil?
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
        data.items = AccessTokenSummaries.parse(map['items']) unless map['items'].nil?
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data
      end
    end

    class ListDevEnvironmentSessions
      def self.parse(http_resp)
        data = Types::ListDevEnvironmentSessionsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = DevEnvironmentSessionsSummaryList.parse(map['items']) unless map['items'].nil?
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data
      end
    end

    class ListDevEnvironments
      def self.parse(http_resp)
        data = Types::ListDevEnvironmentsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = DevEnvironmentSummaryList.parse(map['items']) unless map['items'].nil?
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data
      end
    end

    class ListEventLogs
      def self.parse(http_resp)
        data = Types::ListEventLogsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.items = EventLogEntries.parse(map['items']) unless map['items'].nil?
        data
      end
    end

    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.items = ProjectSummaries.parse(map['items']) unless map['items'].nil?
        data
      end
    end

    class ListSourceRepositories
      def self.parse(http_resp)
        data = Types::ListSourceRepositoriesOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.items = ListSourceRepositoriesItems.parse(map['items']) unless map['items'].nil?
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data
      end
    end

    class ListSourceRepositoriesItem
      def self.parse(map)
        data = Types::ListSourceRepositoriesItem.new
        data.id = map['id'] unless map['id'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.description = map['description'] unless map['description'].nil?
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
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.items = ListSourceRepositoryBranchesItems.parse(map['items']) unless map['items'].nil?
        data
      end
    end

    class ListSourceRepositoryBranchesItem
      def self.parse(map)
        data = Types::ListSourceRepositoryBranchesItem.new
        data.ref = map['ref'] unless map['ref'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.head_commit_id = map['headCommitId'] unless map['headCommitId'].nil?
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
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.items = SpaceSummaries.parse(map['items']) unless map['items'].nil?
        data
      end
    end

    class ListWorkflowRuns
      def self.parse(http_resp)
        data = Types::ListWorkflowRunsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.items = WorkflowRunSummaries.parse(map['items']) unless map['items'].nil?
        data
      end
    end

    class ListWorkflows
      def self.parse(http_resp)
        data = Types::ListWorkflowsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.items = WorkflowSummaries.parse(map['items']) unless map['items'].nil?
        data
      end
    end

    class PersistentStorage
      def self.parse(map)
        data = Types::PersistentStorage.new
        data.size_in_gi_b = map['sizeInGiB'] unless map['sizeInGiB'].nil?
        return data
      end
    end

    class ProjectInformation
      def self.parse(map)
        data = Types::ProjectInformation.new
        data.name = map['name'] unless map['name'].nil?
        data.project_id = map['projectId'] unless map['projectId'].nil?
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
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
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
        data.name = map['name'] unless map['name'].nil?
        data.region_name = map['regionName'] unless map['regionName'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        return data
      end
    end

    class StartDevEnvironment
      def self.parse(http_resp)
        data = Types::StartDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.status = map['status'] unless map['status'].nil?
        data
      end
    end

    class StartDevEnvironmentSession
      def self.parse(http_resp)
        data = Types::StartDevEnvironmentSessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.access_details = DevEnvironmentAccessDetails.parse(map['accessDetails']) unless map['accessDetails'].nil?
        data.session_id = map['sessionId'] unless map['sessionId'].nil?
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data
      end
    end

    class StartWorkflowRun
      def self.parse(http_resp)
        data = Types::StartWorkflowRunOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.workflow_id = map['workflowId'] unless map['workflowId'].nil?
        data
      end
    end

    class StopDevEnvironment
      def self.parse(http_resp)
        data = Types::StopDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.status = map['status'] unless map['status'].nil?
        data
      end
    end

    class StopDevEnvironmentSession
      def self.parse(http_resp)
        data = Types::StopDevEnvironmentSessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.id = map['id'] unless map['id'].nil?
        data.session_id = map['sessionId'] unless map['sessionId'].nil?
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class UpdateDevEnvironment
      def self.parse(http_resp)
        data = Types::UpdateDevEnvironmentOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.id = map['id'] unless map['id'].nil?
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.project_name = map['projectName'] unless map['projectName'].nil?
        data.alias = map['alias'] unless map['alias'].nil?
        data.ides = IdeConfigurationList.parse(map['ides']) unless map['ides'].nil?
        data.instance_type = map['instanceType'] unless map['instanceType'].nil?
        data.inactivity_timeout_minutes = map['inactivityTimeoutMinutes'] unless map['inactivityTimeoutMinutes'].nil?
        data.client_token = map['clientToken'] unless map['clientToken'].nil?
        data
      end
    end

    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.space_name = map['spaceName'] unless map['spaceName'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        data
      end
    end

    class UpdateSpace
      def self.parse(http_resp)
        data = Types::UpdateSpaceOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.name = map['name'] unless map['name'].nil?
        data.display_name = map['displayName'] unless map['displayName'].nil?
        data.description = map['description'] unless map['description'].nil?
        data
      end
    end

    class UserIdentity
      def self.parse(map)
        data = Types::UserIdentity.new
        data.user_type = map['userType'] unless map['userType'].nil?
        data.principal_id = map['principalId'] unless map['principalId'].nil?
        data.user_name = map['userName'] unless map['userName'].nil?
        data.aws_account_id = map['awsAccountId'] unless map['awsAccountId'].nil?
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class VerifySession
      def self.parse(http_resp)
        data = Types::VerifySessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.identity = map['identity'] unless map['identity'].nil?
        data
      end
    end

    class WorkflowDefinition
      def self.parse(map)
        data = Types::WorkflowDefinition.new
        data.path = map['path'] unless map['path'].nil?
        return data
      end
    end

    class WorkflowDefinitionSummary
      def self.parse(map)
        data = Types::WorkflowDefinitionSummary.new
        data.path = map['path'] unless map['path'].nil?
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
        data.id = map['id'] unless map['id'].nil?
        data.workflow_id = map['workflowId'] unless map['workflowId'].nil?
        data.workflow_name = map['workflowName'] unless map['workflowName'].nil?
        data.status = map['status'] unless map['status'].nil?
        data.status_reasons = WorkflowRunStatusReasons.parse(map['statusReasons']) unless map['statusReasons'].nil?
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
        data.id = map['id'] unless map['id'].nil?
        data.name = map['name'] unless map['name'].nil?
        data.source_repository_name = map['sourceRepositoryName'] unless map['sourceRepositoryName'].nil?
        data.source_branch_name = map['sourceBranchName'] unless map['sourceBranchName'].nil?
        data.definition = WorkflowDefinitionSummary.parse(map['definition']) unless map['definition'].nil?
        data.created_time = Time.parse(map['createdTime']) if map['createdTime']
        data.last_updated_time = Time.parse(map['lastUpdatedTime']) if map['lastUpdatedTime']
        data.run_mode = map['runMode'] unless map['runMode'].nil?
        data.status = map['status'] unless map['status'].nil?
        return data
      end
    end
  end
end
