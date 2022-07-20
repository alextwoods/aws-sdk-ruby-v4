# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::SageMakerA2IRuntime
  module Validators

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContentClassifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteHumanLoopInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHumanLoopInput, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
      end
    end

    class DeleteHumanLoopOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHumanLoopOutput, context: context)
      end
    end

    class DescribeHumanLoopInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHumanLoopInput, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
      end
    end

    class DescribeHumanLoopOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHumanLoopOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:human_loop_status], ::String, context: "#{context}[:human_loop_status]")
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
        Hearth::Validator.validate!(input[:human_loop_arn], ::String, context: "#{context}[:human_loop_arn]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        HumanLoopOutput.validate!(input[:human_loop_output], context: "#{context}[:human_loop_output]") unless input[:human_loop_output].nil?
      end
    end

    class HumanLoopDataAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopDataAttributes, context: context)
        ContentClassifiers.validate!(input[:content_classifiers], context: "#{context}[:content_classifiers]") unless input[:content_classifiers].nil?
      end
    end

    class HumanLoopInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopInput, context: context)
        Hearth::Validator.validate!(input[:input_content], ::String, context: "#{context}[:input_content]")
      end
    end

    class HumanLoopOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopOutput, context: context)
        Hearth::Validator.validate!(input[:output_s3_uri], ::String, context: "#{context}[:output_s3_uri]")
      end
    end

    class HumanLoopSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HumanLoopSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HumanLoopSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopSummary, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
        Hearth::Validator.validate!(input[:human_loop_status], ::String, context: "#{context}[:human_loop_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListHumanLoopsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHumanLoopsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHumanLoopsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHumanLoopsOutput, context: context)
        HumanLoopSummaries.validate!(input[:human_loop_summaries], context: "#{context}[:human_loop_summaries]") unless input[:human_loop_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartHumanLoopInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartHumanLoopInput, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        HumanLoopInput.validate!(input[:human_loop_input], context: "#{context}[:human_loop_input]") unless input[:human_loop_input].nil?
        HumanLoopDataAttributes.validate!(input[:data_attributes], context: "#{context}[:data_attributes]") unless input[:data_attributes].nil?
      end
    end

    class StartHumanLoopOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartHumanLoopOutput, context: context)
        Hearth::Validator.validate!(input[:human_loop_arn], ::String, context: "#{context}[:human_loop_arn]")
      end
    end

    class StopHumanLoopInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopHumanLoopInput, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
      end
    end

    class StopHumanLoopOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopHumanLoopOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
