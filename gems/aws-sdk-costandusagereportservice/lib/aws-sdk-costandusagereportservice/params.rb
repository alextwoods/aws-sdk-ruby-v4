# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CostAndUsageReportService
  module Params

    module AdditionalArtifactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportDefinitionInput, context: context)
        type = Types::DeleteReportDefinitionInput.new
        type.report_name = params[:report_name]
        type
      end
    end

    module DeleteReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportDefinitionOutput, context: context)
        type = Types::DeleteReportDefinitionOutput.new
        type.response_message = params[:response_message]
        type
      end
    end

    module DescribeReportDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportDefinitionsInput, context: context)
        type = Types::DescribeReportDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeReportDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportDefinitionsOutput, context: context)
        type = Types::DescribeReportDefinitionsOutput.new
        type.report_definitions = ReportDefinitionList.build(params[:report_definitions], context: "#{context}[:report_definitions]") unless params[:report_definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DuplicateReportNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateReportNameException, context: context)
        type = Types::DuplicateReportNameException.new
        type.message = params[:message]
        type
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ModifyReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReportDefinitionInput, context: context)
        type = Types::ModifyReportDefinitionInput.new
        type.report_name = params[:report_name]
        type.report_definition = ReportDefinition.build(params[:report_definition], context: "#{context}[:report_definition]") unless params[:report_definition].nil?
        type
      end
    end

    module ModifyReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReportDefinitionOutput, context: context)
        type = Types::ModifyReportDefinitionOutput.new
        type
      end
    end

    module PutReportDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutReportDefinitionInput, context: context)
        type = Types::PutReportDefinitionInput.new
        type.report_definition = ReportDefinition.build(params[:report_definition], context: "#{context}[:report_definition]") unless params[:report_definition].nil?
        type
      end
    end

    module PutReportDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutReportDefinitionOutput, context: context)
        type = Types::PutReportDefinitionOutput.new
        type
      end
    end

    module ReportDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportDefinition, context: context)
        type = Types::ReportDefinition.new
        type.report_name = params[:report_name]
        type.time_unit = params[:time_unit]
        type.format = params[:format]
        type.compression = params[:compression]
        type.additional_schema_elements = SchemaElementList.build(params[:additional_schema_elements], context: "#{context}[:additional_schema_elements]") unless params[:additional_schema_elements].nil?
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type.s3_region = params[:s3_region]
        type.additional_artifacts = AdditionalArtifactList.build(params[:additional_artifacts], context: "#{context}[:additional_artifacts]") unless params[:additional_artifacts].nil?
        type.refresh_closed_reports = params[:refresh_closed_reports]
        type.report_versioning = params[:report_versioning]
        type.billing_view_arn = params[:billing_view_arn]
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

    module ReportLimitReachedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportLimitReachedException, context: context)
        type = Types::ReportLimitReachedException.new
        type.message = params[:message]
        type
      end
    end

    module SchemaElementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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
