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
  module Stubs

    class AccessDeniedException
      def self.build(params, context:)
        Params::AccessDeniedException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AccessDeniedException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 403
        http_resp.headers['X-Amzn-Errortype'] = 'AccessDeniedException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class AccessTokenSummaries
      def self.default(visited = [])
        return nil if visited.include?('AccessTokenSummaries')
        visited = visited + ['AccessTokenSummaries']
        [
          AccessTokenSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessTokenSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class AccessTokenSummary
      def self.default(visited = [])
        return nil if visited.include?('AccessTokenSummary')
        visited = visited + ['AccessTokenSummary']
        {
          id: 'id',
          name: 'name',
          expires_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessTokenSummary.new
        data = {}
        data['id'] = stub.id unless stub.id.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['expiresTime'] = Hearth::TimeHelper.to_date_time(stub.expires_time) unless stub.expires_time.nil?
        data
      end
    end

    class ConflictException
      def self.build(params, context:)
        Params::ConflictException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ConflictException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 409
        http_resp.headers['X-Amzn-Errortype'] = 'ConflictException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateAccessToken
      def self.build(params, context:)
        Params::CreateAccessTokenOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateAccessTokenOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          secret: 'secret',
          name: 'name',
          expires_time: Time.now,
          access_token_id: 'access_token_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['secret'] = stub.secret unless stub.secret.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['expiresTime'] = Hearth::TimeHelper.to_date_time(stub.expires_time) unless stub.expires_time.nil?
        data['accessTokenId'] = stub.access_token_id unless stub.access_token_id.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateDevEnvironment
      def self.build(params, context:)
        Params::CreateDevEnvironmentOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateDevEnvironmentOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          vpc_connection_name: 'vpc_connection_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['vpcConnectionName'] = stub.vpc_connection_name unless stub.vpc_connection_name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateProject
      def self.build(params, context:)
        Params::CreateProjectOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateProjectOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          name: 'name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateSourceRepository
      def self.build(params, context:)
        Params::CreateSourceRepositoryOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateSourceRepositoryOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['description'] = stub.description unless stub.description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateSourceRepositoryBranch
      def self.build(params, context:)
        Params::CreateSourceRepositoryBranchOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateSourceRepositoryBranchOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          ref: 'ref',
          name: 'name',
          last_updated_time: Time.now,
          head_commit_id: 'head_commit_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ref'] = stub.ref unless stub.ref.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['headCommitId'] = stub.head_commit_id unless stub.head_commit_id.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteAccessToken
      def self.build(params, context:)
        Params::DeleteAccessTokenOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteAccessTokenOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    class DeleteDevEnvironment
      def self.build(params, context:)
        Params::DeleteDevEnvironmentOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteDevEnvironmentOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteProject
      def self.build(params, context:)
        Params::DeleteProjectOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteProjectOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          name: 'name',
          display_name: 'display_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteSourceRepository
      def self.build(params, context:)
        Params::DeleteSourceRepositoryOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteSourceRepositoryOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteSpace
      def self.build(params, context:)
        Params::DeleteSpaceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteSpaceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          name: 'name',
          display_name: 'display_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DevEnvironmentAccessDetails
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentAccessDetails')
        visited = visited + ['DevEnvironmentAccessDetails']
        {
          stream_url: 'stream_url',
          token_value: 'token_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DevEnvironmentAccessDetails.new
        data = {}
        data['streamUrl'] = stub.stream_url unless stub.stream_url.nil?
        data['tokenValue'] = stub.token_value unless stub.token_value.nil?
        data
      end
    end

    class DevEnvironmentRepositorySummaries
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentRepositorySummaries')
        visited = visited + ['DevEnvironmentRepositorySummaries']
        [
          DevEnvironmentRepositorySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevEnvironmentRepositorySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class DevEnvironmentRepositorySummary
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentRepositorySummary')
        visited = visited + ['DevEnvironmentRepositorySummary']
        {
          repository_name: 'repository_name',
          branch_name: 'branch_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DevEnvironmentRepositorySummary.new
        data = {}
        data['repositoryName'] = stub.repository_name unless stub.repository_name.nil?
        data['branchName'] = stub.branch_name unless stub.branch_name.nil?
        data
      end
    end

    class DevEnvironmentSessionSummary
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentSessionSummary')
        visited = visited + ['DevEnvironmentSessionSummary']
        {
          space_name: 'space_name',
          project_name: 'project_name',
          dev_environment_id: 'dev_environment_id',
          started_time: Time.now,
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DevEnvironmentSessionSummary.new
        data = {}
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['devEnvironmentId'] = stub.dev_environment_id unless stub.dev_environment_id.nil?
        data['startedTime'] = Hearth::TimeHelper.to_date_time(stub.started_time) unless stub.started_time.nil?
        data['id'] = stub.id unless stub.id.nil?
        data
      end
    end

    class DevEnvironmentSessionsSummaryList
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentSessionsSummaryList')
        visited = visited + ['DevEnvironmentSessionsSummaryList']
        [
          DevEnvironmentSessionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevEnvironmentSessionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class DevEnvironmentSummary
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentSummary')
        visited = visited + ['DevEnvironmentSummary']
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          last_updated_time: Time.now,
          creator_id: 'creator_id',
          status: 'status',
          status_reason: 'status_reason',
          repositories: DevEnvironmentRepositorySummaries.default(visited),
          alias: 'alias',
          ides: Ides.default(visited),
          instance_type: 'instance_type',
          inactivity_timeout_minutes: 1,
          persistent_storage: PersistentStorage.default(visited),
          vpc_connection_name: 'vpc_connection_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DevEnvironmentSummary.new
        data = {}
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['creatorId'] = stub.creator_id unless stub.creator_id.nil?
        data['status'] = stub.status unless stub.status.nil?
        data['statusReason'] = stub.status_reason unless stub.status_reason.nil?
        data['repositories'] = DevEnvironmentRepositorySummaries.stub(stub.repositories) unless stub.repositories.nil?
        data['alias'] = stub.alias unless stub.alias.nil?
        data['ides'] = Ides.stub(stub.ides) unless stub.ides.nil?
        data['instanceType'] = stub.instance_type unless stub.instance_type.nil?
        data['inactivityTimeoutMinutes'] = stub.inactivity_timeout_minutes unless stub.inactivity_timeout_minutes.nil?
        data['persistentStorage'] = PersistentStorage.stub(stub.persistent_storage) unless stub.persistent_storage.nil?
        data['vpcConnectionName'] = stub.vpc_connection_name unless stub.vpc_connection_name.nil?
        data
      end
    end

    class DevEnvironmentSummaryList
      def self.default(visited = [])
        return nil if visited.include?('DevEnvironmentSummaryList')
        visited = visited + ['DevEnvironmentSummaryList']
        [
          DevEnvironmentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevEnvironmentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class EmailAddress
      def self.default(visited = [])
        return nil if visited.include?('EmailAddress')
        visited = visited + ['EmailAddress']
        {
          email: 'email',
          verified: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailAddress.new
        data = {}
        data['email'] = stub.email unless stub.email.nil?
        data['verified'] = stub.verified unless stub.verified.nil?
        data
      end
    end

    class EventLogEntries
      def self.default(visited = [])
        return nil if visited.include?('EventLogEntries')
        visited = visited + ['EventLogEntries']
        [
          EventLogEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventLogEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    class EventLogEntry
      def self.default(visited = [])
        return nil if visited.include?('EventLogEntry')
        visited = visited + ['EventLogEntry']
        {
          id: 'id',
          event_name: 'event_name',
          event_type: 'event_type',
          event_category: 'event_category',
          event_source: 'event_source',
          event_time: Time.now,
          operation_type: 'operation_type',
          user_identity: UserIdentity.default(visited),
          project_information: ProjectInformation.default(visited),
          request_id: 'request_id',
          request_payload: EventPayload.default(visited),
          response_payload: EventPayload.default(visited),
          error_code: 'error_code',
          source_ip_address: 'source_ip_address',
          user_agent: 'user_agent',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventLogEntry.new
        data = {}
        data['id'] = stub.id unless stub.id.nil?
        data['eventName'] = stub.event_name unless stub.event_name.nil?
        data['eventType'] = stub.event_type unless stub.event_type.nil?
        data['eventCategory'] = stub.event_category unless stub.event_category.nil?
        data['eventSource'] = stub.event_source unless stub.event_source.nil?
        data['eventTime'] = Hearth::TimeHelper.to_date_time(stub.event_time) unless stub.event_time.nil?
        data['operationType'] = stub.operation_type unless stub.operation_type.nil?
        data['userIdentity'] = UserIdentity.stub(stub.user_identity) unless stub.user_identity.nil?
        data['projectInformation'] = ProjectInformation.stub(stub.project_information) unless stub.project_information.nil?
        data['requestId'] = stub.request_id unless stub.request_id.nil?
        data['requestPayload'] = EventPayload.stub(stub.request_payload) unless stub.request_payload.nil?
        data['responsePayload'] = EventPayload.stub(stub.response_payload) unless stub.response_payload.nil?
        data['errorCode'] = stub.error_code unless stub.error_code.nil?
        data['sourceIpAddress'] = stub.source_ip_address unless stub.source_ip_address.nil?
        data['userAgent'] = stub.user_agent unless stub.user_agent.nil?
        data
      end
    end

    class EventPayload
      def self.default(visited = [])
        return nil if visited.include?('EventPayload')
        visited = visited + ['EventPayload']
        {
          content_type: 'content_type',
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventPayload.new
        data = {}
        data['contentType'] = stub.content_type unless stub.content_type.nil?
        data['data'] = stub.data unless stub.data.nil?
        data
      end
    end

    class GetDevEnvironment
      def self.build(params, context:)
        Params::GetDevEnvironmentOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetDevEnvironmentOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          last_updated_time: Time.now,
          creator_id: 'creator_id',
          status: 'status',
          status_reason: 'status_reason',
          repositories: DevEnvironmentRepositorySummaries.default(visited),
          alias: 'alias',
          ides: Ides.default(visited),
          instance_type: 'instance_type',
          inactivity_timeout_minutes: 1,
          persistent_storage: PersistentStorage.default(visited),
          vpc_connection_name: 'vpc_connection_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['creatorId'] = stub.creator_id unless stub.creator_id.nil?
        data['status'] = stub.status unless stub.status.nil?
        data['statusReason'] = stub.status_reason unless stub.status_reason.nil?
        data['repositories'] = DevEnvironmentRepositorySummaries.stub(stub.repositories) unless stub.repositories.nil?
        data['alias'] = stub.alias unless stub.alias.nil?
        data['ides'] = Ides.stub(stub.ides) unless stub.ides.nil?
        data['instanceType'] = stub.instance_type unless stub.instance_type.nil?
        data['inactivityTimeoutMinutes'] = stub.inactivity_timeout_minutes unless stub.inactivity_timeout_minutes.nil?
        data['persistentStorage'] = PersistentStorage.stub(stub.persistent_storage) unless stub.persistent_storage.nil?
        data['vpcConnectionName'] = stub.vpc_connection_name unless stub.vpc_connection_name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetProject
      def self.build(params, context:)
        Params::GetProjectOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetProjectOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          name: 'name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetSourceRepository
      def self.build(params, context:)
        Params::GetSourceRepositoryOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetSourceRepositoryOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          name: 'name',
          description: 'description',
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['description'] = stub.description unless stub.description.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['createdTime'] = Hearth::TimeHelper.to_date_time(stub.created_time) unless stub.created_time.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.build(params, context:)
        Params::GetSourceRepositoryCloneUrlsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetSourceRepositoryCloneUrlsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          https: 'https',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['https'] = stub.https unless stub.https.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetSpace
      def self.build(params, context:)
        Params::GetSpaceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetSpaceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          name: 'name',
          region_name: 'region_name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub.name unless stub.name.nil?
        data['regionName'] = stub.region_name unless stub.region_name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetSubscription
      def self.build(params, context:)
        Params::GetSubscriptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetSubscriptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          subscription_type: 'subscription_type',
          aws_account_name: 'aws_account_name',
          pending_subscription_type: 'pending_subscription_type',
          pending_subscription_start_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['subscriptionType'] = stub.subscription_type unless stub.subscription_type.nil?
        data['awsAccountName'] = stub.aws_account_name unless stub.aws_account_name.nil?
        data['pendingSubscriptionType'] = stub.pending_subscription_type unless stub.pending_subscription_type.nil?
        data['pendingSubscriptionStartTime'] = Hearth::TimeHelper.to_date_time(stub.pending_subscription_start_time) unless stub.pending_subscription_start_time.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetUserDetails
      def self.build(params, context:)
        Params::GetUserDetailsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetUserDetailsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          user_id: 'user_id',
          user_name: 'user_name',
          display_name: 'display_name',
          primary_email: EmailAddress.default(visited),
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub.user_id unless stub.user_id.nil?
        data['userName'] = stub.user_name unless stub.user_name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['primaryEmail'] = EmailAddress.stub(stub.primary_email) unless stub.primary_email.nil?
        data['version'] = stub.version unless stub.version.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetWorkflow
      def self.build(params, context:)
        Params::GetWorkflowOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetWorkflowOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          name: 'name',
          source_repository_name: 'source_repository_name',
          source_branch_name: 'source_branch_name',
          definition: WorkflowDefinition.default(visited),
          created_time: Time.now,
          last_updated_time: Time.now,
          run_mode: 'run_mode',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['sourceRepositoryName'] = stub.source_repository_name unless stub.source_repository_name.nil?
        data['sourceBranchName'] = stub.source_branch_name unless stub.source_branch_name.nil?
        data['definition'] = WorkflowDefinition.stub(stub.definition) unless stub.definition.nil?
        data['createdTime'] = Hearth::TimeHelper.to_date_time(stub.created_time) unless stub.created_time.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['runMode'] = stub.run_mode unless stub.run_mode.nil?
        data['status'] = stub.status unless stub.status.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetWorkflowRun
      def self.build(params, context:)
        Params::GetWorkflowRunOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetWorkflowRunOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          workflow_id: 'workflow_id',
          status: 'status',
          status_reasons: WorkflowRunStatusReasons.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['workflowId'] = stub.workflow_id unless stub.workflow_id.nil?
        data['status'] = stub.status unless stub.status.nil?
        data['statusReasons'] = WorkflowRunStatusReasons.stub(stub.status_reasons) unless stub.status_reasons.nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub.start_time) unless stub.start_time.nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub.end_time) unless stub.end_time.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Ide
      def self.default(visited = [])
        return nil if visited.include?('Ide')
        visited = visited + ['Ide']
        {
          runtime: 'runtime',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ide.new
        data = {}
        data['runtime'] = stub.runtime unless stub.runtime.nil?
        data['name'] = stub.name unless stub.name.nil?
        data
      end
    end

    class IdeConfiguration
      def self.default(visited = [])
        return nil if visited.include?('IdeConfiguration')
        visited = visited + ['IdeConfiguration']
        {
          runtime: 'runtime',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdeConfiguration.new
        data = {}
        data['runtime'] = stub.runtime unless stub.runtime.nil?
        data['name'] = stub.name unless stub.name.nil?
        data
      end
    end

    class IdeConfigurationList
      def self.default(visited = [])
        return nil if visited.include?('IdeConfigurationList')
        visited = visited + ['IdeConfigurationList']
        [
          IdeConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IdeConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    class Ides
      def self.default(visited = [])
        return nil if visited.include?('Ides')
        visited = visited + ['Ides']
        [
          Ide.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Ide.stub(element) unless element.nil?
        end
        data
      end
    end

    class ListAccessTokens
      def self.build(params, context:)
        Params::ListAccessTokensOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListAccessTokensOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: AccessTokenSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = AccessTokenSummaries.stub(stub.items) unless stub.items.nil?
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListDevEnvironmentSessions
      def self.build(params, context:)
        Params::ListDevEnvironmentSessionsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListDevEnvironmentSessionsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: DevEnvironmentSessionsSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = DevEnvironmentSessionsSummaryList.stub(stub.items) unless stub.items.nil?
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListDevEnvironments
      def self.build(params, context:)
        Params::ListDevEnvironmentsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListDevEnvironmentsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: DevEnvironmentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = DevEnvironmentSummaryList.stub(stub.items) unless stub.items.nil?
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListEventLogs
      def self.build(params, context:)
        Params::ListEventLogsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListEventLogsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          next_token: 'next_token',
          items: EventLogEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        data['items'] = EventLogEntries.stub(stub.items) unless stub.items.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListProjects
      def self.build(params, context:)
        Params::ListProjectsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListProjectsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          next_token: 'next_token',
          items: ProjectSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        data['items'] = ProjectSummaries.stub(stub.items) unless stub.items.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListSourceRepositories
      def self.build(params, context:)
        Params::ListSourceRepositoriesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListSourceRepositoriesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: ListSourceRepositoriesItems.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = ListSourceRepositoriesItems.stub(stub.items) unless stub.items.nil?
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListSourceRepositoriesItem
      def self.default(visited = [])
        return nil if visited.include?('ListSourceRepositoriesItem')
        visited = visited + ['ListSourceRepositoriesItem']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListSourceRepositoriesItem.new
        data = {}
        data['id'] = stub.id unless stub.id.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['description'] = stub.description unless stub.description.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['createdTime'] = Hearth::TimeHelper.to_date_time(stub.created_time) unless stub.created_time.nil?
        data
      end
    end

    class ListSourceRepositoriesItems
      def self.default(visited = [])
        return nil if visited.include?('ListSourceRepositoriesItems')
        visited = visited + ['ListSourceRepositoriesItems']
        [
          ListSourceRepositoriesItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListSourceRepositoriesItem.stub(element) unless element.nil?
        end
        data
      end
    end

    class ListSourceRepositoryBranches
      def self.build(params, context:)
        Params::ListSourceRepositoryBranchesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListSourceRepositoryBranchesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          next_token: 'next_token',
          items: ListSourceRepositoryBranchesItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        data['items'] = ListSourceRepositoryBranchesItems.stub(stub.items) unless stub.items.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListSourceRepositoryBranchesItem
      def self.default(visited = [])
        return nil if visited.include?('ListSourceRepositoryBranchesItem')
        visited = visited + ['ListSourceRepositoryBranchesItem']
        {
          ref: 'ref',
          name: 'name',
          last_updated_time: Time.now,
          head_commit_id: 'head_commit_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListSourceRepositoryBranchesItem.new
        data = {}
        data['ref'] = stub.ref unless stub.ref.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['headCommitId'] = stub.head_commit_id unless stub.head_commit_id.nil?
        data
      end
    end

    class ListSourceRepositoryBranchesItems
      def self.default(visited = [])
        return nil if visited.include?('ListSourceRepositoryBranchesItems')
        visited = visited + ['ListSourceRepositoryBranchesItems']
        [
          ListSourceRepositoryBranchesItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListSourceRepositoryBranchesItem.stub(element) unless element.nil?
        end
        data
      end
    end

    class ListSpaces
      def self.build(params, context:)
        Params::ListSpacesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListSpacesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          next_token: 'next_token',
          items: SpaceSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        data['items'] = SpaceSummaries.stub(stub.items) unless stub.items.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListWorkflowRuns
      def self.build(params, context:)
        Params::ListWorkflowRunsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListWorkflowRunsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          next_token: 'next_token',
          items: WorkflowRunSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        data['items'] = WorkflowRunSummaries.stub(stub.items) unless stub.items.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListWorkflows
      def self.build(params, context:)
        Params::ListWorkflowsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListWorkflowsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          next_token: 'next_token',
          items: WorkflowSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub.next_token unless stub.next_token.nil?
        data['items'] = WorkflowSummaries.stub(stub.items) unless stub.items.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class PersistentStorage
      def self.default(visited = [])
        return nil if visited.include?('PersistentStorage')
        visited = visited + ['PersistentStorage']
        {
          size_in_gi_b: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PersistentStorage.new
        data = {}
        data['sizeInGiB'] = stub.size_in_gi_b unless stub.size_in_gi_b.nil?
        data
      end
    end

    class ProjectInformation
      def self.default(visited = [])
        return nil if visited.include?('ProjectInformation')
        visited = visited + ['ProjectInformation']
        {
          name: 'name',
          project_id: 'project_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectInformation.new
        data = {}
        data['name'] = stub.name unless stub.name.nil?
        data['projectId'] = stub.project_id unless stub.project_id.nil?
        data
      end
    end

    class ProjectSummaries
      def self.default(visited = [])
        return nil if visited.include?('ProjectSummaries')
        visited = visited + ['ProjectSummaries']
        [
          ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.default(visited = [])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          name: 'name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        data
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Params::ResourceNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ResourceNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 404
        http_resp.headers['X-Amzn-Errortype'] = 'ResourceNotFoundException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ServiceQuotaExceededException
      def self.build(params, context:)
        Params::ServiceQuotaExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ServiceQuotaExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 402
        http_resp.headers['X-Amzn-Errortype'] = 'ServiceQuotaExceededException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class SpaceSummaries
      def self.default(visited = [])
        return nil if visited.include?('SpaceSummaries')
        visited = visited + ['SpaceSummaries']
        [
          SpaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SpaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class SpaceSummary
      def self.default(visited = [])
        return nil if visited.include?('SpaceSummary')
        visited = visited + ['SpaceSummary']
        {
          name: 'name',
          region_name: 'region_name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpaceSummary.new
        data = {}
        data['name'] = stub.name unless stub.name.nil?
        data['regionName'] = stub.region_name unless stub.region_name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        data
      end
    end

    class StartDevEnvironment
      def self.build(params, context:)
        Params::StartDevEnvironmentOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartDevEnvironmentOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['status'] = stub.status unless stub.status.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StartDevEnvironmentSession
      def self.build(params, context:)
        Params::StartDevEnvironmentSessionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartDevEnvironmentSessionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          access_details: DevEnvironmentAccessDetails.default(visited),
          session_id: 'session_id',
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessDetails'] = DevEnvironmentAccessDetails.stub(stub.access_details) unless stub.access_details.nil?
        data['sessionId'] = stub.session_id unless stub.session_id.nil?
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StartWorkflowRun
      def self.build(params, context:)
        Params::StartWorkflowRunOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartWorkflowRunOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          workflow_id: 'workflow_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['workflowId'] = stub.workflow_id unless stub.workflow_id.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StopDevEnvironment
      def self.build(params, context:)
        Params::StopDevEnvironmentOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StopDevEnvironmentOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['status'] = stub.status unless stub.status.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StopDevEnvironmentSession
      def self.build(params, context:)
        Params::StopDevEnvironmentSessionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StopDevEnvironmentSessionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          project_name: 'project_name',
          id: 'id',
          session_id: 'session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['id'] = stub.id unless stub.id.nil?
        data['sessionId'] = stub.session_id unless stub.session_id.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ThrottlingException
      def self.build(params, context:)
        Params::ThrottlingException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ThrottlingException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 429
        http_resp.headers['X-Amzn-Errortype'] = 'ThrottlingException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateDevEnvironment
      def self.build(params, context:)
        Params::UpdateDevEnvironmentOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateDevEnvironmentOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          id: 'id',
          space_name: 'space_name',
          project_name: 'project_name',
          alias: 'alias',
          ides: IdeConfigurationList.default(visited),
          instance_type: 'instance_type',
          inactivity_timeout_minutes: 1,
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub.id unless stub.id.nil?
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['projectName'] = stub.project_name unless stub.project_name.nil?
        data['alias'] = stub.alias unless stub.alias.nil?
        data['ides'] = IdeConfigurationList.stub(stub.ides) unless stub.ides.nil?
        data['instanceType'] = stub.instance_type unless stub.instance_type.nil?
        data['inactivityTimeoutMinutes'] = stub.inactivity_timeout_minutes unless stub.inactivity_timeout_minutes.nil?
        data['clientToken'] = stub.client_token unless stub.client_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateProject
      def self.build(params, context:)
        Params::UpdateProjectOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateProjectOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          space_name: 'space_name',
          name: 'name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['spaceName'] = stub.space_name unless stub.space_name.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateSpace
      def self.build(params, context:)
        Params::UpdateSpaceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateSpaceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          name: 'name',
          display_name: 'display_name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub.name unless stub.name.nil?
        data['displayName'] = stub.display_name unless stub.display_name.nil?
        data['description'] = stub.description unless stub.description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UserIdentity
      def self.default(visited = [])
        return nil if visited.include?('UserIdentity')
        visited = visited + ['UserIdentity']
        {
          user_type: 'user_type',
          principal_id: 'principal_id',
          user_name: 'user_name',
          aws_account_id: 'aws_account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentity.new
        data = {}
        data['userType'] = stub.user_type unless stub.user_type.nil?
        data['principalId'] = stub.principal_id unless stub.principal_id.nil?
        data['userName'] = stub.user_name unless stub.user_name.nil?
        data['awsAccountId'] = stub.aws_account_id unless stub.aws_account_id.nil?
        data
      end
    end

    class ValidationException
      def self.build(params, context:)
        Params::ValidationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ValidationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'ValidationException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class VerifySession
      def self.build(params, context:)
        Params::VerifySessionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::VerifySessionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          identity: 'identity',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['identity'] = stub.identity unless stub.identity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class WorkflowDefinition
      def self.default(visited = [])
        return nil if visited.include?('WorkflowDefinition')
        visited = visited + ['WorkflowDefinition']
        {
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowDefinition.new
        data = {}
        data['path'] = stub.path unless stub.path.nil?
        data
      end
    end

    class WorkflowDefinitionSummary
      def self.default(visited = [])
        return nil if visited.include?('WorkflowDefinitionSummary')
        visited = visited + ['WorkflowDefinitionSummary']
        {
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowDefinitionSummary.new
        data = {}
        data['path'] = stub.path unless stub.path.nil?
        data
      end
    end

    class WorkflowRunStatusReason
      def self.default(visited = [])
        return nil if visited.include?('WorkflowRunStatusReason')
        visited = visited + ['WorkflowRunStatusReason']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowRunStatusReason.new
        data = {}
        data
      end
    end

    class WorkflowRunStatusReasons
      def self.default(visited = [])
        return nil if visited.include?('WorkflowRunStatusReasons')
        visited = visited + ['WorkflowRunStatusReasons']
        [
          WorkflowRunStatusReason.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkflowRunStatusReason.stub(element) unless element.nil?
        end
        data
      end
    end

    class WorkflowRunSummaries
      def self.default(visited = [])
        return nil if visited.include?('WorkflowRunSummaries')
        visited = visited + ['WorkflowRunSummaries']
        [
          WorkflowRunSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkflowRunSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class WorkflowRunSummary
      def self.default(visited = [])
        return nil if visited.include?('WorkflowRunSummary')
        visited = visited + ['WorkflowRunSummary']
        {
          id: 'id',
          workflow_id: 'workflow_id',
          workflow_name: 'workflow_name',
          status: 'status',
          status_reasons: WorkflowRunStatusReasons.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowRunSummary.new
        data = {}
        data['id'] = stub.id unless stub.id.nil?
        data['workflowId'] = stub.workflow_id unless stub.workflow_id.nil?
        data['workflowName'] = stub.workflow_name unless stub.workflow_name.nil?
        data['status'] = stub.status unless stub.status.nil?
        data['statusReasons'] = WorkflowRunStatusReasons.stub(stub.status_reasons) unless stub.status_reasons.nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub.start_time) unless stub.start_time.nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub.end_time) unless stub.end_time.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data
      end
    end

    class WorkflowSummaries
      def self.default(visited = [])
        return nil if visited.include?('WorkflowSummaries')
        visited = visited + ['WorkflowSummaries']
        [
          WorkflowSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkflowSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class WorkflowSummary
      def self.default(visited = [])
        return nil if visited.include?('WorkflowSummary')
        visited = visited + ['WorkflowSummary']
        {
          id: 'id',
          name: 'name',
          source_repository_name: 'source_repository_name',
          source_branch_name: 'source_branch_name',
          definition: WorkflowDefinitionSummary.default(visited),
          created_time: Time.now,
          last_updated_time: Time.now,
          run_mode: 'run_mode',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowSummary.new
        data = {}
        data['id'] = stub.id unless stub.id.nil?
        data['name'] = stub.name unless stub.name.nil?
        data['sourceRepositoryName'] = stub.source_repository_name unless stub.source_repository_name.nil?
        data['sourceBranchName'] = stub.source_branch_name unless stub.source_branch_name.nil?
        data['definition'] = WorkflowDefinitionSummary.stub(stub.definition) unless stub.definition.nil?
        data['createdTime'] = Hearth::TimeHelper.to_date_time(stub.created_time) unless stub.created_time.nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub.last_updated_time) unless stub.last_updated_time.nil?
        data['runMode'] = stub.run_mode unless stub.run_mode.nil?
        data['status'] = stub.status unless stub.status.nil?
        data
      end
    end
  end
end
