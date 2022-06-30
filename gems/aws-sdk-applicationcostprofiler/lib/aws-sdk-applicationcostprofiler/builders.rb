# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ApplicationCostProfiler
  module Builders

    # Operation Builder for DeleteReportDefinition
    class DeleteReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:report_id].to_s.empty?
          raise ArgumentError, "HTTP label :report_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/reportDefinition/%<reportId>s',
            reportId: Hearth::HTTP.uri_escape(input[:report_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReportDefinition
    class GetReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:report_id].to_s.empty?
          raise ArgumentError, "HTTP label :report_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/reportDefinition/%<reportId>s',
            reportId: Hearth::HTTP.uri_escape(input[:report_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportApplicationUsage
    class ImportApplicationUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/importApplicationUsage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceS3Location'] = Builders::SourceS3Location.build(input[:source_s3_location]) unless input[:source_s3_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SourceS3Location
    class SourceS3Location
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['region'] = input[:region] unless input[:region].nil?
        data
      end
    end

    # Operation Builder for ListReportDefinitions
    class ListReportDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/reportDefinition')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutReportDefinition
    class PutReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/reportDefinition')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['reportId'] = input[:report_id] unless input[:report_id].nil?
        data['reportDescription'] = input[:report_description] unless input[:report_description].nil?
        data['reportFrequency'] = input[:report_frequency] unless input[:report_frequency].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['destinationS3Location'] = Builders::S3Location.build(input[:destination_s3_location]) unless input[:destination_s3_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for UpdateReportDefinition
    class UpdateReportDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:report_id].to_s.empty?
          raise ArgumentError, "HTTP label :report_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/reportDefinition/%<reportId>s',
            reportId: Hearth::HTTP.uri_escape(input[:report_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['reportDescription'] = input[:report_description] unless input[:report_description].nil?
        data['reportFrequency'] = input[:report_frequency] unless input[:report_frequency].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['destinationS3Location'] = Builders::S3Location.build(input[:destination_s3_location]) unless input[:destination_s3_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
