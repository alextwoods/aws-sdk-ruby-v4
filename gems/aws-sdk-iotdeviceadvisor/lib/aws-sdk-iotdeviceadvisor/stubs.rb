# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::IotDeviceAdvisor
  module Stubs

    # Operation Stubber for CreateSuiteDefinition
    class CreateSuiteDefinition
      def self.default(visited=[])
        {
          suite_definition_id: 'suite_definition_id',
          suite_definition_arn: 'suite_definition_arn',
          suite_definition_name: 'suite_definition_name',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteDefinitionId'] = stub[:suite_definition_id] unless stub[:suite_definition_id].nil?
        data['suiteDefinitionArn'] = stub[:suite_definition_arn] unless stub[:suite_definition_arn].nil?
        data['suiteDefinitionName'] = stub[:suite_definition_name] unless stub[:suite_definition_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteSuiteDefinition
    class DeleteSuiteDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEndpoint
    class GetEndpoint
      def self.default(visited=[])
        {
          endpoint: 'endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSuiteDefinition
    class GetSuiteDefinition
      def self.default(visited=[])
        {
          suite_definition_id: 'suite_definition_id',
          suite_definition_arn: 'suite_definition_arn',
          suite_definition_version: 'suite_definition_version',
          latest_version: 'latest_version',
          suite_definition_configuration: SuiteDefinitionConfiguration.default(visited),
          created_at: Time.now,
          last_modified_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteDefinitionId'] = stub[:suite_definition_id] unless stub[:suite_definition_id].nil?
        data['suiteDefinitionArn'] = stub[:suite_definition_arn] unless stub[:suite_definition_arn].nil?
        data['suiteDefinitionVersion'] = stub[:suite_definition_version] unless stub[:suite_definition_version].nil?
        data['latestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['suiteDefinitionConfiguration'] = SuiteDefinitionConfiguration.stub(stub[:suite_definition_configuration]) unless stub[:suite_definition_configuration].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Stubber for SuiteDefinitionConfiguration
    class SuiteDefinitionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SuiteDefinitionConfiguration')
        visited = visited + ['SuiteDefinitionConfiguration']
        {
          suite_definition_name: 'suite_definition_name',
          devices: DeviceUnderTestList.default(visited),
          intended_for_qualification: false,
          root_group: 'root_group',
          device_permission_role_arn: 'device_permission_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuiteDefinitionConfiguration.new
        data = {}
        data['suiteDefinitionName'] = stub[:suite_definition_name] unless stub[:suite_definition_name].nil?
        data['devices'] = DeviceUnderTestList.stub(stub[:devices]) unless stub[:devices].nil?
        data['intendedForQualification'] = stub[:intended_for_qualification] unless stub[:intended_for_qualification].nil?
        data['rootGroup'] = stub[:root_group] unless stub[:root_group].nil?
        data['devicePermissionRoleArn'] = stub[:device_permission_role_arn] unless stub[:device_permission_role_arn].nil?
        data
      end
    end

    # List Stubber for DeviceUnderTestList
    class DeviceUnderTestList
      def self.default(visited=[])
        return nil if visited.include?('DeviceUnderTestList')
        visited = visited + ['DeviceUnderTestList']
        [
          DeviceUnderTest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceUnderTest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceUnderTest
    class DeviceUnderTest
      def self.default(visited=[])
        return nil if visited.include?('DeviceUnderTest')
        visited = visited + ['DeviceUnderTest']
        {
          thing_arn: 'thing_arn',
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceUnderTest.new
        data = {}
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data
      end
    end

    # Operation Stubber for GetSuiteRun
    class GetSuiteRun
      def self.default(visited=[])
        {
          suite_definition_id: 'suite_definition_id',
          suite_definition_version: 'suite_definition_version',
          suite_run_id: 'suite_run_id',
          suite_run_arn: 'suite_run_arn',
          suite_run_configuration: SuiteRunConfiguration.default(visited),
          test_result: TestResult.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          status: 'status',
          error_reason: 'error_reason',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteDefinitionId'] = stub[:suite_definition_id] unless stub[:suite_definition_id].nil?
        data['suiteDefinitionVersion'] = stub[:suite_definition_version] unless stub[:suite_definition_version].nil?
        data['suiteRunId'] = stub[:suite_run_id] unless stub[:suite_run_id].nil?
        data['suiteRunArn'] = stub[:suite_run_arn] unless stub[:suite_run_arn].nil?
        data['suiteRunConfiguration'] = SuiteRunConfiguration.stub(stub[:suite_run_configuration]) unless stub[:suite_run_configuration].nil?
        data['testResult'] = TestResult.stub(stub[:test_result]) unless stub[:test_result].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorReason'] = stub[:error_reason] unless stub[:error_reason].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TestResult
    class TestResult
      def self.default(visited=[])
        return nil if visited.include?('TestResult')
        visited = visited + ['TestResult']
        {
          groups: GroupResultList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TestResult.new
        data = {}
        data['groups'] = GroupResultList.stub(stub[:groups]) unless stub[:groups].nil?
        data
      end
    end

    # List Stubber for GroupResultList
    class GroupResultList
      def self.default(visited=[])
        return nil if visited.include?('GroupResultList')
        visited = visited + ['GroupResultList']
        [
          GroupResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupResult
    class GroupResult
      def self.default(visited=[])
        return nil if visited.include?('GroupResult')
        visited = visited + ['GroupResult']
        {
          group_id: 'group_id',
          group_name: 'group_name',
          tests: TestCaseRuns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupResult.new
        data = {}
        data['groupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['tests'] = TestCaseRuns.stub(stub[:tests]) unless stub[:tests].nil?
        data
      end
    end

    # List Stubber for TestCaseRuns
    class TestCaseRuns
      def self.default(visited=[])
        return nil if visited.include?('TestCaseRuns')
        visited = visited + ['TestCaseRuns']
        [
          TestCaseRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TestCaseRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TestCaseRun
    class TestCaseRun
      def self.default(visited=[])
        return nil if visited.include?('TestCaseRun')
        visited = visited + ['TestCaseRun']
        {
          test_case_run_id: 'test_case_run_id',
          test_case_definition_id: 'test_case_definition_id',
          test_case_definition_name: 'test_case_definition_name',
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
          log_url: 'log_url',
          warnings: 'warnings',
          failure: 'failure',
        }
      end

      def self.stub(stub)
        stub ||= Types::TestCaseRun.new
        data = {}
        data['testCaseRunId'] = stub[:test_case_run_id] unless stub[:test_case_run_id].nil?
        data['testCaseDefinitionId'] = stub[:test_case_definition_id] unless stub[:test_case_definition_id].nil?
        data['testCaseDefinitionName'] = stub[:test_case_definition_name] unless stub[:test_case_definition_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['logUrl'] = stub[:log_url] unless stub[:log_url].nil?
        data['warnings'] = stub[:warnings] unless stub[:warnings].nil?
        data['failure'] = stub[:failure] unless stub[:failure].nil?
        data
      end
    end

    # Structure Stubber for SuiteRunConfiguration
    class SuiteRunConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SuiteRunConfiguration')
        visited = visited + ['SuiteRunConfiguration']
        {
          primary_device: DeviceUnderTest.default(visited),
          selected_test_list: SelectedTestList.default(visited),
          parallel_run: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SuiteRunConfiguration.new
        data = {}
        data['primaryDevice'] = DeviceUnderTest.stub(stub[:primary_device]) unless stub[:primary_device].nil?
        data['selectedTestList'] = SelectedTestList.stub(stub[:selected_test_list]) unless stub[:selected_test_list].nil?
        data['parallelRun'] = stub[:parallel_run] unless stub[:parallel_run].nil?
        data
      end
    end

    # List Stubber for SelectedTestList
    class SelectedTestList
      def self.default(visited=[])
        return nil if visited.include?('SelectedTestList')
        visited = visited + ['SelectedTestList']
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

    # Operation Stubber for GetSuiteRunReport
    class GetSuiteRunReport
      def self.default(visited=[])
        {
          qualification_report_download_url: 'qualification_report_download_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['qualificationReportDownloadUrl'] = stub[:qualification_report_download_url] unless stub[:qualification_report_download_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListSuiteDefinitions
    class ListSuiteDefinitions
      def self.default(visited=[])
        {
          suite_definition_information_list: SuiteDefinitionInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteDefinitionInformationList'] = SuiteDefinitionInformationList.stub(stub[:suite_definition_information_list]) unless stub[:suite_definition_information_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SuiteDefinitionInformationList
    class SuiteDefinitionInformationList
      def self.default(visited=[])
        return nil if visited.include?('SuiteDefinitionInformationList')
        visited = visited + ['SuiteDefinitionInformationList']
        [
          SuiteDefinitionInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SuiteDefinitionInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SuiteDefinitionInformation
    class SuiteDefinitionInformation
      def self.default(visited=[])
        return nil if visited.include?('SuiteDefinitionInformation')
        visited = visited + ['SuiteDefinitionInformation']
        {
          suite_definition_id: 'suite_definition_id',
          suite_definition_name: 'suite_definition_name',
          default_devices: DeviceUnderTestList.default(visited),
          intended_for_qualification: false,
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SuiteDefinitionInformation.new
        data = {}
        data['suiteDefinitionId'] = stub[:suite_definition_id] unless stub[:suite_definition_id].nil?
        data['suiteDefinitionName'] = stub[:suite_definition_name] unless stub[:suite_definition_name].nil?
        data['defaultDevices'] = DeviceUnderTestList.stub(stub[:default_devices]) unless stub[:default_devices].nil?
        data['intendedForQualification'] = stub[:intended_for_qualification] unless stub[:intended_for_qualification].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListSuiteRuns
    class ListSuiteRuns
      def self.default(visited=[])
        {
          suite_runs_list: SuiteRunsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteRunsList'] = SuiteRunsList.stub(stub[:suite_runs_list]) unless stub[:suite_runs_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SuiteRunsList
    class SuiteRunsList
      def self.default(visited=[])
        return nil if visited.include?('SuiteRunsList')
        visited = visited + ['SuiteRunsList']
        [
          SuiteRunInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SuiteRunInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SuiteRunInformation
    class SuiteRunInformation
      def self.default(visited=[])
        return nil if visited.include?('SuiteRunInformation')
        visited = visited + ['SuiteRunInformation']
        {
          suite_definition_id: 'suite_definition_id',
          suite_definition_version: 'suite_definition_version',
          suite_definition_name: 'suite_definition_name',
          suite_run_id: 'suite_run_id',
          created_at: Time.now,
          started_at: Time.now,
          end_at: Time.now,
          status: 'status',
          passed: 1,
          failed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SuiteRunInformation.new
        data = {}
        data['suiteDefinitionId'] = stub[:suite_definition_id] unless stub[:suite_definition_id].nil?
        data['suiteDefinitionVersion'] = stub[:suite_definition_version] unless stub[:suite_definition_version].nil?
        data['suiteDefinitionName'] = stub[:suite_definition_name] unless stub[:suite_definition_name].nil?
        data['suiteRunId'] = stub[:suite_run_id] unless stub[:suite_run_id].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['endAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_at]).to_i unless stub[:end_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['passed'] = stub[:passed] unless stub[:passed].nil?
        data['failed'] = stub[:failed] unless stub[:failed].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartSuiteRun
    class StartSuiteRun
      def self.default(visited=[])
        {
          suite_run_id: 'suite_run_id',
          suite_run_arn: 'suite_run_arn',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteRunId'] = stub[:suite_run_id] unless stub[:suite_run_id].nil?
        data['suiteRunArn'] = stub[:suite_run_arn] unless stub[:suite_run_arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopSuiteRun
    class StopSuiteRun
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for UpdateSuiteDefinition
    class UpdateSuiteDefinition
      def self.default(visited=[])
        {
          suite_definition_id: 'suite_definition_id',
          suite_definition_arn: 'suite_definition_arn',
          suite_definition_name: 'suite_definition_name',
          suite_definition_version: 'suite_definition_version',
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suiteDefinitionId'] = stub[:suite_definition_id] unless stub[:suite_definition_id].nil?
        data['suiteDefinitionArn'] = stub[:suite_definition_arn] unless stub[:suite_definition_arn].nil?
        data['suiteDefinitionName'] = stub[:suite_definition_name] unless stub[:suite_definition_name].nil?
        data['suiteDefinitionVersion'] = stub[:suite_definition_version] unless stub[:suite_definition_version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
