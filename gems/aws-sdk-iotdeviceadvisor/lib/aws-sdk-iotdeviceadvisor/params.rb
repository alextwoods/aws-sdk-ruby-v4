# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IotDeviceAdvisor
  module Params

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateSuiteDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSuiteDefinitionInput, context: context)
        type = Types::CreateSuiteDefinitionInput.new
        type.suite_definition_configuration = SuiteDefinitionConfiguration.build(params[:suite_definition_configuration], context: "#{context}[:suite_definition_configuration]") unless params[:suite_definition_configuration].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSuiteDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSuiteDefinitionOutput, context: context)
        type = Types::CreateSuiteDefinitionOutput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_arn = params[:suite_definition_arn]
        type.suite_definition_name = params[:suite_definition_name]
        type.created_at = params[:created_at]
        type
      end
    end

    module DeleteSuiteDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSuiteDefinitionInput, context: context)
        type = Types::DeleteSuiteDefinitionInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type
      end
    end

    module DeleteSuiteDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSuiteDefinitionOutput, context: context)
        type = Types::DeleteSuiteDefinitionOutput.new
        type
      end
    end

    module DeviceUnderTest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceUnderTest, context: context)
        type = Types::DeviceUnderTest.new
        type.thing_arn = params[:thing_arn]
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module DeviceUnderTestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceUnderTest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEndpointInput, context: context)
        type = Types::GetEndpointInput.new
        type.thing_arn = params[:thing_arn]
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module GetEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEndpointOutput, context: context)
        type = Types::GetEndpointOutput.new
        type.endpoint = params[:endpoint]
        type
      end
    end

    module GetSuiteDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteDefinitionInput, context: context)
        type = Types::GetSuiteDefinitionInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_version = params[:suite_definition_version]
        type
      end
    end

    module GetSuiteDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteDefinitionOutput, context: context)
        type = Types::GetSuiteDefinitionOutput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_arn = params[:suite_definition_arn]
        type.suite_definition_version = params[:suite_definition_version]
        type.latest_version = params[:latest_version]
        type.suite_definition_configuration = SuiteDefinitionConfiguration.build(params[:suite_definition_configuration], context: "#{context}[:suite_definition_configuration]") unless params[:suite_definition_configuration].nil?
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetSuiteRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteRunInput, context: context)
        type = Types::GetSuiteRunInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_run_id = params[:suite_run_id]
        type
      end
    end

    module GetSuiteRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteRunOutput, context: context)
        type = Types::GetSuiteRunOutput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_version = params[:suite_definition_version]
        type.suite_run_id = params[:suite_run_id]
        type.suite_run_arn = params[:suite_run_arn]
        type.suite_run_configuration = SuiteRunConfiguration.build(params[:suite_run_configuration], context: "#{context}[:suite_run_configuration]") unless params[:suite_run_configuration].nil?
        type.test_result = TestResult.build(params[:test_result], context: "#{context}[:test_result]") unless params[:test_result].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status = params[:status]
        type.error_reason = params[:error_reason]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetSuiteRunReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteRunReportInput, context: context)
        type = Types::GetSuiteRunReportInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_run_id = params[:suite_run_id]
        type
      end
    end

    module GetSuiteRunReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteRunReportOutput, context: context)
        type = Types::GetSuiteRunReportOutput.new
        type.qualification_report_download_url = params[:qualification_report_download_url]
        type
      end
    end

    module GroupResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupResult, context: context)
        type = Types::GroupResult.new
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.tests = TestCaseRuns.build(params[:tests], context: "#{context}[:tests]") unless params[:tests].nil?
        type
      end
    end

    module GroupResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListSuiteDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuiteDefinitionsInput, context: context)
        type = Types::ListSuiteDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSuiteDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuiteDefinitionsOutput, context: context)
        type = Types::ListSuiteDefinitionsOutput.new
        type.suite_definition_information_list = SuiteDefinitionInformationList.build(params[:suite_definition_information_list], context: "#{context}[:suite_definition_information_list]") unless params[:suite_definition_information_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSuiteRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuiteRunsInput, context: context)
        type = Types::ListSuiteRunsInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_version = params[:suite_definition_version]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSuiteRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuiteRunsOutput, context: context)
        type = Types::ListSuiteRunsOutput.new
        type.suite_runs_list = SuiteRunsList.build(params[:suite_runs_list], context: "#{context}[:suite_runs_list]") unless params[:suite_runs_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SelectedTestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartSuiteRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSuiteRunInput, context: context)
        type = Types::StartSuiteRunInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_version = params[:suite_definition_version]
        type.suite_run_configuration = SuiteRunConfiguration.build(params[:suite_run_configuration], context: "#{context}[:suite_run_configuration]") unless params[:suite_run_configuration].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartSuiteRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSuiteRunOutput, context: context)
        type = Types::StartSuiteRunOutput.new
        type.suite_run_id = params[:suite_run_id]
        type.suite_run_arn = params[:suite_run_arn]
        type.created_at = params[:created_at]
        type
      end
    end

    module StopSuiteRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSuiteRunInput, context: context)
        type = Types::StopSuiteRunInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_run_id = params[:suite_run_id]
        type
      end
    end

    module StopSuiteRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSuiteRunOutput, context: context)
        type = Types::StopSuiteRunOutput.new
        type
      end
    end

    module SuiteDefinitionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuiteDefinitionConfiguration, context: context)
        type = Types::SuiteDefinitionConfiguration.new
        type.suite_definition_name = params[:suite_definition_name]
        type.devices = DeviceUnderTestList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.intended_for_qualification = params[:intended_for_qualification]
        type.root_group = params[:root_group]
        type.device_permission_role_arn = params[:device_permission_role_arn]
        type
      end
    end

    module SuiteDefinitionInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuiteDefinitionInformation, context: context)
        type = Types::SuiteDefinitionInformation.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_name = params[:suite_definition_name]
        type.default_devices = DeviceUnderTestList.build(params[:default_devices], context: "#{context}[:default_devices]") unless params[:default_devices].nil?
        type.intended_for_qualification = params[:intended_for_qualification]
        type.created_at = params[:created_at]
        type
      end
    end

    module SuiteDefinitionInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuiteDefinitionInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SuiteRunConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuiteRunConfiguration, context: context)
        type = Types::SuiteRunConfiguration.new
        type.primary_device = DeviceUnderTest.build(params[:primary_device], context: "#{context}[:primary_device]") unless params[:primary_device].nil?
        type.selected_test_list = SelectedTestList.build(params[:selected_test_list], context: "#{context}[:selected_test_list]") unless params[:selected_test_list].nil?
        type.parallel_run = params[:parallel_run]
        type
      end
    end

    module SuiteRunInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuiteRunInformation, context: context)
        type = Types::SuiteRunInformation.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_version = params[:suite_definition_version]
        type.suite_definition_name = params[:suite_definition_name]
        type.suite_run_id = params[:suite_run_id]
        type.created_at = params[:created_at]
        type.started_at = params[:started_at]
        type.end_at = params[:end_at]
        type.status = params[:status]
        type.passed = params[:passed]
        type.failed = params[:failed]
        type
      end
    end

    module SuiteRunsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuiteRunInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TestCaseRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestCaseRun, context: context)
        type = Types::TestCaseRun.new
        type.test_case_run_id = params[:test_case_run_id]
        type.test_case_definition_id = params[:test_case_definition_id]
        type.test_case_definition_name = params[:test_case_definition_name]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.log_url = params[:log_url]
        type.warnings = params[:warnings]
        type.failure = params[:failure]
        type
      end
    end

    module TestCaseRuns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestCaseRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestResult, context: context)
        type = Types::TestResult.new
        type.groups = GroupResultList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateSuiteDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSuiteDefinitionInput, context: context)
        type = Types::UpdateSuiteDefinitionInput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_configuration = SuiteDefinitionConfiguration.build(params[:suite_definition_configuration], context: "#{context}[:suite_definition_configuration]") unless params[:suite_definition_configuration].nil?
        type
      end
    end

    module UpdateSuiteDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSuiteDefinitionOutput, context: context)
        type = Types::UpdateSuiteDefinitionOutput.new
        type.suite_definition_id = params[:suite_definition_id]
        type.suite_definition_arn = params[:suite_definition_arn]
        type.suite_definition_name = params[:suite_definition_name]
        type.suite_definition_version = params[:suite_definition_version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
