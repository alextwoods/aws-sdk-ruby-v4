# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationCostProfiler
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportDefinitionInput, context: context)
        type = Types::DeleteReportDefinitionInput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module DeleteReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportDefinitionOutput, context: context)
        type = Types::DeleteReportDefinitionOutput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module GetReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReportDefinitionInput, context: context)
        type = Types::GetReportDefinitionInput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module GetReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReportDefinitionOutput, context: context)
        type = Types::GetReportDefinitionOutput.new
        type.report_id = params[:report_id]
        type.report_description = params[:report_description]
        type.report_frequency = params[:report_frequency]
        type.format = params[:format]
        type.destination_s3_location = S3Location.build(params[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless params[:destination_s3_location].nil?
        type.created_at = params[:created_at]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module ImportApplicationUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportApplicationUsageInput, context: context)
        type = Types::ImportApplicationUsageInput.new
        type.source_s3_location = SourceS3Location.build(params[:source_s3_location], context: "#{context}[:source_s3_location]") unless params[:source_s3_location].nil?
        type
      end
    end

    module ImportApplicationUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportApplicationUsageOutput, context: context)
        type = Types::ImportApplicationUsageOutput.new
        type.import_id = params[:import_id]
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

    module ListReportDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportDefinitionsInput, context: context)
        type = Types::ListReportDefinitionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReportDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportDefinitionsOutput, context: context)
        type = Types::ListReportDefinitionsOutput.new
        type.report_definitions = ReportDefinitionList.build(params[:report_definitions], context: "#{context}[:report_definitions]") unless params[:report_definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PutReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutReportDefinitionInput, context: context)
        type = Types::PutReportDefinitionInput.new
        type.report_id = params[:report_id]
        type.report_description = params[:report_description]
        type.report_frequency = params[:report_frequency]
        type.format = params[:format]
        type.destination_s3_location = S3Location.build(params[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless params[:destination_s3_location].nil?
        type
      end
    end

    module PutReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutReportDefinitionOutput, context: context)
        type = Types::PutReportDefinitionOutput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module ReportDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportDefinition, context: context)
        type = Types::ReportDefinition.new
        type.report_id = params[:report_id]
        type.report_description = params[:report_description]
        type.report_frequency = params[:report_frequency]
        type.format = params[:format]
        type.destination_s3_location = S3Location.build(params[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless params[:destination_s3_location].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module ReportDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReportDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
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

    module SourceS3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceS3Location, context: context)
        type = Types::SourceS3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.region = params[:region]
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

    module UpdateReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReportDefinitionInput, context: context)
        type = Types::UpdateReportDefinitionInput.new
        type.report_id = params[:report_id]
        type.report_description = params[:report_description]
        type.report_frequency = params[:report_frequency]
        type.format = params[:format]
        type.destination_s3_location = S3Location.build(params[:destination_s3_location], context: "#{context}[:destination_s3_location]") unless params[:destination_s3_location].nil?
        type
      end
    end

    module UpdateReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReportDefinitionOutput, context: context)
        type = Types::UpdateReportDefinitionOutput.new
        type.report_id = params[:report_id]
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
