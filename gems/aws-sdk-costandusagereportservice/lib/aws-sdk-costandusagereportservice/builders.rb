# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CostAndUsageReportService
  module Builders

    # Operation Builder for DeleteReportDefinition
    class DeleteReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrigamiServiceGatewayService.DeleteReportDefinition'
        data = {}
        data['ReportName'] = input[:report_name] unless input[:report_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReportDefinitions
    class DescribeReportDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrigamiServiceGatewayService.DescribeReportDefinitions'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyReportDefinition
    class ModifyReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrigamiServiceGatewayService.ModifyReportDefinition'
        data = {}
        data['ReportName'] = input[:report_name] unless input[:report_name].nil?
        data['ReportDefinition'] = ReportDefinition.build(input[:report_definition]) unless input[:report_definition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReportDefinition
    class ReportDefinition
      def self.build(input)
        data = {}
        data['ReportName'] = input[:report_name] unless input[:report_name].nil?
        data['TimeUnit'] = input[:time_unit] unless input[:time_unit].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['Compression'] = input[:compression] unless input[:compression].nil?
        data['AdditionalSchemaElements'] = SchemaElementList.build(input[:additional_schema_elements]) unless input[:additional_schema_elements].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data['S3Region'] = input[:s3_region] unless input[:s3_region].nil?
        data['AdditionalArtifacts'] = AdditionalArtifactList.build(input[:additional_artifacts]) unless input[:additional_artifacts].nil?
        data['RefreshClosedReports'] = input[:refresh_closed_reports] unless input[:refresh_closed_reports].nil?
        data['ReportVersioning'] = input[:report_versioning] unless input[:report_versioning].nil?
        data['BillingViewArn'] = input[:billing_view_arn] unless input[:billing_view_arn].nil?
        data
      end
    end

    # List Builder for AdditionalArtifactList
    class AdditionalArtifactList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SchemaElementList
    class SchemaElementList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutReportDefinition
    class PutReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrigamiServiceGatewayService.PutReportDefinition'
        data = {}
        data['ReportDefinition'] = ReportDefinition.build(input[:report_definition]) unless input[:report_definition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
