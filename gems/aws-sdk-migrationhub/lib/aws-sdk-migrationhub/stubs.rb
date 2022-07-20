# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHub
  module Stubs

    # Operation Stubber for AssociateCreatedArtifact
    class AssociateCreatedArtifact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateDiscoveredResource
    class AssociateDiscoveredResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProgressUpdateStream
    class CreateProgressUpdateStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProgressUpdateStream
    class DeleteProgressUpdateStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeApplicationState
    class DescribeApplicationState
      def self.default(visited=[])
        {
          application_status: 'application_status',
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeMigrationTask
    class DescribeMigrationTask
      def self.default(visited=[])
        {
          migration_task: MigrationTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MigrationTask'] = Stubs::MigrationTask.stub(stub[:migration_task]) unless stub[:migration_task].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MigrationTask
    class MigrationTask
      def self.default(visited=[])
        return nil if visited.include?('MigrationTask')
        visited = visited + ['MigrationTask']
        {
          progress_update_stream: 'progress_update_stream',
          migration_task_name: 'migration_task_name',
          task: Task.default(visited),
          update_date_time: Time.now,
          resource_attribute_list: LatestResourceAttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MigrationTask.new
        data = {}
        data['ProgressUpdateStream'] = stub[:progress_update_stream] unless stub[:progress_update_stream].nil?
        data['MigrationTaskName'] = stub[:migration_task_name] unless stub[:migration_task_name].nil?
        data['Task'] = Stubs::Task.stub(stub[:task]) unless stub[:task].nil?
        data['UpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data['ResourceAttributeList'] = Stubs::LatestResourceAttributeList.stub(stub[:resource_attribute_list]) unless stub[:resource_attribute_list].nil?
        data
      end
    end

    # List Stubber for LatestResourceAttributeList
    class LatestResourceAttributeList
      def self.default(visited=[])
        return nil if visited.include?('LatestResourceAttributeList')
        visited = visited + ['LatestResourceAttributeList']
        [
          ResourceAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceAttribute
    class ResourceAttribute
      def self.default(visited=[])
        return nil if visited.include?('ResourceAttribute')
        visited = visited + ['ResourceAttribute']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceAttribute.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for Task
    class Task
      def self.default(visited=[])
        return nil if visited.include?('Task')
        visited = visited + ['Task']
        {
          status: 'status',
          status_detail: 'status_detail',
          progress_percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Task.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        data['ProgressPercent'] = stub[:progress_percent] unless stub[:progress_percent].nil?
        data
      end
    end

    # Operation Stubber for DisassociateCreatedArtifact
    class DisassociateCreatedArtifact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateDiscoveredResource
    class DisassociateDiscoveredResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportMigrationTask
    class ImportMigrationTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListApplicationStates
    class ListApplicationStates
      def self.default(visited=[])
        {
          application_state_list: ApplicationStateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationStateList'] = Stubs::ApplicationStateList.stub(stub[:application_state_list]) unless stub[:application_state_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationStateList
    class ApplicationStateList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationStateList')
        visited = visited + ['ApplicationStateList']
        [
          ApplicationState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationState
    class ApplicationState
      def self.default(visited=[])
        return nil if visited.include?('ApplicationState')
        visited = visited + ['ApplicationState']
        {
          application_id: 'application_id',
          application_status: 'application_status',
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationState.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListCreatedArtifacts
    class ListCreatedArtifacts
      def self.default(visited=[])
        {
          next_token: 'next_token',
          created_artifact_list: CreatedArtifactList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['CreatedArtifactList'] = Stubs::CreatedArtifactList.stub(stub[:created_artifact_list]) unless stub[:created_artifact_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CreatedArtifactList
    class CreatedArtifactList
      def self.default(visited=[])
        return nil if visited.include?('CreatedArtifactList')
        visited = visited + ['CreatedArtifactList']
        [
          CreatedArtifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CreatedArtifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CreatedArtifact
    class CreatedArtifact
      def self.default(visited=[])
        return nil if visited.include?('CreatedArtifact')
        visited = visited + ['CreatedArtifact']
        {
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreatedArtifact.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListDiscoveredResources
    class ListDiscoveredResources
      def self.default(visited=[])
        {
          next_token: 'next_token',
          discovered_resource_list: DiscoveredResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DiscoveredResourceList'] = Stubs::DiscoveredResourceList.stub(stub[:discovered_resource_list]) unless stub[:discovered_resource_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DiscoveredResourceList
    class DiscoveredResourceList
      def self.default(visited=[])
        return nil if visited.include?('DiscoveredResourceList')
        visited = visited + ['DiscoveredResourceList']
        [
          DiscoveredResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DiscoveredResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DiscoveredResource
    class DiscoveredResource
      def self.default(visited=[])
        return nil if visited.include?('DiscoveredResource')
        visited = visited + ['DiscoveredResource']
        {
          configuration_id: 'configuration_id',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::DiscoveredResource.new
        data = {}
        data['ConfigurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListMigrationTasks
    class ListMigrationTasks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          migration_task_summary_list: MigrationTaskSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MigrationTaskSummaryList'] = Stubs::MigrationTaskSummaryList.stub(stub[:migration_task_summary_list]) unless stub[:migration_task_summary_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MigrationTaskSummaryList
    class MigrationTaskSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MigrationTaskSummaryList')
        visited = visited + ['MigrationTaskSummaryList']
        [
          MigrationTaskSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MigrationTaskSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MigrationTaskSummary
    class MigrationTaskSummary
      def self.default(visited=[])
        return nil if visited.include?('MigrationTaskSummary')
        visited = visited + ['MigrationTaskSummary']
        {
          progress_update_stream: 'progress_update_stream',
          migration_task_name: 'migration_task_name',
          status: 'status',
          progress_percent: 1,
          status_detail: 'status_detail',
          update_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MigrationTaskSummary.new
        data = {}
        data['ProgressUpdateStream'] = stub[:progress_update_stream] unless stub[:progress_update_stream].nil?
        data['MigrationTaskName'] = stub[:migration_task_name] unless stub[:migration_task_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ProgressPercent'] = stub[:progress_percent] unless stub[:progress_percent].nil?
        data['StatusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        data['UpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListProgressUpdateStreams
    class ListProgressUpdateStreams
      def self.default(visited=[])
        {
          progress_update_stream_summary_list: ProgressUpdateStreamSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProgressUpdateStreamSummaryList'] = Stubs::ProgressUpdateStreamSummaryList.stub(stub[:progress_update_stream_summary_list]) unless stub[:progress_update_stream_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProgressUpdateStreamSummaryList
    class ProgressUpdateStreamSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ProgressUpdateStreamSummaryList')
        visited = visited + ['ProgressUpdateStreamSummaryList']
        [
          ProgressUpdateStreamSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProgressUpdateStreamSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProgressUpdateStreamSummary
    class ProgressUpdateStreamSummary
      def self.default(visited=[])
        return nil if visited.include?('ProgressUpdateStreamSummary')
        visited = visited + ['ProgressUpdateStreamSummary']
        {
          progress_update_stream_name: 'progress_update_stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProgressUpdateStreamSummary.new
        data = {}
        data['ProgressUpdateStreamName'] = stub[:progress_update_stream_name] unless stub[:progress_update_stream_name].nil?
        data
      end
    end

    # Operation Stubber for NotifyApplicationState
    class NotifyApplicationState
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for NotifyMigrationTaskState
    class NotifyMigrationTaskState
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutResourceAttributes
    class PutResourceAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
