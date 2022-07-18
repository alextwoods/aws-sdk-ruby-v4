# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::IotDeviceAdvisor
  module Validators

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateSuiteDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSuiteDefinitionInput, context: context)
        SuiteDefinitionConfiguration.validate!(input[:suite_definition_configuration], context: "#{context}[:suite_definition_configuration]") unless input[:suite_definition_configuration].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSuiteDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSuiteDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_arn], ::String, context: "#{context}[:suite_definition_arn]")
        Hearth::Validator.validate!(input[:suite_definition_name], ::String, context: "#{context}[:suite_definition_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class DeleteSuiteDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSuiteDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
      end
    end

    class DeleteSuiteDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSuiteDefinitionOutput, context: context)
      end
    end

    class DeviceUnderTest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceUnderTest, context: context)
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class DeviceUnderTestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceUnderTest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEndpointInput, context: context)
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class GetEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
      end
    end

    class GetSuiteDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
      end
    end

    class GetSuiteDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_arn], ::String, context: "#{context}[:suite_definition_arn]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        SuiteDefinitionConfiguration.validate!(input[:suite_definition_configuration], context: "#{context}[:suite_definition_configuration]") unless input[:suite_definition_configuration].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetSuiteRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteRunInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_run_id], ::String, context: "#{context}[:suite_run_id]")
      end
    end

    class GetSuiteRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteRunOutput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
        Hearth::Validator.validate!(input[:suite_run_id], ::String, context: "#{context}[:suite_run_id]")
        Hearth::Validator.validate!(input[:suite_run_arn], ::String, context: "#{context}[:suite_run_arn]")
        SuiteRunConfiguration.validate!(input[:suite_run_configuration], context: "#{context}[:suite_run_configuration]") unless input[:suite_run_configuration].nil?
        TestResult.validate!(input[:test_result], context: "#{context}[:test_result]") unless input[:test_result].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_reason], ::String, context: "#{context}[:error_reason]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetSuiteRunReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteRunReportInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_run_id], ::String, context: "#{context}[:suite_run_id]")
      end
    end

    class GetSuiteRunReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteRunReportOutput, context: context)
        Hearth::Validator.validate!(input[:qualification_report_download_url], ::String, context: "#{context}[:qualification_report_download_url]")
      end
    end

    class GroupResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupResult, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        TestCaseRuns.validate!(input[:tests], context: "#{context}[:tests]") unless input[:tests].nil?
      end
    end

    class GroupResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListSuiteDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuiteDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSuiteDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuiteDefinitionsOutput, context: context)
        SuiteDefinitionInformationList.validate!(input[:suite_definition_information_list], context: "#{context}[:suite_definition_information_list]") unless input[:suite_definition_information_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSuiteRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuiteRunsInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSuiteRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuiteRunsOutput, context: context)
        SuiteRunsList.validate!(input[:suite_runs_list], context: "#{context}[:suite_runs_list]") unless input[:suite_runs_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SelectedTestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartSuiteRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSuiteRunInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
        SuiteRunConfiguration.validate!(input[:suite_run_configuration], context: "#{context}[:suite_run_configuration]") unless input[:suite_run_configuration].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartSuiteRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSuiteRunOutput, context: context)
        Hearth::Validator.validate!(input[:suite_run_id], ::String, context: "#{context}[:suite_run_id]")
        Hearth::Validator.validate!(input[:suite_run_arn], ::String, context: "#{context}[:suite_run_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class StopSuiteRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSuiteRunInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_run_id], ::String, context: "#{context}[:suite_run_id]")
      end
    end

    class StopSuiteRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSuiteRunOutput, context: context)
      end
    end

    class SuiteDefinitionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuiteDefinitionConfiguration, context: context)
        Hearth::Validator.validate!(input[:suite_definition_name], ::String, context: "#{context}[:suite_definition_name]")
        DeviceUnderTestList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:intended_for_qualification], ::TrueClass, ::FalseClass, context: "#{context}[:intended_for_qualification]")
        Hearth::Validator.validate!(input[:root_group], ::String, context: "#{context}[:root_group]")
        Hearth::Validator.validate!(input[:device_permission_role_arn], ::String, context: "#{context}[:device_permission_role_arn]")
      end
    end

    class SuiteDefinitionInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuiteDefinitionInformation, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_name], ::String, context: "#{context}[:suite_definition_name]")
        DeviceUnderTestList.validate!(input[:default_devices], context: "#{context}[:default_devices]") unless input[:default_devices].nil?
        Hearth::Validator.validate!(input[:intended_for_qualification], ::TrueClass, ::FalseClass, context: "#{context}[:intended_for_qualification]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class SuiteDefinitionInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SuiteDefinitionInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SuiteRunConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuiteRunConfiguration, context: context)
        DeviceUnderTest.validate!(input[:primary_device], context: "#{context}[:primary_device]") unless input[:primary_device].nil?
        SelectedTestList.validate!(input[:selected_test_list], context: "#{context}[:selected_test_list]") unless input[:selected_test_list].nil?
        Hearth::Validator.validate!(input[:parallel_run], ::TrueClass, ::FalseClass, context: "#{context}[:parallel_run]")
      end
    end

    class SuiteRunInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuiteRunInformation, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
        Hearth::Validator.validate!(input[:suite_definition_name], ::String, context: "#{context}[:suite_definition_name]")
        Hearth::Validator.validate!(input[:suite_run_id], ::String, context: "#{context}[:suite_run_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:end_at], ::Time, context: "#{context}[:end_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:passed], ::Integer, context: "#{context}[:passed]")
        Hearth::Validator.validate!(input[:failed], ::Integer, context: "#{context}[:failed]")
      end
    end

    class SuiteRunsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SuiteRunInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TestCaseRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestCaseRun, context: context)
        Hearth::Validator.validate!(input[:test_case_run_id], ::String, context: "#{context}[:test_case_run_id]")
        Hearth::Validator.validate!(input[:test_case_definition_id], ::String, context: "#{context}[:test_case_definition_id]")
        Hearth::Validator.validate!(input[:test_case_definition_name], ::String, context: "#{context}[:test_case_definition_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:log_url], ::String, context: "#{context}[:log_url]")
        Hearth::Validator.validate!(input[:warnings], ::String, context: "#{context}[:warnings]")
        Hearth::Validator.validate!(input[:failure], ::String, context: "#{context}[:failure]")
      end
    end

    class TestCaseRuns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TestCaseRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestResult, context: context)
        GroupResultList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateSuiteDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSuiteDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        SuiteDefinitionConfiguration.validate!(input[:suite_definition_configuration], context: "#{context}[:suite_definition_configuration]") unless input[:suite_definition_configuration].nil?
      end
    end

    class UpdateSuiteDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSuiteDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:suite_definition_id], ::String, context: "#{context}[:suite_definition_id]")
        Hearth::Validator.validate!(input[:suite_definition_arn], ::String, context: "#{context}[:suite_definition_arn]")
        Hearth::Validator.validate!(input[:suite_definition_name], ::String, context: "#{context}[:suite_definition_name]")
        Hearth::Validator.validate!(input[:suite_definition_version], ::String, context: "#{context}[:suite_definition_version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
