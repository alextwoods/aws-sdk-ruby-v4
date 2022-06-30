# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IotDeviceAdvisor
  module Builders

    # Operation Builder for CreateSuiteDefinition
    class CreateSuiteDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/suiteDefinitions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['suiteDefinitionConfiguration'] = Builders::SuiteDefinitionConfiguration.build(input[:suite_definition_configuration]) unless input[:suite_definition_configuration].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SuiteDefinitionConfiguration
    class SuiteDefinitionConfiguration
      def self.build(input)
        data = {}
        data['suiteDefinitionName'] = input[:suite_definition_name] unless input[:suite_definition_name].nil?
        data['devices'] = Builders::DeviceUnderTestList.build(input[:devices]) unless input[:devices].nil?
        data['intendedForQualification'] = input[:intended_for_qualification] unless input[:intended_for_qualification].nil?
        data['rootGroup'] = input[:root_group] unless input[:root_group].nil?
        data['devicePermissionRoleArn'] = input[:device_permission_role_arn] unless input[:device_permission_role_arn].nil?
        data
      end
    end

    # List Builder for DeviceUnderTestList
    class DeviceUnderTestList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DeviceUnderTest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeviceUnderTest
    class DeviceUnderTest
      def self.build(input)
        data = {}
        data['thingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteSuiteDefinition
    class DeleteSuiteDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEndpoint
    class GetEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/endpoint')
        params = Hearth::Query::ParamList.new
        params['thingArn'] = input[:thing_arn].to_s unless input[:thing_arn].nil?
        params['certificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSuiteDefinition
    class GetSuiteDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['suiteDefinitionVersion'] = input[:suite_definition_version].to_s unless input[:suite_definition_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSuiteRun
    class GetSuiteRun
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        if input[:suite_run_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s/suiteRuns/%<suiteRunId>s',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s),
            suiteRunId: Hearth::HTTP.uri_escape(input[:suite_run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSuiteRunReport
    class GetSuiteRunReport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        if input[:suite_run_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s/suiteRuns/%<suiteRunId>s/report',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s),
            suiteRunId: Hearth::HTTP.uri_escape(input[:suite_run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSuiteDefinitions
    class ListSuiteDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/suiteDefinitions')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSuiteRuns
    class ListSuiteRuns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/suiteRuns')
        params = Hearth::Query::ParamList.new
        params['suiteDefinitionId'] = input[:suite_definition_id].to_s unless input[:suite_definition_id].nil?
        params['suiteDefinitionVersion'] = input[:suite_definition_version].to_s unless input[:suite_definition_version].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartSuiteRun
    class StartSuiteRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s/suiteRuns',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['suiteDefinitionVersion'] = input[:suite_definition_version] unless input[:suite_definition_version].nil?
        data['suiteRunConfiguration'] = Builders::SuiteRunConfiguration.build(input[:suite_run_configuration]) unless input[:suite_run_configuration].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SuiteRunConfiguration
    class SuiteRunConfiguration
      def self.build(input)
        data = {}
        data['primaryDevice'] = Builders::DeviceUnderTest.build(input[:primary_device]) unless input[:primary_device].nil?
        data['selectedTestList'] = Builders::SelectedTestList.build(input[:selected_test_list]) unless input[:selected_test_list].nil?
        data['parallelRun'] = input[:parallel_run] unless input[:parallel_run].nil?
        data
      end
    end

    # List Builder for SelectedTestList
    class SelectedTestList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StopSuiteRun
    class StopSuiteRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        if input[:suite_run_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s/suiteRuns/%<suiteRunId>s/stop',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s),
            suiteRunId: Hearth::HTTP.uri_escape(input[:suite_run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateSuiteDefinition
    class UpdateSuiteDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:suite_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :suite_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/suiteDefinitions/%<suiteDefinitionId>s',
            suiteDefinitionId: Hearth::HTTP.uri_escape(input[:suite_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['suiteDefinitionConfiguration'] = Builders::SuiteDefinitionConfiguration.build(input[:suite_definition_configuration]) unless input[:suite_definition_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
