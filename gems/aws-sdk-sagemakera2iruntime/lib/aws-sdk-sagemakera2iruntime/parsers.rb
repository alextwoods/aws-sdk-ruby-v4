# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerA2IRuntime
  module Parsers

    # Operation Parser for DeleteHumanLoop
    class DeleteHumanLoop
      def self.parse(http_resp)
        data = Types::DeleteHumanLoopOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeHumanLoop
    class DescribeHumanLoop
      def self.parse(http_resp)
        data = Types::DescribeHumanLoopOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        data.failure_code = map['FailureCode']
        data.human_loop_status = map['HumanLoopStatus']
        data.human_loop_name = map['HumanLoopName']
        data.human_loop_arn = map['HumanLoopArn']
        data.flow_definition_arn = map['FlowDefinitionArn']
        data.human_loop_output = (HumanLoopOutput.parse(map['HumanLoopOutput']) unless map['HumanLoopOutput'].nil?)
        data
      end
    end

    class HumanLoopOutput
      def self.parse(map)
        data = Types::HumanLoopOutput.new
        data.output_s3_uri = map['OutputS3Uri']
        return data
      end
    end

    # Operation Parser for ListHumanLoops
    class ListHumanLoops
      def self.parse(http_resp)
        data = Types::ListHumanLoopsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.human_loop_summaries = (HumanLoopSummaries.parse(map['HumanLoopSummaries']) unless map['HumanLoopSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HumanLoopSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << HumanLoopSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class HumanLoopSummary
      def self.parse(map)
        data = Types::HumanLoopSummary.new
        data.human_loop_name = map['HumanLoopName']
        data.human_loop_status = map['HumanLoopStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        data.flow_definition_arn = map['FlowDefinitionArn']
        return data
      end
    end

    # Operation Parser for StartHumanLoop
    class StartHumanLoop
      def self.parse(http_resp)
        data = Types::StartHumanLoopOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.human_loop_arn = map['HumanLoopArn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopHumanLoop
    class StopHumanLoop
      def self.parse(http_resp)
        data = Types::StopHumanLoopOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
