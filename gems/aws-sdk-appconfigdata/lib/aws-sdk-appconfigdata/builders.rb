# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfigData
  module Builders

    # Operation Builder for GetLatestConfiguration
    class GetLatestConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/configuration')
        params = Hearth::Query::ParamList.new
        params['configuration_token'] = input[:configuration_token].to_s unless input[:configuration_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartConfigurationSession
    class StartConfigurationSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/configurationsessions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ApplicationIdentifier'] = input[:application_identifier] unless input[:application_identifier].nil?
        data['EnvironmentIdentifier'] = input[:environment_identifier] unless input[:environment_identifier].nil?
        data['ConfigurationProfileIdentifier'] = input[:configuration_profile_identifier] unless input[:configuration_profile_identifier].nil?
        data['RequiredMinimumPollIntervalInSeconds'] = input[:required_minimum_poll_interval_in_seconds] unless input[:required_minimum_poll_interval_in_seconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
