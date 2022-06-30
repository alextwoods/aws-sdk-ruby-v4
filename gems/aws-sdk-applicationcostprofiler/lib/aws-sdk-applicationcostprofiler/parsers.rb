# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ApplicationCostProfiler
  module Parsers

    # Operation Parser for DeleteReportDefinition
    class DeleteReportDefinition
      def self.parse(http_resp)
        data = Types::DeleteReportDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetReportDefinition
    class GetReportDefinition
      def self.parse(http_resp)
        data = Types::GetReportDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data.report_description = map['reportDescription']
        data.report_frequency = map['reportFrequency']
        data.format = map['format']
        data.destination_s3_location = (Parsers::S3Location.parse(map['destinationS3Location']) unless map['destinationS3Location'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.prefix = map['prefix']
        return data
      end
    end

    # Operation Parser for ImportApplicationUsage
    class ImportApplicationUsage
      def self.parse(http_resp)
        data = Types::ImportApplicationUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.import_id = map['importId']
        data
      end
    end

    # Operation Parser for ListReportDefinitions
    class ListReportDefinitions
      def self.parse(http_resp)
        data = Types::ListReportDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_definitions = (Parsers::ReportDefinitionList.parse(map['reportDefinitions']) unless map['reportDefinitions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ReportDefinitionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReportDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReportDefinition
      def self.parse(map)
        data = Types::ReportDefinition.new
        data.report_id = map['reportId']
        data.report_description = map['reportDescription']
        data.report_frequency = map['reportFrequency']
        data.format = map['format']
        data.destination_s3_location = (Parsers::S3Location.parse(map['destinationS3Location']) unless map['destinationS3Location'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for PutReportDefinition
    class PutReportDefinition
      def self.parse(http_resp)
        data = Types::PutReportDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for UpdateReportDefinition
    class UpdateReportDefinition
      def self.parse(http_resp)
        data = Types::UpdateReportDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data
      end
    end
  end
end
