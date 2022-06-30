# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ApplicationInsights
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationComponent, context: context)
        type = Types::ApplicationComponent.new
        type.component_name = params[:component_name]
        type.component_remarks = params[:component_remarks]
        type.resource_type = params[:resource_type]
        type.os_type = params[:os_type]
        type.tier = params[:tier]
        type.monitor = params[:monitor]
        type.detected_workload = DetectedWorkload.build(params[:detected_workload], context: "#{context}[:detected_workload]") unless params[:detected_workload].nil?
        type
      end
    end

    module ApplicationComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationInfo, context: context)
        type = Types::ApplicationInfo.new
        type.resource_group_name = params[:resource_group_name]
        type.life_cycle = params[:life_cycle]
        type.ops_item_sns_topic_arn = params[:ops_item_sns_topic_arn]
        type.ops_center_enabled = params[:ops_center_enabled]
        type.cwe_monitor_enabled = params[:cwe_monitor_enabled]
        type.remarks = params[:remarks]
        type.auto_config_enabled = params[:auto_config_enabled]
        type.discovery_type = params[:discovery_type]
        type
      end
    end

    module ApplicationInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ConfigurationEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationEvent, context: context)
        type = Types::ConfigurationEvent.new
        type.monitored_resource_arn = params[:monitored_resource_arn]
        type.event_status = params[:event_status]
        type.event_resource_type = params[:event_resource_type]
        type.event_time = params[:event_time]
        type.event_detail = params[:event_detail]
        type.event_resource_name = params[:event_resource_name]
        type
      end
    end

    module ConfigurationEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.resource_group_name = params[:resource_group_name]
        type.ops_center_enabled = params[:ops_center_enabled]
        type.cwe_monitor_enabled = params[:cwe_monitor_enabled]
        type.ops_item_sns_topic_arn = params[:ops_item_sns_topic_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.auto_config_enabled = params[:auto_config_enabled]
        type.auto_create = params[:auto_create]
        type.grouping_type = params[:grouping_type]
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_info = ApplicationInfo.build(params[:application_info], context: "#{context}[:application_info]") unless params[:application_info].nil?
        type
      end
    end

    module CreateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentInput, context: context)
        type = Types::CreateComponentInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type.resource_list = ResourceList.build(params[:resource_list], context: "#{context}[:resource_list]") unless params[:resource_list].nil?
        type
      end
    end

    module CreateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentOutput, context: context)
        type = Types::CreateComponentOutput.new
        type
      end
    end

    module CreateLogPatternInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogPatternInput, context: context)
        type = Types::CreateLogPatternInput.new
        type.resource_group_name = params[:resource_group_name]
        type.pattern_set_name = params[:pattern_set_name]
        type.pattern_name = params[:pattern_name]
        type.pattern = params[:pattern]
        type.rank = params[:rank]
        type
      end
    end

    module CreateLogPatternOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogPatternOutput, context: context)
        type = Types::CreateLogPatternOutput.new
        type.log_pattern = LogPattern.build(params[:log_pattern], context: "#{context}[:log_pattern]") unless params[:log_pattern].nil?
        type.resource_group_name = params[:resource_group_name]
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.resource_group_name = params[:resource_group_name]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DeleteComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentInput, context: context)
        type = Types::DeleteComponentInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type
      end
    end

    module DeleteComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentOutput, context: context)
        type = Types::DeleteComponentOutput.new
        type
      end
    end

    module DeleteLogPatternInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogPatternInput, context: context)
        type = Types::DeleteLogPatternInput.new
        type.resource_group_name = params[:resource_group_name]
        type.pattern_set_name = params[:pattern_set_name]
        type.pattern_name = params[:pattern_name]
        type
      end
    end

    module DeleteLogPatternOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogPatternOutput, context: context)
        type = Types::DeleteLogPatternOutput.new
        type
      end
    end

    module DescribeApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInput, context: context)
        type = Types::DescribeApplicationInput.new
        type.resource_group_name = params[:resource_group_name]
        type
      end
    end

    module DescribeApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationOutput, context: context)
        type = Types::DescribeApplicationOutput.new
        type.application_info = ApplicationInfo.build(params[:application_info], context: "#{context}[:application_info]") unless params[:application_info].nil?
        type
      end
    end

    module DescribeComponentConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentConfigurationInput, context: context)
        type = Types::DescribeComponentConfigurationInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type
      end
    end

    module DescribeComponentConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentConfigurationOutput, context: context)
        type = Types::DescribeComponentConfigurationOutput.new
        type.monitor = params[:monitor]
        type.tier = params[:tier]
        type.component_configuration = params[:component_configuration]
        type
      end
    end

    module DescribeComponentConfigurationRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentConfigurationRecommendationInput, context: context)
        type = Types::DescribeComponentConfigurationRecommendationInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type.tier = params[:tier]
        type
      end
    end

    module DescribeComponentConfigurationRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentConfigurationRecommendationOutput, context: context)
        type = Types::DescribeComponentConfigurationRecommendationOutput.new
        type.component_configuration = params[:component_configuration]
        type
      end
    end

    module DescribeComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentInput, context: context)
        type = Types::DescribeComponentInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type
      end
    end

    module DescribeComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentOutput, context: context)
        type = Types::DescribeComponentOutput.new
        type.application_component = ApplicationComponent.build(params[:application_component], context: "#{context}[:application_component]") unless params[:application_component].nil?
        type.resource_list = ResourceList.build(params[:resource_list], context: "#{context}[:resource_list]") unless params[:resource_list].nil?
        type
      end
    end

    module DescribeLogPatternInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLogPatternInput, context: context)
        type = Types::DescribeLogPatternInput.new
        type.resource_group_name = params[:resource_group_name]
        type.pattern_set_name = params[:pattern_set_name]
        type.pattern_name = params[:pattern_name]
        type
      end
    end

    module DescribeLogPatternOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLogPatternOutput, context: context)
        type = Types::DescribeLogPatternOutput.new
        type.resource_group_name = params[:resource_group_name]
        type.log_pattern = LogPattern.build(params[:log_pattern], context: "#{context}[:log_pattern]") unless params[:log_pattern].nil?
        type
      end
    end

    module DescribeObservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObservationInput, context: context)
        type = Types::DescribeObservationInput.new
        type.observation_id = params[:observation_id]
        type
      end
    end

    module DescribeObservationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObservationOutput, context: context)
        type = Types::DescribeObservationOutput.new
        type.observation = Observation.build(params[:observation], context: "#{context}[:observation]") unless params[:observation].nil?
        type
      end
    end

    module DescribeProblemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProblemInput, context: context)
        type = Types::DescribeProblemInput.new
        type.problem_id = params[:problem_id]
        type
      end
    end

    module DescribeProblemObservationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProblemObservationsInput, context: context)
        type = Types::DescribeProblemObservationsInput.new
        type.problem_id = params[:problem_id]
        type
      end
    end

    module DescribeProblemObservationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProblemObservationsOutput, context: context)
        type = Types::DescribeProblemObservationsOutput.new
        type.related_observations = RelatedObservations.build(params[:related_observations], context: "#{context}[:related_observations]") unless params[:related_observations].nil?
        type
      end
    end

    module DescribeProblemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProblemOutput, context: context)
        type = Types::DescribeProblemOutput.new
        type.problem = Problem.build(params[:problem], context: "#{context}[:problem]") unless params[:problem].nil?
        type
      end
    end

    module DetectedWorkload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = WorkloadMetaData.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Feedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
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

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.application_info_list = ApplicationInfoList.build(params[:application_info_list], context: "#{context}[:application_info_list]") unless params[:application_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsInput, context: context)
        type = Types::ListComponentsInput.new
        type.resource_group_name = params[:resource_group_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsOutput, context: context)
        type = Types::ListComponentsOutput.new
        type.application_component_list = ApplicationComponentList.build(params[:application_component_list], context: "#{context}[:application_component_list]") unless params[:application_component_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationHistoryInput, context: context)
        type = Types::ListConfigurationHistoryInput.new
        type.resource_group_name = params[:resource_group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.event_status = params[:event_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationHistoryOutput, context: context)
        type = Types::ListConfigurationHistoryOutput.new
        type.event_list = ConfigurationEventList.build(params[:event_list], context: "#{context}[:event_list]") unless params[:event_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLogPatternSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLogPatternSetsInput, context: context)
        type = Types::ListLogPatternSetsInput.new
        type.resource_group_name = params[:resource_group_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLogPatternSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLogPatternSetsOutput, context: context)
        type = Types::ListLogPatternSetsOutput.new
        type.resource_group_name = params[:resource_group_name]
        type.log_pattern_sets = LogPatternSetList.build(params[:log_pattern_sets], context: "#{context}[:log_pattern_sets]") unless params[:log_pattern_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLogPatternsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLogPatternsInput, context: context)
        type = Types::ListLogPatternsInput.new
        type.resource_group_name = params[:resource_group_name]
        type.pattern_set_name = params[:pattern_set_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLogPatternsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLogPatternsOutput, context: context)
        type = Types::ListLogPatternsOutput.new
        type.resource_group_name = params[:resource_group_name]
        type.log_patterns = LogPatternList.build(params[:log_patterns], context: "#{context}[:log_patterns]") unless params[:log_patterns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProblemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProblemsInput, context: context)
        type = Types::ListProblemsInput.new
        type.resource_group_name = params[:resource_group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.component_name = params[:component_name]
        type
      end
    end

    module ListProblemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProblemsOutput, context: context)
        type = Types::ListProblemsOutput.new
        type.problem_list = ProblemList.build(params[:problem_list], context: "#{context}[:problem_list]") unless params[:problem_list].nil?
        type.next_token = params[:next_token]
        type.resource_group_name = params[:resource_group_name]
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogPattern
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogPattern, context: context)
        type = Types::LogPattern.new
        type.pattern_set_name = params[:pattern_set_name]
        type.pattern_name = params[:pattern_name]
        type.pattern = params[:pattern]
        type.rank = params[:rank]
        type
      end
    end

    module LogPatternList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogPattern.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogPatternSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Observation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Observation, context: context)
        type = Types::Observation.new
        type.id = params[:id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.source_type = params[:source_type]
        type.source_arn = params[:source_arn]
        type.log_group = params[:log_group]
        type.line_time = params[:line_time]
        type.log_text = params[:log_text]
        type.log_filter = params[:log_filter]
        type.metric_namespace = params[:metric_namespace]
        type.metric_name = params[:metric_name]
        type.unit = params[:unit]
        type.value = params[:value]
        type.cloud_watch_event_id = params[:cloud_watch_event_id]
        type.cloud_watch_event_source = params[:cloud_watch_event_source]
        type.cloud_watch_event_detail_type = params[:cloud_watch_event_detail_type]
        type.health_event_arn = params[:health_event_arn]
        type.health_service = params[:health_service]
        type.health_event_type_code = params[:health_event_type_code]
        type.health_event_type_category = params[:health_event_type_category]
        type.health_event_description = params[:health_event_description]
        type.code_deploy_deployment_id = params[:code_deploy_deployment_id]
        type.code_deploy_deployment_group = params[:code_deploy_deployment_group]
        type.code_deploy_state = params[:code_deploy_state]
        type.code_deploy_application = params[:code_deploy_application]
        type.code_deploy_instance_group_id = params[:code_deploy_instance_group_id]
        type.ec2_state = params[:ec2_state]
        type.rds_event_categories = params[:rds_event_categories]
        type.rds_event_message = params[:rds_event_message]
        type.s3_event_name = params[:s3_event_name]
        type.states_execution_arn = params[:states_execution_arn]
        type.states_arn = params[:states_arn]
        type.states_status = params[:states_status]
        type.states_input = params[:states_input]
        type.ebs_event = params[:ebs_event]
        type.ebs_result = params[:ebs_result]
        type.ebs_cause = params[:ebs_cause]
        type.ebs_request_id = params[:ebs_request_id]
        type.x_ray_fault_percent = params[:x_ray_fault_percent]
        type.x_ray_throttle_percent = params[:x_ray_throttle_percent]
        type.x_ray_error_percent = params[:x_ray_error_percent]
        type.x_ray_request_count = params[:x_ray_request_count]
        type.x_ray_request_average_latency = params[:x_ray_request_average_latency]
        type.x_ray_node_name = params[:x_ray_node_name]
        type.x_ray_node_type = params[:x_ray_node_type]
        type
      end
    end

    module ObservationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Observation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Problem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Problem, context: context)
        type = Types::Problem.new
        type.id = params[:id]
        type.title = params[:title]
        type.insights = params[:insights]
        type.status = params[:status]
        type.affected_resource = params[:affected_resource]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.severity_level = params[:severity_level]
        type.resource_group_name = params[:resource_group_name]
        type.feedback = Feedback.build(params[:feedback], context: "#{context}[:feedback]") unless params[:feedback].nil?
        type.recurring_count = params[:recurring_count]
        type.last_recurrence_time = params[:last_recurrence_time]
        type
      end
    end

    module ProblemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Problem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelatedObservations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedObservations, context: context)
        type = Types::RelatedObservations.new
        type.observation_list = ObservationList.build(params[:observation_list], context: "#{context}[:observation_list]") unless params[:observation_list].nil?
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagsAlreadyExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagsAlreadyExistException, context: context)
        type = Types::TagsAlreadyExistException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
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

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.resource_group_name = params[:resource_group_name]
        type.ops_center_enabled = params[:ops_center_enabled]
        type.cwe_monitor_enabled = params[:cwe_monitor_enabled]
        type.ops_item_sns_topic_arn = params[:ops_item_sns_topic_arn]
        type.remove_sns_topic = params[:remove_sns_topic]
        type.auto_config_enabled = params[:auto_config_enabled]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application_info = ApplicationInfo.build(params[:application_info], context: "#{context}[:application_info]") unless params[:application_info].nil?
        type
      end
    end

    module UpdateComponentConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentConfigurationInput, context: context)
        type = Types::UpdateComponentConfigurationInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type.monitor = params[:monitor]
        type.tier = params[:tier]
        type.component_configuration = params[:component_configuration]
        type.auto_config_enabled = params[:auto_config_enabled]
        type
      end
    end

    module UpdateComponentConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentConfigurationOutput, context: context)
        type = Types::UpdateComponentConfigurationOutput.new
        type
      end
    end

    module UpdateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentInput, context: context)
        type = Types::UpdateComponentInput.new
        type.resource_group_name = params[:resource_group_name]
        type.component_name = params[:component_name]
        type.new_component_name = params[:new_component_name]
        type.resource_list = ResourceList.build(params[:resource_list], context: "#{context}[:resource_list]") unless params[:resource_list].nil?
        type
      end
    end

    module UpdateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentOutput, context: context)
        type = Types::UpdateComponentOutput.new
        type
      end
    end

    module UpdateLogPatternInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLogPatternInput, context: context)
        type = Types::UpdateLogPatternInput.new
        type.resource_group_name = params[:resource_group_name]
        type.pattern_set_name = params[:pattern_set_name]
        type.pattern_name = params[:pattern_name]
        type.pattern = params[:pattern]
        type.rank = params[:rank]
        type
      end
    end

    module UpdateLogPatternOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLogPatternOutput, context: context)
        type = Types::UpdateLogPatternOutput.new
        type.resource_group_name = params[:resource_group_name]
        type.log_pattern = LogPattern.build(params[:log_pattern], context: "#{context}[:log_pattern]") unless params[:log_pattern].nil?
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

    module WorkloadMetaData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
