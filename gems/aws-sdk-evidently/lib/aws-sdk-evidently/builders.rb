# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Evidently
  module Builders

    # Operation Builder for BatchEvaluateFeature
    class BatchEvaluateFeature
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/evaluations',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['requests'] = EvaluationRequestsList.build(input[:requests]) unless input[:requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EvaluationRequestsList
    class EvaluationRequestsList
      def self.build(input)
        data = []
        input.each do |element|
          data << EvaluationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EvaluationRequest
    class EvaluationRequest
      def self.build(input)
        data = {}
        data['feature'] = input[:feature] unless input[:feature].nil?
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['evaluationContext'] = input[:evaluation_context] unless input[:evaluation_context].nil?
        data
      end
    end

    # Operation Builder for CreateExperiment
    class CreateExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['treatments'] = TreatmentConfigList.build(input[:treatments]) unless input[:treatments].nil?
        data['metricGoals'] = MetricGoalConfigList.build(input[:metric_goals]) unless input[:metric_goals].nil?
        data['randomizationSalt'] = input[:randomization_salt] unless input[:randomization_salt].nil?
        data['samplingRate'] = input[:sampling_rate] unless input[:sampling_rate].nil?
        data['onlineAbConfig'] = OnlineAbConfig.build(input[:online_ab_config]) unless input[:online_ab_config].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Builder for OnlineAbConfig
    class OnlineAbConfig
      def self.build(input)
        data = {}
        data['controlTreatmentName'] = input[:control_treatment_name] unless input[:control_treatment_name].nil?
        data['treatmentWeights'] = TreatmentToWeightMap.build(input[:treatment_weights]) unless input[:treatment_weights].nil?
        data
      end
    end

    # Map Builder for TreatmentToWeightMap
    class TreatmentToWeightMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for MetricGoalConfigList
    class MetricGoalConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << MetricGoalConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricGoalConfig
    class MetricGoalConfig
      def self.build(input)
        data = {}
        data['metricDefinition'] = MetricDefinitionConfig.build(input[:metric_definition]) unless input[:metric_definition].nil?
        data['desiredChange'] = input[:desired_change] unless input[:desired_change].nil?
        data
      end
    end

    # Structure Builder for MetricDefinitionConfig
    class MetricDefinitionConfig
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['entityIdKey'] = input[:entity_id_key] unless input[:entity_id_key].nil?
        data['valueKey'] = input[:value_key] unless input[:value_key].nil?
        data['eventPattern'] = input[:event_pattern] unless input[:event_pattern].nil?
        data['unitLabel'] = input[:unit_label] unless input[:unit_label].nil?
        data
      end
    end

    # List Builder for TreatmentConfigList
    class TreatmentConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << TreatmentConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TreatmentConfig
    class TreatmentConfig
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['feature'] = input[:feature] unless input[:feature].nil?
        data['variation'] = input[:variation] unless input[:variation].nil?
        data
      end
    end

    # Operation Builder for CreateFeature
    class CreateFeature
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/features',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['evaluationStrategy'] = input[:evaluation_strategy] unless input[:evaluation_strategy].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['variations'] = VariationConfigsList.build(input[:variations]) unless input[:variations].nil?
        data['defaultVariation'] = input[:default_variation] unless input[:default_variation].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['entityOverrides'] = EntityOverrideMap.build(input[:entity_overrides]) unless input[:entity_overrides].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for EntityOverrideMap
    class EntityOverrideMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for VariationConfigsList
    class VariationConfigsList
      def self.build(input)
        data = []
        input.each do |element|
          data << VariationConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VariationConfig
    class VariationConfig
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = VariableValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for VariableValue
    class VariableValue
      def self.build(input)
        data = {}
        case input
        when Types::VariableValue::BoolValue
          data['boolValue'] = input
        when Types::VariableValue::StringValue
          data['stringValue'] = input
        when Types::VariableValue::LongValue
          data['longValue'] = input
        when Types::VariableValue::DoubleValue
          data['doubleValue'] = Hearth::NumberHelper.serialize(input)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VariableValue"
        end

        data
      end
    end

    # Operation Builder for CreateLaunch
    class CreateLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['scheduledSplitsConfig'] = ScheduledSplitsLaunchConfig.build(input[:scheduled_splits_config]) unless input[:scheduled_splits_config].nil?
        data['metricMonitors'] = MetricMonitorConfigList.build(input[:metric_monitors]) unless input[:metric_monitors].nil?
        data['groups'] = LaunchGroupConfigList.build(input[:groups]) unless input[:groups].nil?
        data['randomizationSalt'] = input[:randomization_salt] unless input[:randomization_salt].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LaunchGroupConfigList
    class LaunchGroupConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << LaunchGroupConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LaunchGroupConfig
    class LaunchGroupConfig
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['feature'] = input[:feature] unless input[:feature].nil?
        data['variation'] = input[:variation] unless input[:variation].nil?
        data
      end
    end

    # List Builder for MetricMonitorConfigList
    class MetricMonitorConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << MetricMonitorConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricMonitorConfig
    class MetricMonitorConfig
      def self.build(input)
        data = {}
        data['metricDefinition'] = MetricDefinitionConfig.build(input[:metric_definition]) unless input[:metric_definition].nil?
        data
      end
    end

    # Structure Builder for ScheduledSplitsLaunchConfig
    class ScheduledSplitsLaunchConfig
      def self.build(input)
        data = {}
        data['steps'] = ScheduledSplitConfigList.build(input[:steps]) unless input[:steps].nil?
        data
      end
    end

    # List Builder for ScheduledSplitConfigList
    class ScheduledSplitConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << ScheduledSplitConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScheduledSplitConfig
    class ScheduledSplitConfig
      def self.build(input)
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['groupWeights'] = GroupToWeightMap.build(input[:group_weights]) unless input[:group_weights].nil?
        data
      end
    end

    # Map Builder for GroupToWeightMap
    class GroupToWeightMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['dataDelivery'] = ProjectDataDeliveryConfig.build(input[:data_delivery]) unless input[:data_delivery].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProjectDataDeliveryConfig
    class ProjectDataDeliveryConfig
      def self.build(input)
        data = {}
        data['s3Destination'] = S3DestinationConfig.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data['cloudWatchLogs'] = CloudWatchLogsDestinationConfig.build(input[:cloud_watch_logs]) unless input[:cloud_watch_logs].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogsDestinationConfig
    class CloudWatchLogsDestinationConfig
      def self.build(input)
        data = {}
        data['logGroup'] = input[:log_group] unless input[:log_group].nil?
        data
      end
    end

    # Structure Builder for S3DestinationConfig
    class S3DestinationConfig
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for DeleteExperiment
    class DeleteExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:experiment].to_s.empty?
          raise ArgumentError, "HTTP label :experiment cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments/%<experiment>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            experiment: Hearth::HTTP.uri_escape(input[:experiment].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFeature
    class DeleteFeature
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:feature].to_s.empty?
          raise ArgumentError, "HTTP label :feature cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/features/%<feature>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            feature: Hearth::HTTP.uri_escape(input[:feature].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteLaunch
    class DeleteLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:launch].to_s.empty?
          raise ArgumentError, "HTTP label :launch cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches/%<launch>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            launch: Hearth::HTTP.uri_escape(input[:launch].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for EvaluateFeature
    class EvaluateFeature
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:feature].to_s.empty?
          raise ArgumentError, "HTTP label :feature cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/evaluations/%<feature>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            feature: Hearth::HTTP.uri_escape(input[:feature].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['evaluationContext'] = input[:evaluation_context] unless input[:evaluation_context].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetExperiment
    class GetExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:experiment].to_s.empty?
          raise ArgumentError, "HTTP label :experiment cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments/%<experiment>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            experiment: Hearth::HTTP.uri_escape(input[:experiment].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExperimentResults
    class GetExperimentResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:experiment].to_s.empty?
          raise ArgumentError, "HTTP label :experiment cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments/%<experiment>s/results',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            experiment: Hearth::HTTP.uri_escape(input[:experiment].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['metricNames'] = MetricNameList.build(input[:metric_names]) unless input[:metric_names].nil?
        data['treatmentNames'] = TreatmentNameList.build(input[:treatment_names]) unless input[:treatment_names].nil?
        data['baseStat'] = input[:base_stat] unless input[:base_stat].nil?
        data['resultStats'] = ExperimentResultRequestTypeList.build(input[:result_stats]) unless input[:result_stats].nil?
        data['reportNames'] = ExperimentReportNameList.build(input[:report_names]) unless input[:report_names].nil?
        data['period'] = input[:period] unless input[:period].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExperimentReportNameList
    class ExperimentReportNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExperimentResultRequestTypeList
    class ExperimentResultRequestTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TreatmentNameList
    class TreatmentNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for MetricNameList
    class MetricNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetFeature
    class GetFeature
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:feature].to_s.empty?
          raise ArgumentError, "HTTP label :feature cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/features/%<feature>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            feature: Hearth::HTTP.uri_escape(input[:feature].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLaunch
    class GetLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:launch].to_s.empty?
          raise ArgumentError, "HTTP label :launch cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches/%<launch>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            launch: Hearth::HTTP.uri_escape(input[:launch].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProject
    class GetProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListExperiments
    class ListExperiments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFeatures
    class ListFeatures
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/features',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLaunches
    class ListLaunches
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
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

    # Operation Builder for PutProjectEvents
    class PutProjectEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/events/projects/%<project>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['events'] = EventList.build(input[:events]) unless input[:events].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EventList
    class EventList
      def self.build(input)
        data = []
        input.each do |element|
          data << Event.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Event
    class Event
      def self.build(input)
        data = {}
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['data'] = input[:data] unless input[:data].nil?
        data
      end
    end

    # Operation Builder for StartExperiment
    class StartExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:experiment].to_s.empty?
          raise ArgumentError, "HTTP label :experiment cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments/%<experiment>s/start',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            experiment: Hearth::HTTP.uri_escape(input[:experiment].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analysisCompleteTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:analysis_complete_time]).to_i unless input[:analysis_complete_time].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartLaunch
    class StartLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:launch].to_s.empty?
          raise ArgumentError, "HTTP label :launch cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches/%<launch>s/start',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            launch: Hearth::HTTP.uri_escape(input[:launch].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopExperiment
    class StopExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:experiment].to_s.empty?
          raise ArgumentError, "HTTP label :experiment cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments/%<experiment>s/cancel',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            experiment: Hearth::HTTP.uri_escape(input[:experiment].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['desiredState'] = input[:desired_state] unless input[:desired_state].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopLaunch
    class StopLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:launch].to_s.empty?
          raise ArgumentError, "HTTP label :launch cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches/%<launch>s/cancel',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            launch: Hearth::HTTP.uri_escape(input[:launch].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['desiredState'] = input[:desired_state] unless input[:desired_state].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateExperiment
    class UpdateExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:experiment].to_s.empty?
          raise ArgumentError, "HTTP label :experiment cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/experiments/%<experiment>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            experiment: Hearth::HTTP.uri_escape(input[:experiment].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['treatments'] = TreatmentConfigList.build(input[:treatments]) unless input[:treatments].nil?
        data['metricGoals'] = MetricGoalConfigList.build(input[:metric_goals]) unless input[:metric_goals].nil?
        data['randomizationSalt'] = input[:randomization_salt] unless input[:randomization_salt].nil?
        data['samplingRate'] = input[:sampling_rate] unless input[:sampling_rate].nil?
        data['onlineAbConfig'] = OnlineAbConfig.build(input[:online_ab_config]) unless input[:online_ab_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFeature
    class UpdateFeature
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:feature].to_s.empty?
          raise ArgumentError, "HTTP label :feature cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/features/%<feature>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            feature: Hearth::HTTP.uri_escape(input[:feature].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['evaluationStrategy'] = input[:evaluation_strategy] unless input[:evaluation_strategy].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['addOrUpdateVariations'] = VariationConfigsList.build(input[:add_or_update_variations]) unless input[:add_or_update_variations].nil?
        data['removeVariations'] = VariationNameList.build(input[:remove_variations]) unless input[:remove_variations].nil?
        data['defaultVariation'] = input[:default_variation] unless input[:default_variation].nil?
        data['entityOverrides'] = EntityOverrideMap.build(input[:entity_overrides]) unless input[:entity_overrides].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VariationNameList
    class VariationNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateLaunch
    class UpdateLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        if input[:launch].to_s.empty?
          raise ArgumentError, "HTTP label :launch cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/launches/%<launch>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s),
            launch: Hearth::HTTP.uri_escape(input[:launch].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['groups'] = LaunchGroupConfigList.build(input[:groups]) unless input[:groups].nil?
        data['metricMonitors'] = MetricMonitorConfigList.build(input[:metric_monitors]) unless input[:metric_monitors].nil?
        data['randomizationSalt'] = input[:randomization_salt] unless input[:randomization_salt].nil?
        data['scheduledSplitsConfig'] = ScheduledSplitsLaunchConfig.build(input[:scheduled_splits_config]) unless input[:scheduled_splits_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProjectDataDelivery
    class UpdateProjectDataDelivery
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:project].to_s.empty?
          raise ArgumentError, "HTTP label :project cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<project>s/data-delivery',
            project: Hearth::HTTP.uri_escape(input[:project].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['s3Destination'] = S3DestinationConfig.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data['cloudWatchLogs'] = CloudWatchLogsDestinationConfig.build(input[:cloud_watch_logs]) unless input[:cloud_watch_logs].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
