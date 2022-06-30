# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IotDeviceAdvisor
  module Parsers

    # Operation Parser for CreateSuiteDefinition
    class CreateSuiteDefinition
      def self.parse(http_resp)
        data = Types::CreateSuiteDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_definition_id = map['suiteDefinitionId']
        data.suite_definition_arn = map['suiteDefinitionArn']
        data.suite_definition_name = map['suiteDefinitionName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
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

    # Operation Parser for DeleteSuiteDefinition
    class DeleteSuiteDefinition
      def self.parse(http_resp)
        data = Types::DeleteSuiteDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetEndpoint
    class GetEndpoint
      def self.parse(http_resp)
        data = Types::GetEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoint = map['endpoint']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetSuiteDefinition
    class GetSuiteDefinition
      def self.parse(http_resp)
        data = Types::GetSuiteDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_definition_id = map['suiteDefinitionId']
        data.suite_definition_arn = map['suiteDefinitionArn']
        data.suite_definition_version = map['suiteDefinitionVersion']
        data.latest_version = map['latestVersion']
        data.suite_definition_configuration = (Parsers::SuiteDefinitionConfiguration.parse(map['suiteDefinitionConfiguration']) unless map['suiteDefinitionConfiguration'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SuiteDefinitionConfiguration
      def self.parse(map)
        data = Types::SuiteDefinitionConfiguration.new
        data.suite_definition_name = map['suiteDefinitionName']
        data.devices = (Parsers::DeviceUnderTestList.parse(map['devices']) unless map['devices'].nil?)
        data.intended_for_qualification = map['intendedForQualification']
        data.root_group = map['rootGroup']
        data.device_permission_role_arn = map['devicePermissionRoleArn']
        return data
      end
    end

    class DeviceUnderTestList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeviceUnderTest.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceUnderTest
      def self.parse(map)
        data = Types::DeviceUnderTest.new
        data.thing_arn = map['thingArn']
        data.certificate_arn = map['certificateArn']
        return data
      end
    end

    # Operation Parser for GetSuiteRun
    class GetSuiteRun
      def self.parse(http_resp)
        data = Types::GetSuiteRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_definition_id = map['suiteDefinitionId']
        data.suite_definition_version = map['suiteDefinitionVersion']
        data.suite_run_id = map['suiteRunId']
        data.suite_run_arn = map['suiteRunArn']
        data.suite_run_configuration = (Parsers::SuiteRunConfiguration.parse(map['suiteRunConfiguration']) unless map['suiteRunConfiguration'].nil?)
        data.test_result = (Parsers::TestResult.parse(map['testResult']) unless map['testResult'].nil?)
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.status = map['status']
        data.error_reason = map['errorReason']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TestResult
      def self.parse(map)
        data = Types::TestResult.new
        data.groups = (Parsers::GroupResultList.parse(map['groups']) unless map['groups'].nil?)
        return data
      end
    end

    class GroupResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupResult
      def self.parse(map)
        data = Types::GroupResult.new
        data.group_id = map['groupId']
        data.group_name = map['groupName']
        data.tests = (Parsers::TestCaseRuns.parse(map['tests']) unless map['tests'].nil?)
        return data
      end
    end

    class TestCaseRuns
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TestCaseRun.parse(value) unless value.nil?
        end
        data
      end
    end

    class TestCaseRun
      def self.parse(map)
        data = Types::TestCaseRun.new
        data.test_case_run_id = map['testCaseRunId']
        data.test_case_definition_id = map['testCaseDefinitionId']
        data.test_case_definition_name = map['testCaseDefinitionName']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.log_url = map['logUrl']
        data.warnings = map['warnings']
        data.failure = map['failure']
        return data
      end
    end

    class SuiteRunConfiguration
      def self.parse(map)
        data = Types::SuiteRunConfiguration.new
        data.primary_device = (Parsers::DeviceUnderTest.parse(map['primaryDevice']) unless map['primaryDevice'].nil?)
        data.selected_test_list = (Parsers::SelectedTestList.parse(map['selectedTestList']) unless map['selectedTestList'].nil?)
        data.parallel_run = map['parallelRun']
        return data
      end
    end

    class SelectedTestList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSuiteRunReport
    class GetSuiteRunReport
      def self.parse(http_resp)
        data = Types::GetSuiteRunReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.qualification_report_download_url = map['qualificationReportDownloadUrl']
        data
      end
    end

    # Operation Parser for ListSuiteDefinitions
    class ListSuiteDefinitions
      def self.parse(http_resp)
        data = Types::ListSuiteDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_definition_information_list = (Parsers::SuiteDefinitionInformationList.parse(map['suiteDefinitionInformationList']) unless map['suiteDefinitionInformationList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SuiteDefinitionInformationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SuiteDefinitionInformation.parse(value) unless value.nil?
        end
        data
      end
    end

    class SuiteDefinitionInformation
      def self.parse(map)
        data = Types::SuiteDefinitionInformation.new
        data.suite_definition_id = map['suiteDefinitionId']
        data.suite_definition_name = map['suiteDefinitionName']
        data.default_devices = (Parsers::DeviceUnderTestList.parse(map['defaultDevices']) unless map['defaultDevices'].nil?)
        data.intended_for_qualification = map['intendedForQualification']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    # Operation Parser for ListSuiteRuns
    class ListSuiteRuns
      def self.parse(http_resp)
        data = Types::ListSuiteRunsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_runs_list = (Parsers::SuiteRunsList.parse(map['suiteRunsList']) unless map['suiteRunsList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SuiteRunsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SuiteRunInformation.parse(value) unless value.nil?
        end
        data
      end
    end

    class SuiteRunInformation
      def self.parse(map)
        data = Types::SuiteRunInformation.new
        data.suite_definition_id = map['suiteDefinitionId']
        data.suite_definition_version = map['suiteDefinitionVersion']
        data.suite_definition_name = map['suiteDefinitionName']
        data.suite_run_id = map['suiteRunId']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.end_at = Time.at(map['endAt'].to_i) if map['endAt']
        data.status = map['status']
        data.passed = map['passed']
        data.failed = map['failed']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for StartSuiteRun
    class StartSuiteRun
      def self.parse(http_resp)
        data = Types::StartSuiteRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_run_id = map['suiteRunId']
        data.suite_run_arn = map['suiteRunArn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StopSuiteRun
    class StopSuiteRun
      def self.parse(http_resp)
        data = Types::StopSuiteRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateSuiteDefinition
    class UpdateSuiteDefinition
      def self.parse(http_resp)
        data = Types::UpdateSuiteDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suite_definition_id = map['suiteDefinitionId']
        data.suite_definition_arn = map['suiteDefinitionArn']
        data.suite_definition_name = map['suiteDefinitionName']
        data.suite_definition_version = map['suiteDefinitionVersion']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data
      end
    end
  end
end
