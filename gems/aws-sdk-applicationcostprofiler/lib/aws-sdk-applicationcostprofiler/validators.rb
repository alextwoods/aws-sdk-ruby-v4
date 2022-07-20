# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ApplicationCostProfiler
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class DeleteReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class GetReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReportDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class GetReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReportDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:report_description], ::String, context: "#{context}[:report_description]")
        Hearth::Validator.validate!(input[:report_frequency], ::String, context: "#{context}[:report_frequency]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        S3Location.validate!(input[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless input[:destination_s3_location].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class ImportApplicationUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportApplicationUsageInput, context: context)
        SourceS3Location.validate!(input[:source_s3_location], context: "#{context}[:source_s3_location]") unless input[:source_s3_location].nil?
      end
    end

    class ImportApplicationUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportApplicationUsageOutput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListReportDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReportDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportDefinitionsOutput, context: context)
        ReportDefinitionList.validate!(input[:report_definitions], context: "#{context}[:report_definitions]") unless input[:report_definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PutReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutReportDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:report_description], ::String, context: "#{context}[:report_description]")
        Hearth::Validator.validate!(input[:report_frequency], ::String, context: "#{context}[:report_frequency]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        S3Location.validate!(input[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless input[:destination_s3_location].nil?
      end
    end

    class PutReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutReportDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class ReportDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportDefinition, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:report_description], ::String, context: "#{context}[:report_description]")
        Hearth::Validator.validate!(input[:report_frequency], ::String, context: "#{context}[:report_frequency]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        S3Location.validate!(input[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless input[:destination_s3_location].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class ReportDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReportDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceS3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceS3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateReportDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReportDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:report_description], ::String, context: "#{context}[:report_description]")
        Hearth::Validator.validate!(input[:report_frequency], ::String, context: "#{context}[:report_frequency]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        S3Location.validate!(input[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless input[:destination_s3_location].nil?
      end
    end

    class UpdateReportDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReportDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
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
