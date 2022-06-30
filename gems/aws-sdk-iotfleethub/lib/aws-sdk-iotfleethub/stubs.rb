# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTFleetHub
  module Stubs

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
          application_arn: 'application_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeApplication
    class DescribeApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
          application_arn: 'application_arn',
          application_name: 'application_name',
          application_description: 'application_description',
          application_url: 'application_url',
          application_state: 'application_state',
          application_creation_date: 1,
          application_last_update_date: 1,
          role_arn: 'role_arn',
          sso_client_id: 'sso_client_id',
          error_message: 'error_message',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['applicationDescription'] = stub[:application_description] unless stub[:application_description].nil?
        data['applicationUrl'] = stub[:application_url] unless stub[:application_url].nil?
        data['applicationState'] = stub[:application_state] unless stub[:application_state].nil?
        data['applicationCreationDate'] = stub[:application_creation_date] unless stub[:application_creation_date].nil?
        data['applicationLastUpdateDate'] = stub[:application_last_update_date] unless stub[:application_last_update_date].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ssoClientId'] = stub[:sso_client_id] unless stub[:sso_client_id].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          application_summaries: Stubs::ApplicationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationSummaries'] = Stubs::ApplicationSummaries.stub(stub[:application_summaries]) unless stub[:application_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationSummaries
    class ApplicationSummaries
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummaries')
        visited = visited + ['ApplicationSummaries']
        [
          Stubs::ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          application_id: 'application_id',
          application_name: 'application_name',
          application_description: 'application_description',
          application_url: 'application_url',
          application_creation_date: 1,
          application_last_update_date: 1,
          application_state: 'application_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['applicationDescription'] = stub[:application_description] unless stub[:application_description].nil?
        data['applicationUrl'] = stub[:application_url] unless stub[:application_url].nil?
        data['applicationCreationDate'] = stub[:application_creation_date] unless stub[:application_creation_date].nil?
        data['applicationLastUpdateDate'] = stub[:application_last_update_date] unless stub[:application_last_update_date].nil?
        data['applicationState'] = stub[:application_state] unless stub[:application_state].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end
  end
end
