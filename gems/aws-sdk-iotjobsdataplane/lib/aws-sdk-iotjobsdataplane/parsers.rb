# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTJobsDataPlane
  module Parsers

    # Operation Parser for DescribeJobExecution
    class DescribeJobExecution
      def self.parse(http_resp)
        data = Types::DescribeJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution = (Parsers::JobExecution.parse(map['execution']) unless map['execution'].nil?)
        data
      end
    end

    class JobExecution
      def self.parse(map)
        data = Types::JobExecution.new
        data.job_id = map['jobId']
        data.thing_name = map['thingName']
        data.status = map['status']
        data.status_details = (Parsers::DetailsMap.parse(map['statusDetails']) unless map['statusDetails'].nil?)
        data.queued_at = map['queuedAt']
        data.started_at = map['startedAt']
        data.last_updated_at = map['lastUpdatedAt']
        data.approximate_seconds_before_timed_out = map['approximateSecondsBeforeTimedOut']
        data.version_number = map['versionNumber']
        data.execution_number = map['executionNumber']
        data.job_document = map['jobDocument']
        return data
      end
    end

    class DetailsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for CertificateValidationException
    class CertificateValidationException
      def self.parse(http_resp)
        data = Types::CertificateValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TerminalStateException
    class TerminalStateException
      def self.parse(http_resp)
        data = Types::TerminalStateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.payload = Base64::decode64(map['payload']) unless map['payload'].nil?
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetPendingJobExecutions
    class GetPendingJobExecutions
      def self.parse(http_resp)
        data = Types::GetPendingJobExecutionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.in_progress_jobs = (Parsers::JobExecutionSummaryList.parse(map['inProgressJobs']) unless map['inProgressJobs'].nil?)
        data.queued_jobs = (Parsers::JobExecutionSummaryList.parse(map['queuedJobs']) unless map['queuedJobs'].nil?)
        data
      end
    end

    class JobExecutionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobExecutionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobExecutionSummary
      def self.parse(map)
        data = Types::JobExecutionSummary.new
        data.job_id = map['jobId']
        data.queued_at = map['queuedAt']
        data.started_at = map['startedAt']
        data.last_updated_at = map['lastUpdatedAt']
        data.version_number = map['versionNumber']
        data.execution_number = map['executionNumber']
        return data
      end
    end

    # Operation Parser for StartNextPendingJobExecution
    class StartNextPendingJobExecution
      def self.parse(http_resp)
        data = Types::StartNextPendingJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution = (Parsers::JobExecution.parse(map['execution']) unless map['execution'].nil?)
        data
      end
    end

    # Operation Parser for UpdateJobExecution
    class UpdateJobExecution
      def self.parse(http_resp)
        data = Types::UpdateJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_state = (Parsers::JobExecutionState.parse(map['executionState']) unless map['executionState'].nil?)
        data.job_document = map['jobDocument']
        data
      end
    end

    class JobExecutionState
      def self.parse(map)
        data = Types::JobExecutionState.new
        data.status = map['status']
        data.status_details = (Parsers::DetailsMap.parse(map['statusDetails']) unless map['statusDetails'].nil?)
        data.version_number = map['versionNumber']
        return data
      end
    end

    # Error Parser for InvalidStateTransitionException
    class InvalidStateTransitionException
      def self.parse(http_resp)
        data = Types::InvalidStateTransitionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
