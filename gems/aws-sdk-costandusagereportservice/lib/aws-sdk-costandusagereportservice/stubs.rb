# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CostAndUsageReportService
  module Stubs

    # Operation Stubber for DeleteReportDefinition
    class DeleteReportDefinition
      def self.default(visited=[])
        {
          response_message: 'response_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResponseMessage'] = stub[:response_message] unless stub[:response_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeReportDefinitions
    class DescribeReportDefinitions
      def self.default(visited=[])
        {
          report_definitions: ReportDefinitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReportDefinitions'] = ReportDefinitionList.stub(stub[:report_definitions]) unless stub[:report_definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReportDefinitionList
    class ReportDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('ReportDefinitionList')
        visited = visited + ['ReportDefinitionList']
        [
          ReportDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReportDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReportDefinition
    class ReportDefinition
      def self.default(visited=[])
        return nil if visited.include?('ReportDefinition')
        visited = visited + ['ReportDefinition']
        {
          report_name: 'report_name',
          time_unit: 'time_unit',
          format: 'format',
          compression: 'compression',
          additional_schema_elements: SchemaElementList.default(visited),
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
          s3_region: 's3_region',
          additional_artifacts: AdditionalArtifactList.default(visited),
          refresh_closed_reports: false,
          report_versioning: 'report_versioning',
          billing_view_arn: 'billing_view_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportDefinition.new
        data = {}
        data['ReportName'] = stub[:report_name] unless stub[:report_name].nil?
        data['TimeUnit'] = stub[:time_unit] unless stub[:time_unit].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['Compression'] = stub[:compression] unless stub[:compression].nil?
        data['AdditionalSchemaElements'] = SchemaElementList.stub(stub[:additional_schema_elements]) unless stub[:additional_schema_elements].nil?
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3Prefix'] = stub[:s3_prefix] unless stub[:s3_prefix].nil?
        data['S3Region'] = stub[:s3_region] unless stub[:s3_region].nil?
        data['AdditionalArtifacts'] = AdditionalArtifactList.stub(stub[:additional_artifacts]) unless stub[:additional_artifacts].nil?
        data['RefreshClosedReports'] = stub[:refresh_closed_reports] unless stub[:refresh_closed_reports].nil?
        data['ReportVersioning'] = stub[:report_versioning] unless stub[:report_versioning].nil?
        data['BillingViewArn'] = stub[:billing_view_arn] unless stub[:billing_view_arn].nil?
        data
      end
    end

    # List Stubber for AdditionalArtifactList
    class AdditionalArtifactList
      def self.default(visited=[])
        return nil if visited.include?('AdditionalArtifactList')
        visited = visited + ['AdditionalArtifactList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SchemaElementList
    class SchemaElementList
      def self.default(visited=[])
        return nil if visited.include?('SchemaElementList')
        visited = visited + ['SchemaElementList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ModifyReportDefinition
    class ModifyReportDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutReportDefinition
    class PutReportDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
