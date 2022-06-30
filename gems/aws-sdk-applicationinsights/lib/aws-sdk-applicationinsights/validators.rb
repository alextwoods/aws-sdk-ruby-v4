# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationInsights
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationComponent, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_remarks], ::String, context: "#{context}[:component_remarks]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:os_type], ::String, context: "#{context}[:os_type]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:monitor], ::TrueClass, ::FalseClass, context: "#{context}[:monitor]")
        Validators::DetectedWorkload.validate!(input[:detected_workload], context: "#{context}[:detected_workload]") unless input[:detected_workload].nil?
      end
    end

    class ApplicationComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationInfo, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:life_cycle], ::String, context: "#{context}[:life_cycle]")
        Hearth::Validator.validate!(input[:ops_item_sns_topic_arn], ::String, context: "#{context}[:ops_item_sns_topic_arn]")
        Hearth::Validator.validate!(input[:ops_center_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:ops_center_enabled]")
        Hearth::Validator.validate!(input[:cwe_monitor_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cwe_monitor_enabled]")
        Hearth::Validator.validate!(input[:remarks], ::String, context: "#{context}[:remarks]")
        Hearth::Validator.validate!(input[:auto_config_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_config_enabled]")
        Hearth::Validator.validate!(input[:discovery_type], ::String, context: "#{context}[:discovery_type]")
      end
    end

    class ApplicationInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationEvent, context: context)
        Hearth::Validator.validate!(input[:monitored_resource_arn], ::String, context: "#{context}[:monitored_resource_arn]")
        Hearth::Validator.validate!(input[:event_status], ::String, context: "#{context}[:event_status]")
        Hearth::Validator.validate!(input[:event_resource_type], ::String, context: "#{context}[:event_resource_type]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:event_detail], ::String, context: "#{context}[:event_detail]")
        Hearth::Validator.validate!(input[:event_resource_name], ::String, context: "#{context}[:event_resource_name]")
      end
    end

    class ConfigurationEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfigurationEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:ops_center_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:ops_center_enabled]")
        Hearth::Validator.validate!(input[:cwe_monitor_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cwe_monitor_enabled]")
        Hearth::Validator.validate!(input[:ops_item_sns_topic_arn], ::String, context: "#{context}[:ops_item_sns_topic_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:auto_config_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_config_enabled]")
        Hearth::Validator.validate!(input[:auto_create], ::TrueClass, ::FalseClass, context: "#{context}[:auto_create]")
        Hearth::Validator.validate!(input[:grouping_type], ::String, context: "#{context}[:grouping_type]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Validators::ApplicationInfo.validate!(input[:application_info], context: "#{context}[:application_info]") unless input[:application_info].nil?
      end
    end

    class CreateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Validators::ResourceList.validate!(input[:resource_list], context: "#{context}[:resource_list]") unless input[:resource_list].nil?
      end
    end

    class CreateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentOutput, context: context)
      end
    end

    class CreateLogPatternInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogPatternInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:pattern_set_name], ::String, context: "#{context}[:pattern_set_name]")
        Hearth::Validator.validate!(input[:pattern_name], ::String, context: "#{context}[:pattern_name]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
      end
    end

    class CreateLogPatternOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogPatternOutput, context: context)
        Validators::LogPattern.validate!(input[:log_pattern], context: "#{context}[:log_pattern]") unless input[:log_pattern].nil?
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DeleteComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
      end
    end

    class DeleteComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentOutput, context: context)
      end
    end

    class DeleteLogPatternInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogPatternInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:pattern_set_name], ::String, context: "#{context}[:pattern_set_name]")
        Hearth::Validator.validate!(input[:pattern_name], ::String, context: "#{context}[:pattern_name]")
      end
    end

    class DeleteLogPatternOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogPatternOutput, context: context)
      end
    end

    class DescribeApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
      end
    end

    class DescribeApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationOutput, context: context)
        Validators::ApplicationInfo.validate!(input[:application_info], context: "#{context}[:application_info]") unless input[:application_info].nil?
      end
    end

    class DescribeComponentConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
      end
    end

    class DescribeComponentConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:monitor], ::TrueClass, ::FalseClass, context: "#{context}[:monitor]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:component_configuration], ::String, context: "#{context}[:component_configuration]")
      end
    end

    class DescribeComponentConfigurationRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentConfigurationRecommendationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class DescribeComponentConfigurationRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentConfigurationRecommendationOutput, context: context)
        Hearth::Validator.validate!(input[:component_configuration], ::String, context: "#{context}[:component_configuration]")
      end
    end

    class DescribeComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
      end
    end

    class DescribeComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentOutput, context: context)
        Validators::ApplicationComponent.validate!(input[:application_component], context: "#{context}[:application_component]") unless input[:application_component].nil?
        Validators::ResourceList.validate!(input[:resource_list], context: "#{context}[:resource_list]") unless input[:resource_list].nil?
      end
    end

    class DescribeLogPatternInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLogPatternInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:pattern_set_name], ::String, context: "#{context}[:pattern_set_name]")
        Hearth::Validator.validate!(input[:pattern_name], ::String, context: "#{context}[:pattern_name]")
      end
    end

    class DescribeLogPatternOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLogPatternOutput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Validators::LogPattern.validate!(input[:log_pattern], context: "#{context}[:log_pattern]") unless input[:log_pattern].nil?
      end
    end

    class DescribeObservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObservationInput, context: context)
        Hearth::Validator.validate!(input[:observation_id], ::String, context: "#{context}[:observation_id]")
      end
    end

    class DescribeObservationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObservationOutput, context: context)
        Validators::Observation.validate!(input[:observation], context: "#{context}[:observation]") unless input[:observation].nil?
      end
    end

    class DescribeProblemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProblemInput, context: context)
        Hearth::Validator.validate!(input[:problem_id], ::String, context: "#{context}[:problem_id]")
      end
    end

    class DescribeProblemObservationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProblemObservationsInput, context: context)
        Hearth::Validator.validate!(input[:problem_id], ::String, context: "#{context}[:problem_id]")
      end
    end

    class DescribeProblemObservationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProblemObservationsOutput, context: context)
        Validators::RelatedObservations.validate!(input[:related_observations], context: "#{context}[:related_observations]") unless input[:related_observations].nil?
      end
    end

    class DescribeProblemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProblemOutput, context: context)
        Validators::Problem.validate!(input[:problem], context: "#{context}[:problem]") unless input[:problem].nil?
      end
    end

    class DetectedWorkload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::WorkloadMetaData.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Feedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        Validators::ApplicationInfoList.validate!(input[:application_info_list], context: "#{context}[:application_info_list]") unless input[:application_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsOutput, context: context)
        Validators::ApplicationComponentList.validate!(input[:application_component_list], context: "#{context}[:application_component_list]") unless input[:application_component_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationHistoryInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:event_status], ::String, context: "#{context}[:event_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationHistoryOutput, context: context)
        Validators::ConfigurationEventList.validate!(input[:event_list], context: "#{context}[:event_list]") unless input[:event_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLogPatternSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLogPatternSetsInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLogPatternSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLogPatternSetsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Validators::LogPatternSetList.validate!(input[:log_pattern_sets], context: "#{context}[:log_pattern_sets]") unless input[:log_pattern_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLogPatternsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLogPatternsInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:pattern_set_name], ::String, context: "#{context}[:pattern_set_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLogPatternsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLogPatternsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Validators::LogPatternList.validate!(input[:log_patterns], context: "#{context}[:log_patterns]") unless input[:log_patterns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProblemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProblemsInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
      end
    end

    class ListProblemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProblemsOutput, context: context)
        Validators::ProblemList.validate!(input[:problem_list], context: "#{context}[:problem_list]") unless input[:problem_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogPattern
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogPattern, context: context)
        Hearth::Validator.validate!(input[:pattern_set_name], ::String, context: "#{context}[:pattern_set_name]")
        Hearth::Validator.validate!(input[:pattern_name], ::String, context: "#{context}[:pattern_name]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
      end
    end

    class LogPatternList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogPattern.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogPatternSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Observation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Observation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
        Hearth::Validator.validate!(input[:line_time], ::Time, context: "#{context}[:line_time]")
        Hearth::Validator.validate!(input[:log_text], ::String, context: "#{context}[:log_text]")
        Hearth::Validator.validate!(input[:log_filter], ::String, context: "#{context}[:log_filter]")
        Hearth::Validator.validate!(input[:metric_namespace], ::String, context: "#{context}[:metric_namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:cloud_watch_event_id], ::String, context: "#{context}[:cloud_watch_event_id]")
        Hearth::Validator.validate!(input[:cloud_watch_event_source], ::String, context: "#{context}[:cloud_watch_event_source]")
        Hearth::Validator.validate!(input[:cloud_watch_event_detail_type], ::String, context: "#{context}[:cloud_watch_event_detail_type]")
        Hearth::Validator.validate!(input[:health_event_arn], ::String, context: "#{context}[:health_event_arn]")
        Hearth::Validator.validate!(input[:health_service], ::String, context: "#{context}[:health_service]")
        Hearth::Validator.validate!(input[:health_event_type_code], ::String, context: "#{context}[:health_event_type_code]")
        Hearth::Validator.validate!(input[:health_event_type_category], ::String, context: "#{context}[:health_event_type_category]")
        Hearth::Validator.validate!(input[:health_event_description], ::String, context: "#{context}[:health_event_description]")
        Hearth::Validator.validate!(input[:code_deploy_deployment_id], ::String, context: "#{context}[:code_deploy_deployment_id]")
        Hearth::Validator.validate!(input[:code_deploy_deployment_group], ::String, context: "#{context}[:code_deploy_deployment_group]")
        Hearth::Validator.validate!(input[:code_deploy_state], ::String, context: "#{context}[:code_deploy_state]")
        Hearth::Validator.validate!(input[:code_deploy_application], ::String, context: "#{context}[:code_deploy_application]")
        Hearth::Validator.validate!(input[:code_deploy_instance_group_id], ::String, context: "#{context}[:code_deploy_instance_group_id]")
        Hearth::Validator.validate!(input[:ec2_state], ::String, context: "#{context}[:ec2_state]")
        Hearth::Validator.validate!(input[:rds_event_categories], ::String, context: "#{context}[:rds_event_categories]")
        Hearth::Validator.validate!(input[:rds_event_message], ::String, context: "#{context}[:rds_event_message]")
        Hearth::Validator.validate!(input[:s3_event_name], ::String, context: "#{context}[:s3_event_name]")
        Hearth::Validator.validate!(input[:states_execution_arn], ::String, context: "#{context}[:states_execution_arn]")
        Hearth::Validator.validate!(input[:states_arn], ::String, context: "#{context}[:states_arn]")
        Hearth::Validator.validate!(input[:states_status], ::String, context: "#{context}[:states_status]")
        Hearth::Validator.validate!(input[:states_input], ::String, context: "#{context}[:states_input]")
        Hearth::Validator.validate!(input[:ebs_event], ::String, context: "#{context}[:ebs_event]")
        Hearth::Validator.validate!(input[:ebs_result], ::String, context: "#{context}[:ebs_result]")
        Hearth::Validator.validate!(input[:ebs_cause], ::String, context: "#{context}[:ebs_cause]")
        Hearth::Validator.validate!(input[:ebs_request_id], ::String, context: "#{context}[:ebs_request_id]")
        Hearth::Validator.validate!(input[:x_ray_fault_percent], ::Integer, context: "#{context}[:x_ray_fault_percent]")
        Hearth::Validator.validate!(input[:x_ray_throttle_percent], ::Integer, context: "#{context}[:x_ray_throttle_percent]")
        Hearth::Validator.validate!(input[:x_ray_error_percent], ::Integer, context: "#{context}[:x_ray_error_percent]")
        Hearth::Validator.validate!(input[:x_ray_request_count], ::Integer, context: "#{context}[:x_ray_request_count]")
        Hearth::Validator.validate!(input[:x_ray_request_average_latency], ::Integer, context: "#{context}[:x_ray_request_average_latency]")
        Hearth::Validator.validate!(input[:x_ray_node_name], ::String, context: "#{context}[:x_ray_node_name]")
        Hearth::Validator.validate!(input[:x_ray_node_type], ::String, context: "#{context}[:x_ray_node_type]")
      end
    end

    class ObservationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Observation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Problem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Problem, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:insights], ::String, context: "#{context}[:insights]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:affected_resource], ::String, context: "#{context}[:affected_resource]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:severity_level], ::String, context: "#{context}[:severity_level]")
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Validators::Feedback.validate!(input[:feedback], context: "#{context}[:feedback]") unless input[:feedback].nil?
        Hearth::Validator.validate!(input[:recurring_count], ::Integer, context: "#{context}[:recurring_count]")
        Hearth::Validator.validate!(input[:last_recurrence_time], ::Time, context: "#{context}[:last_recurrence_time]")
      end
    end

    class ProblemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Problem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelatedObservations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelatedObservations, context: context)
        Validators::ObservationList.validate!(input[:observation_list], context: "#{context}[:observation_list]") unless input[:observation_list].nil?
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsAlreadyExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagsAlreadyExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:ops_center_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:ops_center_enabled]")
        Hearth::Validator.validate!(input[:cwe_monitor_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cwe_monitor_enabled]")
        Hearth::Validator.validate!(input[:ops_item_sns_topic_arn], ::String, context: "#{context}[:ops_item_sns_topic_arn]")
        Hearth::Validator.validate!(input[:remove_sns_topic], ::TrueClass, ::FalseClass, context: "#{context}[:remove_sns_topic]")
        Hearth::Validator.validate!(input[:auto_config_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_config_enabled]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Validators::ApplicationInfo.validate!(input[:application_info], context: "#{context}[:application_info]") unless input[:application_info].nil?
      end
    end

    class UpdateComponentConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:monitor], ::TrueClass, ::FalseClass, context: "#{context}[:monitor]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:component_configuration], ::String, context: "#{context}[:component_configuration]")
        Hearth::Validator.validate!(input[:auto_config_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_config_enabled]")
      end
    end

    class UpdateComponentConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentConfigurationOutput, context: context)
      end
    end

    class UpdateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:new_component_name], ::String, context: "#{context}[:new_component_name]")
        Validators::ResourceList.validate!(input[:resource_list], context: "#{context}[:resource_list]") unless input[:resource_list].nil?
      end
    end

    class UpdateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentOutput, context: context)
      end
    end

    class UpdateLogPatternInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLogPatternInput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:pattern_set_name], ::String, context: "#{context}[:pattern_set_name]")
        Hearth::Validator.validate!(input[:pattern_name], ::String, context: "#{context}[:pattern_name]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
      end
    end

    class UpdateLogPatternOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLogPatternOutput, context: context)
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Validators::LogPattern.validate!(input[:log_pattern], context: "#{context}[:log_pattern]") unless input[:log_pattern].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WorkloadMetaData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
