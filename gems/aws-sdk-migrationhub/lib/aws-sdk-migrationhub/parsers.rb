# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHub
  module Parsers

    # Operation Parser for AssociateCreatedArtifact
    class AssociateCreatedArtifact
      def self.parse(http_resp)
        data = Types::AssociateCreatedArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnauthorizedOperation
    class UnauthorizedOperation
      def self.parse(http_resp)
        data = Types::UnauthorizedOperation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.retry_after_seconds = map['RetryAfterSeconds']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for HomeRegionNotSetException
    class HomeRegionNotSetException
      def self.parse(http_resp)
        data = Types::HomeRegionNotSetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DryRunOperation
    class DryRunOperation
      def self.parse(http_resp)
        data = Types::DryRunOperation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateDiscoveredResource
    class AssociateDiscoveredResource
      def self.parse(http_resp)
        data = Types::AssociateDiscoveredResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PolicyErrorException
    class PolicyErrorException
      def self.parse(http_resp)
        data = Types::PolicyErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateProgressUpdateStream
    class CreateProgressUpdateStream
      def self.parse(http_resp)
        data = Types::CreateProgressUpdateStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProgressUpdateStream
    class DeleteProgressUpdateStream
      def self.parse(http_resp)
        data = Types::DeleteProgressUpdateStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeApplicationState
    class DescribeApplicationState
      def self.parse(http_resp)
        data = Types::DescribeApplicationStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_status = map['ApplicationStatus']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data
      end
    end

    # Operation Parser for DescribeMigrationTask
    class DescribeMigrationTask
      def self.parse(http_resp)
        data = Types::DescribeMigrationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.migration_task = (Parsers::MigrationTask.parse(map['MigrationTask']) unless map['MigrationTask'].nil?)
        data
      end
    end

    class MigrationTask
      def self.parse(map)
        data = Types::MigrationTask.new
        data.progress_update_stream = map['ProgressUpdateStream']
        data.migration_task_name = map['MigrationTaskName']
        data.task = (Parsers::Task.parse(map['Task']) unless map['Task'].nil?)
        data.update_date_time = Time.at(map['UpdateDateTime'].to_i) if map['UpdateDateTime']
        data.resource_attribute_list = (Parsers::LatestResourceAttributeList.parse(map['ResourceAttributeList']) unless map['ResourceAttributeList'].nil?)
        return data
      end
    end

    class LatestResourceAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceAttribute.parse(value) unless value.nil?
        end
      end
    end

    class ResourceAttribute
      def self.parse(map)
        data = Types::ResourceAttribute.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class Task
      def self.parse(map)
        data = Types::Task.new
        data.status = map['Status']
        data.status_detail = map['StatusDetail']
        data.progress_percent = map['ProgressPercent']
        return data
      end
    end

    # Operation Parser for DisassociateCreatedArtifact
    class DisassociateCreatedArtifact
      def self.parse(http_resp)
        data = Types::DisassociateCreatedArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateDiscoveredResource
    class DisassociateDiscoveredResource
      def self.parse(http_resp)
        data = Types::DisassociateDiscoveredResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ImportMigrationTask
    class ImportMigrationTask
      def self.parse(http_resp)
        data = Types::ImportMigrationTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListApplicationStates
    class ListApplicationStates
      def self.parse(http_resp)
        data = Types::ListApplicationStatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_state_list = (Parsers::ApplicationStateList.parse(map['ApplicationStateList']) unless map['ApplicationStateList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationStateList
      def self.parse(list)
        list.map do |value|
          Parsers::ApplicationState.parse(value) unless value.nil?
        end
      end
    end

    class ApplicationState
      def self.parse(map)
        data = Types::ApplicationState.new
        data.application_id = map['ApplicationId']
        data.application_status = map['ApplicationStatus']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Operation Parser for ListCreatedArtifacts
    class ListCreatedArtifacts
      def self.parse(http_resp)
        data = Types::ListCreatedArtifactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.created_artifact_list = (Parsers::CreatedArtifactList.parse(map['CreatedArtifactList']) unless map['CreatedArtifactList'].nil?)
        data
      end
    end

    class CreatedArtifactList
      def self.parse(list)
        list.map do |value|
          Parsers::CreatedArtifact.parse(value) unless value.nil?
        end
      end
    end

    class CreatedArtifact
      def self.parse(map)
        data = Types::CreatedArtifact.new
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListDiscoveredResources
    class ListDiscoveredResources
      def self.parse(http_resp)
        data = Types::ListDiscoveredResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.discovered_resource_list = (Parsers::DiscoveredResourceList.parse(map['DiscoveredResourceList']) unless map['DiscoveredResourceList'].nil?)
        data
      end
    end

    class DiscoveredResourceList
      def self.parse(list)
        list.map do |value|
          Parsers::DiscoveredResource.parse(value) unless value.nil?
        end
      end
    end

    class DiscoveredResource
      def self.parse(map)
        data = Types::DiscoveredResource.new
        data.configuration_id = map['ConfigurationId']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListMigrationTasks
    class ListMigrationTasks
      def self.parse(http_resp)
        data = Types::ListMigrationTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.migration_task_summary_list = (Parsers::MigrationTaskSummaryList.parse(map['MigrationTaskSummaryList']) unless map['MigrationTaskSummaryList'].nil?)
        data
      end
    end

    class MigrationTaskSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::MigrationTaskSummary.parse(value) unless value.nil?
        end
      end
    end

    class MigrationTaskSummary
      def self.parse(map)
        data = Types::MigrationTaskSummary.new
        data.progress_update_stream = map['ProgressUpdateStream']
        data.migration_task_name = map['MigrationTaskName']
        data.status = map['Status']
        data.progress_percent = map['ProgressPercent']
        data.status_detail = map['StatusDetail']
        data.update_date_time = Time.at(map['UpdateDateTime'].to_i) if map['UpdateDateTime']
        return data
      end
    end

    # Operation Parser for ListProgressUpdateStreams
    class ListProgressUpdateStreams
      def self.parse(http_resp)
        data = Types::ListProgressUpdateStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.progress_update_stream_summary_list = (Parsers::ProgressUpdateStreamSummaryList.parse(map['ProgressUpdateStreamSummaryList']) unless map['ProgressUpdateStreamSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProgressUpdateStreamSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ProgressUpdateStreamSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProgressUpdateStreamSummary
      def self.parse(map)
        data = Types::ProgressUpdateStreamSummary.new
        data.progress_update_stream_name = map['ProgressUpdateStreamName']
        return data
      end
    end

    # Operation Parser for NotifyApplicationState
    class NotifyApplicationState
      def self.parse(http_resp)
        data = Types::NotifyApplicationStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for NotifyMigrationTaskState
    class NotifyMigrationTaskState
      def self.parse(http_resp)
        data = Types::NotifyMigrationTaskStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutResourceAttributes
    class PutResourceAttributes
      def self.parse(http_resp)
        data = Types::PutResourceAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
