# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTJobsDataPlane
  module Validators

    class CertificateValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:include_job_document], ::TrueClass, ::FalseClass, context: "#{context}[:include_job_document]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
      end
    end

    class DescribeJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobExecutionOutput, context: context)
        Validators::JobExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
      end
    end

    class DetailsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetPendingJobExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPendingJobExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class GetPendingJobExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPendingJobExecutionsOutput, context: context)
        Validators::JobExecutionSummaryList.validate!(input[:in_progress_jobs], context: "#{context}[:in_progress_jobs]") unless input[:in_progress_jobs].nil?
        Validators::JobExecutionSummaryList.validate!(input[:queued_jobs], context: "#{context}[:queued_jobs]") unless input[:queued_jobs].nil?
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateTransitionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateTransitionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecution, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DetailsMap.validate!(input[:status_details], context: "#{context}[:status_details]") unless input[:status_details].nil?
        Hearth::Validator.validate!(input[:queued_at], ::Integer, context: "#{context}[:queued_at]")
        Hearth::Validator.validate!(input[:started_at], ::Integer, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Integer, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:approximate_seconds_before_timed_out], ::Integer, context: "#{context}[:approximate_seconds_before_timed_out]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
        Hearth::Validator.validate!(input[:job_document], ::String, context: "#{context}[:job_document]")
      end
    end

    class JobExecutionState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DetailsMap.validate!(input[:status_details], context: "#{context}[:status_details]") unless input[:status_details].nil?
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class JobExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:queued_at], ::Integer, context: "#{context}[:queued_at]")
        Hearth::Validator.validate!(input[:started_at], ::Integer, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Integer, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
      end
    end

    class JobExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartNextPendingJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNextPendingJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Validators::DetailsMap.validate!(input[:status_details], context: "#{context}[:status_details]") unless input[:status_details].nil?
        Hearth::Validator.validate!(input[:step_timeout_in_minutes], ::Integer, context: "#{context}[:step_timeout_in_minutes]")
      end
    end

    class StartNextPendingJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNextPendingJobExecutionOutput, context: context)
        Validators::JobExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
      end
    end

    class TerminalStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminalStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class UpdateJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DetailsMap.validate!(input[:status_details], context: "#{context}[:status_details]") unless input[:status_details].nil?
        Hearth::Validator.validate!(input[:step_timeout_in_minutes], ::Integer, context: "#{context}[:step_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
        Hearth::Validator.validate!(input[:include_job_execution_state], ::TrueClass, ::FalseClass, context: "#{context}[:include_job_execution_state]")
        Hearth::Validator.validate!(input[:include_job_document], ::TrueClass, ::FalseClass, context: "#{context}[:include_job_document]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
      end
    end

    class UpdateJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobExecutionOutput, context: context)
        Validators::JobExecutionState.validate!(input[:execution_state], context: "#{context}[:execution_state]") unless input[:execution_state].nil?
        Hearth::Validator.validate!(input[:job_document], ::String, context: "#{context}[:job_document]")
      end
    end

  end
end
