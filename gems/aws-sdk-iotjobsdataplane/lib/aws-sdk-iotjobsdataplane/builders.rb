# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTJobsDataPlane
  module Builders

    # Operation Builder for DescribeJobExecution
    class DescribeJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s),
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeJobDocument'] = input[:include_job_document].to_s unless input[:include_job_document].nil?
        params['executionNumber'] = input[:execution_number].to_s unless input[:execution_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPendingJobExecutions
    class GetPendingJobExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartNextPendingJobExecution
    class StartNextPendingJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs/$next',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['statusDetails'] = Builders::DetailsMap.build(input[:status_details]) unless input[:status_details].nil?
        data['stepTimeoutInMinutes'] = input[:step_timeout_in_minutes] unless input[:step_timeout_in_minutes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for DetailsMap
    class DetailsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateJobExecution
    class UpdateJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s),
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['statusDetails'] = Builders::DetailsMap.build(input[:status_details]) unless input[:status_details].nil?
        data['stepTimeoutInMinutes'] = input[:step_timeout_in_minutes] unless input[:step_timeout_in_minutes].nil?
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        data['includeJobExecutionState'] = input[:include_job_execution_state] unless input[:include_job_execution_state].nil?
        data['includeJobDocument'] = input[:include_job_document] unless input[:include_job_document].nil?
        data['executionNumber'] = input[:execution_number] unless input[:execution_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
