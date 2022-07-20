# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MigrationHub
  module Builders

    # Operation Builder for AssociateCreatedArtifact
    class AssociateCreatedArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.AssociateCreatedArtifact'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['CreatedArtifact'] = CreatedArtifact.build(input[:created_artifact]) unless input[:created_artifact].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreatedArtifact
    class CreatedArtifact
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Operation Builder for AssociateDiscoveredResource
    class AssociateDiscoveredResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.AssociateDiscoveredResource'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['DiscoveredResource'] = DiscoveredResource.build(input[:discovered_resource]) unless input[:discovered_resource].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DiscoveredResource
    class DiscoveredResource
      def self.build(input)
        data = {}
        data['ConfigurationId'] = input[:configuration_id] unless input[:configuration_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Operation Builder for CreateProgressUpdateStream
    class CreateProgressUpdateStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.CreateProgressUpdateStream'
        data = {}
        data['ProgressUpdateStreamName'] = input[:progress_update_stream_name] unless input[:progress_update_stream_name].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProgressUpdateStream
    class DeleteProgressUpdateStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.DeleteProgressUpdateStream'
        data = {}
        data['ProgressUpdateStreamName'] = input[:progress_update_stream_name] unless input[:progress_update_stream_name].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplicationState
    class DescribeApplicationState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.DescribeApplicationState'
        data = {}
        data['ApplicationId'] = input[:application_id] unless input[:application_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMigrationTask
    class DescribeMigrationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.DescribeMigrationTask'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateCreatedArtifact
    class DisassociateCreatedArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.DisassociateCreatedArtifact'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['CreatedArtifactName'] = input[:created_artifact_name] unless input[:created_artifact_name].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateDiscoveredResource
    class DisassociateDiscoveredResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.DisassociateDiscoveredResource'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['ConfigurationId'] = input[:configuration_id] unless input[:configuration_id].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportMigrationTask
    class ImportMigrationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.ImportMigrationTask'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApplicationStates
    class ListApplicationStates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.ListApplicationStates'
        data = {}
        data['ApplicationIds'] = ApplicationIds.build(input[:application_ids]) unless input[:application_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationIds
    class ApplicationIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListCreatedArtifacts
    class ListCreatedArtifacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.ListCreatedArtifacts'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDiscoveredResources
    class ListDiscoveredResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.ListDiscoveredResources'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMigrationTasks
    class ListMigrationTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.ListMigrationTasks'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProgressUpdateStreams
    class ListProgressUpdateStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.ListProgressUpdateStreams'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for NotifyApplicationState
    class NotifyApplicationState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.NotifyApplicationState'
        data = {}
        data['ApplicationId'] = input[:application_id] unless input[:application_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['UpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:update_date_time]).to_i unless input[:update_date_time].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for NotifyMigrationTaskState
    class NotifyMigrationTaskState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.NotifyMigrationTaskState'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['Task'] = Task.build(input[:task]) unless input[:task].nil?
        data['UpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:update_date_time]).to_i unless input[:update_date_time].nil?
        data['NextUpdateSeconds'] = input[:next_update_seconds] unless input[:next_update_seconds].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Task
    class Task
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['StatusDetail'] = input[:status_detail] unless input[:status_detail].nil?
        data['ProgressPercent'] = input[:progress_percent] unless input[:progress_percent].nil?
        data
      end
    end

    # Operation Builder for PutResourceAttributes
    class PutResourceAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHub.PutResourceAttributes'
        data = {}
        data['ProgressUpdateStream'] = input[:progress_update_stream] unless input[:progress_update_stream].nil?
        data['MigrationTaskName'] = input[:migration_task_name] unless input[:migration_task_name].nil?
        data['ResourceAttributeList'] = ResourceAttributeList.build(input[:resource_attribute_list]) unless input[:resource_attribute_list].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceAttributeList
    class ResourceAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << ResourceAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceAttribute
    class ResourceAttribute
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end
  end
end
