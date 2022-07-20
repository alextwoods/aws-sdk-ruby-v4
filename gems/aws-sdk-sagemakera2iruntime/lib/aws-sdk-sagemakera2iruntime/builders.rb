# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerA2IRuntime
  module Builders

    # Operation Builder for DeleteHumanLoop
    class DeleteHumanLoop
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:human_loop_name].to_s.empty?
          raise ArgumentError, "HTTP label :human_loop_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/human-loops/%<HumanLoopName>s',
            HumanLoopName: Hearth::HTTP.uri_escape(input[:human_loop_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeHumanLoop
    class DescribeHumanLoop
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:human_loop_name].to_s.empty?
          raise ArgumentError, "HTTP label :human_loop_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/human-loops/%<HumanLoopName>s',
            HumanLoopName: Hearth::HTTP.uri_escape(input[:human_loop_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListHumanLoops
    class ListHumanLoops
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/human-loops')
        params = Hearth::Query::ParamList.new
        params['CreationTimeAfter'] = Hearth::TimeHelper.to_date_time(input[:creation_time_after]) unless input[:creation_time_after].nil?
        params['CreationTimeBefore'] = Hearth::TimeHelper.to_date_time(input[:creation_time_before]) unless input[:creation_time_before].nil?
        params['FlowDefinitionArn'] = input[:flow_definition_arn].to_s unless input[:flow_definition_arn].nil?
        params['SortOrder'] = input[:sort_order].to_s unless input[:sort_order].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartHumanLoop
    class StartHumanLoop
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/human-loops')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HumanLoopName'] = input[:human_loop_name] unless input[:human_loop_name].nil?
        data['FlowDefinitionArn'] = input[:flow_definition_arn] unless input[:flow_definition_arn].nil?
        data['HumanLoopInput'] = Builders::HumanLoopInput.build(input[:human_loop_input]) unless input[:human_loop_input].nil?
        data['DataAttributes'] = Builders::HumanLoopDataAttributes.build(input[:data_attributes]) unless input[:data_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HumanLoopDataAttributes
    class HumanLoopDataAttributes
      def self.build(input)
        data = {}
        data['ContentClassifiers'] = Builders::ContentClassifiers.build(input[:content_classifiers]) unless input[:content_classifiers].nil?
        data
      end
    end

    # List Builder for ContentClassifiers
    class ContentClassifiers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HumanLoopInput
    class HumanLoopInput
      def self.build(input)
        data = {}
        data['InputContent'] = input[:input_content] unless input[:input_content].nil?
        data
      end
    end

    # Operation Builder for StopHumanLoop
    class StopHumanLoop
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/human-loops/stop')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HumanLoopName'] = input[:human_loop_name] unless input[:human_loop_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
