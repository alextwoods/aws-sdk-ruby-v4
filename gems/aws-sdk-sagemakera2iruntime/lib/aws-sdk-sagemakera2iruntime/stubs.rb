# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SageMakerA2IRuntime
  module Stubs

    # Operation Stubber for DeleteHumanLoop
    class DeleteHumanLoop
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeHumanLoop
    class DescribeHumanLoop
      def self.default(visited=[])
        {
          creation_time: Time.now,
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
          human_loop_status: 'human_loop_status',
          human_loop_name: 'human_loop_name',
          human_loop_arn: 'human_loop_arn',
          flow_definition_arn: 'flow_definition_arn',
          human_loop_output: HumanLoopOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['FailureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['HumanLoopStatus'] = stub[:human_loop_status] unless stub[:human_loop_status].nil?
        data['HumanLoopName'] = stub[:human_loop_name] unless stub[:human_loop_name].nil?
        data['HumanLoopArn'] = stub[:human_loop_arn] unless stub[:human_loop_arn].nil?
        data['FlowDefinitionArn'] = stub[:flow_definition_arn] unless stub[:flow_definition_arn].nil?
        data['HumanLoopOutput'] = HumanLoopOutput.stub(stub[:human_loop_output]) unless stub[:human_loop_output].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for HumanLoopOutput
    class HumanLoopOutput
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopOutput')
        visited = visited + ['HumanLoopOutput']
        {
          output_s3_uri: 'output_s3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopOutput.new
        data = {}
        data['OutputS3Uri'] = stub[:output_s3_uri] unless stub[:output_s3_uri].nil?
        data
      end
    end

    # Operation Stubber for ListHumanLoops
    class ListHumanLoops
      def self.default(visited=[])
        {
          human_loop_summaries: HumanLoopSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HumanLoopSummaries'] = HumanLoopSummaries.stub(stub[:human_loop_summaries]) unless stub[:human_loop_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for HumanLoopSummaries
    class HumanLoopSummaries
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopSummaries')
        visited = visited + ['HumanLoopSummaries']
        [
          HumanLoopSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HumanLoopSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HumanLoopSummary
    class HumanLoopSummary
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopSummary')
        visited = visited + ['HumanLoopSummary']
        {
          human_loop_name: 'human_loop_name',
          human_loop_status: 'human_loop_status',
          creation_time: Time.now,
          failure_reason: 'failure_reason',
          flow_definition_arn: 'flow_definition_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopSummary.new
        data = {}
        data['HumanLoopName'] = stub[:human_loop_name] unless stub[:human_loop_name].nil?
        data['HumanLoopStatus'] = stub[:human_loop_status] unless stub[:human_loop_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['FlowDefinitionArn'] = stub[:flow_definition_arn] unless stub[:flow_definition_arn].nil?
        data
      end
    end

    # Operation Stubber for StartHumanLoop
    class StartHumanLoop
      def self.default(visited=[])
        {
          human_loop_arn: 'human_loop_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HumanLoopArn'] = stub[:human_loop_arn] unless stub[:human_loop_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopHumanLoop
    class StopHumanLoop
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
