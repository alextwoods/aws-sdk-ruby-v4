# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationCostProfiler
  module Stubs

    # Operation Stubber for DeleteReportDefinition
    class DeleteReportDefinition
      def self.default(visited=[])
        {
          report_id: 'report_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetReportDefinition
    class GetReportDefinition
      def self.default(visited=[])
        {
          report_id: 'report_id',
          report_description: 'report_description',
          report_frequency: 'report_frequency',
          format: 'format',
          destination_s3_location: S3Location.default(visited),
          created_at: Time.now,
          last_updated: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        data['reportDescription'] = stub[:report_description] unless stub[:report_description].nil?
        data['reportFrequency'] = stub[:report_frequency] unless stub[:report_frequency].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['destinationS3Location'] = Stubs::S3Location.stub(stub[:destination_s3_location]) unless stub[:destination_s3_location].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for ImportApplicationUsage
    class ImportApplicationUsage
      def self.default(visited=[])
        {
          import_id: 'import_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListReportDefinitions
    class ListReportDefinitions
      def self.default(visited=[])
        {
          report_definitions: ReportDefinitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportDefinitions'] = Stubs::ReportDefinitionList.stub(stub[:report_definitions]) unless stub[:report_definitions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::ReportDefinition.stub(element) unless element.nil?
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
          report_id: 'report_id',
          report_description: 'report_description',
          report_frequency: 'report_frequency',
          format: 'format',
          destination_s3_location: S3Location.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportDefinition.new
        data = {}
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        data['reportDescription'] = stub[:report_description] unless stub[:report_description].nil?
        data['reportFrequency'] = stub[:report_frequency] unless stub[:report_frequency].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['destinationS3Location'] = Stubs::S3Location.stub(stub[:destination_s3_location]) unless stub[:destination_s3_location].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for PutReportDefinition
    class PutReportDefinition
      def self.default(visited=[])
        {
          report_id: 'report_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateReportDefinition
    class UpdateReportDefinition
      def self.default(visited=[])
        {
          report_id: 'report_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
