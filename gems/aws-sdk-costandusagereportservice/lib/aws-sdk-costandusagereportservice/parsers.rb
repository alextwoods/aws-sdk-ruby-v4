# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CostAndUsageReportService
  module Parsers

    # Operation Parser for DeleteReportDefinition
    class DeleteReportDefinition
      def self.parse(http_resp)
        data = Types::DeleteReportDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.response_message = map['ResponseMessage']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeReportDefinitions
    class DescribeReportDefinitions
      def self.parse(http_resp)
        data = Types::DescribeReportDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.report_definitions = (Parsers::ReportDefinitionList.parse(map['ReportDefinitions']) unless map['ReportDefinitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReportDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::ReportDefinition.parse(value) unless value.nil?
        end
      end
    end

    class ReportDefinition
      def self.parse(map)
        data = Types::ReportDefinition.new
        data.report_name = map['ReportName']
        data.time_unit = map['TimeUnit']
        data.format = map['Format']
        data.compression = map['Compression']
        data.additional_schema_elements = (Parsers::SchemaElementList.parse(map['AdditionalSchemaElements']) unless map['AdditionalSchemaElements'].nil?)
        data.s3_bucket = map['S3Bucket']
        data.s3_prefix = map['S3Prefix']
        data.s3_region = map['S3Region']
        data.additional_artifacts = (Parsers::AdditionalArtifactList.parse(map['AdditionalArtifacts']) unless map['AdditionalArtifacts'].nil?)
        data.refresh_closed_reports = map['RefreshClosedReports']
        data.report_versioning = map['ReportVersioning']
        data.billing_view_arn = map['BillingViewArn']
        return data
      end
    end

    class AdditionalArtifactList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SchemaElementList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ModifyReportDefinition
    class ModifyReportDefinition
      def self.parse(http_resp)
        data = Types::ModifyReportDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutReportDefinition
    class PutReportDefinition
      def self.parse(http_resp)
        data = Types::PutReportDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ReportLimitReachedException
    class ReportLimitReachedException
      def self.parse(http_resp)
        data = Types::ReportLimitReachedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DuplicateReportNameException
    class DuplicateReportNameException
      def self.parse(http_resp)
        data = Types::DuplicateReportNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end
  end
end
