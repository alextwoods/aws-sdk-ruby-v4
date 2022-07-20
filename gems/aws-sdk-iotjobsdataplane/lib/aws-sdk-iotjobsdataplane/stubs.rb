# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTJobsDataPlane
  module Stubs

    # Operation Stubber for DescribeJobExecution
    class DescribeJobExecution
      def self.default(visited=[])
        {
          execution: JobExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['execution'] = Stubs::JobExecution.stub(stub[:execution]) unless stub[:execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobExecution
    class JobExecution
      def self.default(visited=[])
        return nil if visited.include?('JobExecution')
        visited = visited + ['JobExecution']
        {
          job_id: 'job_id',
          thing_name: 'thing_name',
          status: 'status',
          status_details: DetailsMap.default(visited),
          queued_at: 1,
          started_at: 1,
          last_updated_at: 1,
          approximate_seconds_before_timed_out: 1,
          version_number: 1,
          execution_number: 1,
          job_document: 'job_document',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecution.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusDetails'] = Stubs::DetailsMap.stub(stub[:status_details]) unless stub[:status_details].nil?
        data['queuedAt'] = stub[:queued_at] unless stub[:queued_at].nil?
        data['startedAt'] = stub[:started_at] unless stub[:started_at].nil?
        data['lastUpdatedAt'] = stub[:last_updated_at] unless stub[:last_updated_at].nil?
        data['approximateSecondsBeforeTimedOut'] = stub[:approximate_seconds_before_timed_out] unless stub[:approximate_seconds_before_timed_out].nil?
        data['versionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['executionNumber'] = stub[:execution_number] unless stub[:execution_number].nil?
        data['jobDocument'] = stub[:job_document] unless stub[:job_document].nil?
        data
      end
    end

    # Map Stubber for DetailsMap
    class DetailsMap
      def self.default(visited=[])
        return nil if visited.include?('DetailsMap')
        visited = visited + ['DetailsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetPendingJobExecutions
    class GetPendingJobExecutions
      def self.default(visited=[])
        {
          in_progress_jobs: JobExecutionSummaryList.default(visited),
          queued_jobs: JobExecutionSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inProgressJobs'] = Stubs::JobExecutionSummaryList.stub(stub[:in_progress_jobs]) unless stub[:in_progress_jobs].nil?
        data['queuedJobs'] = Stubs::JobExecutionSummaryList.stub(stub[:queued_jobs]) unless stub[:queued_jobs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobExecutionSummaryList
    class JobExecutionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummaryList')
        visited = visited + ['JobExecutionSummaryList']
        [
          JobExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobExecutionSummary
    class JobExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummary')
        visited = visited + ['JobExecutionSummary']
        {
          job_id: 'job_id',
          queued_at: 1,
          started_at: 1,
          last_updated_at: 1,
          version_number: 1,
          execution_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionSummary.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['queuedAt'] = stub[:queued_at] unless stub[:queued_at].nil?
        data['startedAt'] = stub[:started_at] unless stub[:started_at].nil?
        data['lastUpdatedAt'] = stub[:last_updated_at] unless stub[:last_updated_at].nil?
        data['versionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['executionNumber'] = stub[:execution_number] unless stub[:execution_number].nil?
        data
      end
    end

    # Operation Stubber for StartNextPendingJobExecution
    class StartNextPendingJobExecution
      def self.default(visited=[])
        {
          execution: JobExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['execution'] = Stubs::JobExecution.stub(stub[:execution]) unless stub[:execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateJobExecution
    class UpdateJobExecution
      def self.default(visited=[])
        {
          execution_state: JobExecutionState.default(visited),
          job_document: 'job_document',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['executionState'] = Stubs::JobExecutionState.stub(stub[:execution_state]) unless stub[:execution_state].nil?
        data['jobDocument'] = stub[:job_document] unless stub[:job_document].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobExecutionState
    class JobExecutionState
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionState')
        visited = visited + ['JobExecutionState']
        {
          status: 'status',
          status_details: DetailsMap.default(visited),
          version_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusDetails'] = Stubs::DetailsMap.stub(stub[:status_details]) unless stub[:status_details].nil?
        data['versionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data
      end
    end
  end
end
