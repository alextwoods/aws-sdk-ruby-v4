# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostAndUsageReportService
  module Validators

    class AdditionalArtifactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
      end
    end

    class DeleteReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:response_message], ::String, context: "#{context}[:response_message]")
      end
    end

    class DescribeReportDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReportDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportDefinitionsOutput, context: context)
        Validators::ReportDefinitionList.validate!(input[:report_definitions], context: "#{context}[:report_definitions]") unless input[:report_definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DuplicateReportNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateReportNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ModifyReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReportDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Validators::ReportDefinition.validate!(input[:report_definition], context: "#{context}[:report_definition]") unless input[:report_definition].nil?
      end
    end

    class ModifyReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReportDefinitionOutput, context: context)
      end
    end

    class PutReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutReportDefinitionInput, context: context)
        Validators::ReportDefinition.validate!(input[:report_definition], context: "#{context}[:report_definition]") unless input[:report_definition].nil?
      end
    end

    class PutReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutReportDefinitionOutput, context: context)
      end
    end

    class ReportDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportDefinition, context: context)
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Hearth::Validator.validate!(input[:time_unit], ::String, context: "#{context}[:time_unit]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:compression], ::String, context: "#{context}[:compression]")
        Validators::SchemaElementList.validate!(input[:additional_schema_elements], context: "#{context}[:additional_schema_elements]") unless input[:additional_schema_elements].nil?
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:s3_region], ::String, context: "#{context}[:s3_region]")
        Validators::AdditionalArtifactList.validate!(input[:additional_artifacts], context: "#{context}[:additional_artifacts]") unless input[:additional_artifacts].nil?
        Hearth::Validator.validate!(input[:refresh_closed_reports], ::TrueClass, ::FalseClass, context: "#{context}[:refresh_closed_reports]")
        Hearth::Validator.validate!(input[:report_versioning], ::String, context: "#{context}[:report_versioning]")
        Hearth::Validator.validate!(input[:billing_view_arn], ::String, context: "#{context}[:billing_view_arn]")
      end
    end

    class ReportDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReportDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReportLimitReachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportLimitReachedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchemaElementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
