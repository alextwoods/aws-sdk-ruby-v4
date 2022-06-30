# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTJobsDataPlane
  module Params

    module CertificateValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateValidationException, context: context)
        type = Types::CertificateValidationException.new
        type.message = params[:message]
        type
      end
    end

    module DescribeJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobExecutionInput, context: context)
        type = Types::DescribeJobExecutionInput.new
        type.job_id = params[:job_id]
        type.thing_name = params[:thing_name]
        type.include_job_document = params[:include_job_document]
        type.execution_number = params[:execution_number]
        type
      end
    end

    module DescribeJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobExecutionOutput, context: context)
        type = Types::DescribeJobExecutionOutput.new
        type.execution = JobExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type
      end
    end

    module DetailsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetPendingJobExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPendingJobExecutionsInput, context: context)
        type = Types::GetPendingJobExecutionsInput.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module GetPendingJobExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPendingJobExecutionsOutput, context: context)
        type = Types::GetPendingJobExecutionsOutput.new
        type.in_progress_jobs = JobExecutionSummaryList.build(params[:in_progress_jobs], context: "#{context}[:in_progress_jobs]") unless params[:in_progress_jobs].nil?
        type.queued_jobs = JobExecutionSummaryList.build(params[:queued_jobs], context: "#{context}[:queued_jobs]") unless params[:queued_jobs].nil?
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateTransitionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateTransitionException, context: context)
        type = Types::InvalidStateTransitionException.new
        type.message = params[:message]
        type
      end
    end

    module JobExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecution, context: context)
        type = Types::JobExecution.new
        type.job_id = params[:job_id]
        type.thing_name = params[:thing_name]
        type.status = params[:status]
        type.status_details = DetailsMap.build(params[:status_details], context: "#{context}[:status_details]") unless params[:status_details].nil?
        type.queued_at = params[:queued_at]
        type.started_at = params[:started_at]
        type.last_updated_at = params[:last_updated_at]
        type.approximate_seconds_before_timed_out = params[:approximate_seconds_before_timed_out]
        type.version_number = params[:version_number]
        type.execution_number = params[:execution_number]
        type.job_document = params[:job_document]
        type
      end
    end

    module JobExecutionState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionState, context: context)
        type = Types::JobExecutionState.new
        type.status = params[:status]
        type.status_details = DetailsMap.build(params[:status_details], context: "#{context}[:status_details]") unless params[:status_details].nil?
        type.version_number = params[:version_number]
        type
      end
    end

    module JobExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionSummary, context: context)
        type = Types::JobExecutionSummary.new
        type.job_id = params[:job_id]
        type.queued_at = params[:queued_at]
        type.started_at = params[:started_at]
        type.last_updated_at = params[:last_updated_at]
        type.version_number = params[:version_number]
        type.execution_number = params[:execution_number]
        type
      end
    end

    module JobExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StartNextPendingJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNextPendingJobExecutionInput, context: context)
        type = Types::StartNextPendingJobExecutionInput.new
        type.thing_name = params[:thing_name]
        type.status_details = DetailsMap.build(params[:status_details], context: "#{context}[:status_details]") unless params[:status_details].nil?
        type.step_timeout_in_minutes = params[:step_timeout_in_minutes]
        type
      end
    end

    module StartNextPendingJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNextPendingJobExecutionOutput, context: context)
        type = Types::StartNextPendingJobExecutionOutput.new
        type.execution = JobExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type
      end
    end

    module TerminalStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminalStateException, context: context)
        type = Types::TerminalStateException.new
        type.message = params[:message]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.payload = params[:payload]
        type
      end
    end

    module UpdateJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobExecutionInput, context: context)
        type = Types::UpdateJobExecutionInput.new
        type.job_id = params[:job_id]
        type.thing_name = params[:thing_name]
        type.status = params[:status]
        type.status_details = DetailsMap.build(params[:status_details], context: "#{context}[:status_details]") unless params[:status_details].nil?
        type.step_timeout_in_minutes = params[:step_timeout_in_minutes]
        type.expected_version = params[:expected_version]
        type.include_job_execution_state = params[:include_job_execution_state]
        type.include_job_document = params[:include_job_document]
        type.execution_number = params[:execution_number]
        type
      end
    end

    module UpdateJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobExecutionOutput, context: context)
        type = Types::UpdateJobExecutionOutput.new
        type.execution_state = JobExecutionState.build(params[:execution_state], context: "#{context}[:execution_state]") unless params[:execution_state].nil?
        type.job_document = params[:job_document]
        type
      end
    end

  end
end
