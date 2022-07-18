# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerA2IRuntime
  module Params

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ContentClassifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteHumanLoopInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHumanLoopInput, context: context)
        type = Types::DeleteHumanLoopInput.new
        type.human_loop_name = params[:human_loop_name]
        type
      end
    end

    module DeleteHumanLoopOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHumanLoopOutput, context: context)
        type = Types::DeleteHumanLoopOutput.new
        type
      end
    end

    module DescribeHumanLoopInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHumanLoopInput, context: context)
        type = Types::DescribeHumanLoopInput.new
        type.human_loop_name = params[:human_loop_name]
        type
      end
    end

    module DescribeHumanLoopOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHumanLoopOutput, context: context)
        type = Types::DescribeHumanLoopOutput.new
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type.human_loop_status = params[:human_loop_status]
        type.human_loop_name = params[:human_loop_name]
        type.human_loop_arn = params[:human_loop_arn]
        type.flow_definition_arn = params[:flow_definition_arn]
        type.human_loop_output = HumanLoopOutput.build(params[:human_loop_output], context: "#{context}[:human_loop_output]") unless params[:human_loop_output].nil?
        type
      end
    end

    module HumanLoopDataAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopDataAttributes, context: context)
        type = Types::HumanLoopDataAttributes.new
        type.content_classifiers = ContentClassifiers.build(params[:content_classifiers], context: "#{context}[:content_classifiers]") unless params[:content_classifiers].nil?
        type
      end
    end

    module HumanLoopInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopInput, context: context)
        type = Types::HumanLoopInput.new
        type.input_content = params[:input_content]
        type
      end
    end

    module HumanLoopOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopOutput, context: context)
        type = Types::HumanLoopOutput.new
        type.output_s3_uri = params[:output_s3_uri]
        type
      end
    end

    module HumanLoopSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HumanLoopSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HumanLoopSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopSummary, context: context)
        type = Types::HumanLoopSummary.new
        type.human_loop_name = params[:human_loop_name]
        type.human_loop_status = params[:human_loop_status]
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type.flow_definition_arn = params[:flow_definition_arn]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListHumanLoopsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHumanLoopsInput, context: context)
        type = Types::ListHumanLoopsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.flow_definition_arn = params[:flow_definition_arn]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHumanLoopsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHumanLoopsOutput, context: context)
        type = Types::ListHumanLoopsOutput.new
        type.human_loop_summaries = HumanLoopSummaries.build(params[:human_loop_summaries], context: "#{context}[:human_loop_summaries]") unless params[:human_loop_summaries].nil?
        type.next_token = params[:next_token]
        type
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

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StartHumanLoopInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartHumanLoopInput, context: context)
        type = Types::StartHumanLoopInput.new
        type.human_loop_name = params[:human_loop_name]
        type.flow_definition_arn = params[:flow_definition_arn]
        type.human_loop_input = HumanLoopInput.build(params[:human_loop_input], context: "#{context}[:human_loop_input]") unless params[:human_loop_input].nil?
        type.data_attributes = HumanLoopDataAttributes.build(params[:data_attributes], context: "#{context}[:data_attributes]") unless params[:data_attributes].nil?
        type
      end
    end

    module StartHumanLoopOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartHumanLoopOutput, context: context)
        type = Types::StartHumanLoopOutput.new
        type.human_loop_arn = params[:human_loop_arn]
        type
      end
    end

    module StopHumanLoopInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopHumanLoopInput, context: context)
        type = Types::StopHumanLoopInput.new
        type.human_loop_name = params[:human_loop_name]
        type
      end
    end

    module StopHumanLoopOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopHumanLoopOutput, context: context)
        type = Types::StopHumanLoopOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
