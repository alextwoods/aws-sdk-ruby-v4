# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfigData
  module Stubs

    # Operation Stubber for GetLatestConfiguration
    class GetLatestConfiguration
      def self.default(visited=[])
        {
          next_poll_configuration_token: 'next_poll_configuration_token',
          next_poll_interval_in_seconds: 1,
          content_type: 'content_type',
          configuration: 'configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Next-Poll-Configuration-Token'] = stub[:next_poll_configuration_token] unless stub[:next_poll_configuration_token].nil? || stub[:next_poll_configuration_token].empty?
        http_resp.headers['Next-Poll-Interval-In-Seconds'] = stub[:next_poll_interval_in_seconds].to_s unless stub[:next_poll_interval_in_seconds].nil?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:configuration] || '')
      end
    end

    # Operation Stubber for StartConfigurationSession
    class StartConfigurationSession
      def self.default(visited=[])
        {
          initial_configuration_token: 'initial_configuration_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['InitialConfigurationToken'] = stub[:initial_configuration_token] unless stub[:initial_configuration_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
