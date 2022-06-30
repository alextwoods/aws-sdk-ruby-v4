# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Evidently
  module Parsers

    # Operation Parser for BatchEvaluateFeature
    class BatchEvaluateFeature
      def self.parse(http_resp)
        data = Types::BatchEvaluateFeatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.results = (Parsers::EvaluationResultsList.parse(map['results']) unless map['results'].nil?)
        data
      end
    end

    class EvaluationResultsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EvaluationResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class EvaluationResult
      def self.parse(map)
        data = Types::EvaluationResult.new
        data.project = map['project']
        data.feature = map['feature']
        data.variation = map['variation']
        data.value = (Parsers::VariableValue.parse(map['value']) unless map['value'].nil?)
        data.entity_id = map['entityId']
        data.reason = map['reason']
        data.details = map['details']
        return data
      end
    end

    class VariableValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'boolValue'
          value = value
          Types::VariableValue::BoolValue.new(value) if value
        when 'stringValue'
          value = value
          Types::VariableValue::StringValue.new(value) if value
        when 'longValue'
          value = value
          Types::VariableValue::LongValue.new(value) if value
        when 'doubleValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::VariableValue::DoubleValue.new(value) if value
        else
          Types::VariableValue::Unknown.new({name: key, value: value})
        end
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateExperiment
    class CreateExperiment
      def self.parse(http_resp)
        data = Types::CreateExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment = (Parsers::Experiment.parse(map['experiment']) unless map['experiment'].nil?)
        data
      end
    end

    class Experiment
      def self.parse(map)
        data = Types::Experiment.new
        data.arn = map['arn']
        data.name = map['name']
        data.project = map['project']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.description = map['description']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.schedule = (Parsers::ExperimentSchedule.parse(map['schedule']) unless map['schedule'].nil?)
        data.execution = (Parsers::ExperimentExecution.parse(map['execution']) unless map['execution'].nil?)
        data.treatments = (Parsers::TreatmentList.parse(map['treatments']) unless map['treatments'].nil?)
        data.metric_goals = (Parsers::MetricGoalsList.parse(map['metricGoals']) unless map['metricGoals'].nil?)
        data.randomization_salt = map['randomizationSalt']
        data.sampling_rate = map['samplingRate']
        data.type = map['type']
        data.online_ab_definition = (Parsers::OnlineAbDefinition.parse(map['onlineAbDefinition']) unless map['onlineAbDefinition'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    class OnlineAbDefinition
      def self.parse(map)
        data = Types::OnlineAbDefinition.new
        data.control_treatment_name = map['controlTreatmentName']
        data.treatment_weights = (Parsers::TreatmentToWeightMap.parse(map['treatmentWeights']) unless map['treatmentWeights'].nil?)
        return data
      end
    end

    class TreatmentToWeightMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MetricGoalsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MetricGoal.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricGoal
      def self.parse(map)
        data = Types::MetricGoal.new
        data.metric_definition = (Parsers::MetricDefinition.parse(map['metricDefinition']) unless map['metricDefinition'].nil?)
        data.desired_change = map['desiredChange']
        return data
      end
    end

    class MetricDefinition
      def self.parse(map)
        data = Types::MetricDefinition.new
        data.name = map['name']
        data.entity_id_key = map['entityIdKey']
        data.value_key = map['valueKey']
        data.event_pattern = map['eventPattern']
        data.unit_label = map['unitLabel']
        return data
      end
    end

    class TreatmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Treatment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Treatment
      def self.parse(map)
        data = Types::Treatment.new
        data.name = map['name']
        data.description = map['description']
        data.feature_variations = (Parsers::FeatureToVariationMap.parse(map['featureVariations']) unless map['featureVariations'].nil?)
        return data
      end
    end

    class FeatureToVariationMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentExecution
      def self.parse(map)
        data = Types::ExperimentExecution.new
        data.started_time = Time.at(map['startedTime'].to_i) if map['startedTime']
        data.ended_time = Time.at(map['endedTime'].to_i) if map['endedTime']
        return data
      end
    end

    class ExperimentSchedule
      def self.parse(map)
        data = Types::ExperimentSchedule.new
        data.analysis_complete_time = Time.at(map['analysisCompleteTime'].to_i) if map['analysisCompleteTime']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CreateFeature
    class CreateFeature
      def self.parse(http_resp)
        data = Types::CreateFeatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.feature = (Parsers::Feature.parse(map['feature']) unless map['feature'].nil?)
        data
      end
    end

    class Feature
      def self.parse(map)
        data = Types::Feature.new
        data.arn = map['arn']
        data.name = map['name']
        data.project = map['project']
        data.status = map['status']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.description = map['description']
        data.evaluation_strategy = map['evaluationStrategy']
        data.value_type = map['valueType']
        data.variations = (Parsers::VariationsList.parse(map['variations']) unless map['variations'].nil?)
        data.default_variation = map['defaultVariation']
        data.evaluation_rules = (Parsers::EvaluationRulesList.parse(map['evaluationRules']) unless map['evaluationRules'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.entity_overrides = (Parsers::EntityOverrideMap.parse(map['entityOverrides']) unless map['entityOverrides'].nil?)
        return data
      end
    end

    class EntityOverrideMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class EvaluationRulesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EvaluationRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class EvaluationRule
      def self.parse(map)
        data = Types::EvaluationRule.new
        data.name = map['name']
        data.type = map['type']
        return data
      end
    end

    class VariationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Variation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Variation
      def self.parse(map)
        data = Types::Variation.new
        data.name = map['name']
        data.value = (Parsers::VariableValue.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    # Operation Parser for CreateLaunch
    class CreateLaunch
      def self.parse(http_resp)
        data = Types::CreateLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch = (Parsers::Launch.parse(map['launch']) unless map['launch'].nil?)
        data
      end
    end

    class Launch
      def self.parse(map)
        data = Types::Launch.new
        data.arn = map['arn']
        data.name = map['name']
        data.project = map['project']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.description = map['description']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.execution = (Parsers::LaunchExecution.parse(map['execution']) unless map['execution'].nil?)
        data.groups = (Parsers::LaunchGroupList.parse(map['groups']) unless map['groups'].nil?)
        data.metric_monitors = (Parsers::MetricMonitorList.parse(map['metricMonitors']) unless map['metricMonitors'].nil?)
        data.randomization_salt = map['randomizationSalt']
        data.type = map['type']
        data.scheduled_splits_definition = (Parsers::ScheduledSplitsLaunchDefinition.parse(map['scheduledSplitsDefinition']) unless map['scheduledSplitsDefinition'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ScheduledSplitsLaunchDefinition
      def self.parse(map)
        data = Types::ScheduledSplitsLaunchDefinition.new
        data.steps = (Parsers::ScheduledStepList.parse(map['steps']) unless map['steps'].nil?)
        return data
      end
    end

    class ScheduledStepList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ScheduledSplit.parse(value) unless value.nil?
        end
        data
      end
    end

    class ScheduledSplit
      def self.parse(map)
        data = Types::ScheduledSplit.new
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.group_weights = (Parsers::GroupToWeightMap.parse(map['groupWeights']) unless map['groupWeights'].nil?)
        return data
      end
    end

    class GroupToWeightMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MetricMonitorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MetricMonitor.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricMonitor
      def self.parse(map)
        data = Types::MetricMonitor.new
        data.metric_definition = (Parsers::MetricDefinition.parse(map['metricDefinition']) unless map['metricDefinition'].nil?)
        return data
      end
    end

    class LaunchGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LaunchGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class LaunchGroup
      def self.parse(map)
        data = Types::LaunchGroup.new
        data.name = map['name']
        data.description = map['description']
        data.feature_variations = (Parsers::FeatureToVariationMap.parse(map['featureVariations']) unless map['featureVariations'].nil?)
        return data
      end
    end

    class LaunchExecution
      def self.parse(map)
        data = Types::LaunchExecution.new
        data.started_time = Time.at(map['startedTime'].to_i) if map['startedTime']
        data.ended_time = Time.at(map['endedTime'].to_i) if map['endedTime']
        return data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    class Project
      def self.parse(map)
        data = Types::Project.new
        data.arn = map['arn']
        data.name = map['name']
        data.status = map['status']
        data.description = map['description']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.feature_count = map['featureCount']
        data.launch_count = map['launchCount']
        data.active_launch_count = map['activeLaunchCount']
        data.experiment_count = map['experimentCount']
        data.active_experiment_count = map['activeExperimentCount']
        data.data_delivery = (Parsers::ProjectDataDelivery.parse(map['dataDelivery']) unless map['dataDelivery'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ProjectDataDelivery
      def self.parse(map)
        data = Types::ProjectDataDelivery.new
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data.cloud_watch_logs = (Parsers::CloudWatchLogsDestination.parse(map['cloudWatchLogs']) unless map['cloudWatchLogs'].nil?)
        return data
      end
    end

    class CloudWatchLogsDestination
      def self.parse(map)
        data = Types::CloudWatchLogsDestination.new
        data.log_group = map['logGroup']
        return data
      end
    end

    class S3Destination
      def self.parse(map)
        data = Types::S3Destination.new
        data.bucket = map['bucket']
        data.prefix = map['prefix']
        return data
      end
    end

    # Operation Parser for DeleteExperiment
    class DeleteExperiment
      def self.parse(http_resp)
        data = Types::DeleteExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteFeature
    class DeleteFeature
      def self.parse(http_resp)
        data = Types::DeleteFeatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLaunch
    class DeleteLaunch
      def self.parse(http_resp)
        data = Types::DeleteLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EvaluateFeature
    class EvaluateFeature
      def self.parse(http_resp)
        data = Types::EvaluateFeatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.variation = map['variation']
        data.value = (Parsers::VariableValue.parse(map['value']) unless map['value'].nil?)
        data.reason = map['reason']
        data.details = map['details']
        data
      end
    end

    # Operation Parser for GetExperiment
    class GetExperiment
      def self.parse(http_resp)
        data = Types::GetExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment = (Parsers::Experiment.parse(map['experiment']) unless map['experiment'].nil?)
        data
      end
    end

    # Operation Parser for GetExperimentResults
    class GetExperimentResults
      def self.parse(http_resp)
        data = Types::GetExperimentResultsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.results_data = (Parsers::ExperimentResultsDataList.parse(map['resultsData']) unless map['resultsData'].nil?)
        data.reports = (Parsers::ExperimentReportList.parse(map['reports']) unless map['reports'].nil?)
        data.timestamps = (Parsers::TimestampList.parse(map['timestamps']) unless map['timestamps'].nil?)
        data.details = map['details']
        data
      end
    end

    class TimestampList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Time.at(value.to_i) if value
        end
        data
      end
    end

    class ExperimentReportList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentReport.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentReport
      def self.parse(map)
        data = Types::ExperimentReport.new
        data.metric_name = map['metricName']
        data.treatment_name = map['treatmentName']
        data.report_name = map['reportName']
        data.content = map['content']
        return data
      end
    end

    class ExperimentResultsDataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentResultsData.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentResultsData
      def self.parse(map)
        data = Types::ExperimentResultsData.new
        data.metric_name = map['metricName']
        data.treatment_name = map['treatmentName']
        data.result_stat = map['resultStat']
        data.values = (Parsers::DoubleValueList.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class DoubleValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetFeature
    class GetFeature
      def self.parse(http_resp)
        data = Types::GetFeatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.feature = (Parsers::Feature.parse(map['feature']) unless map['feature'].nil?)
        data
      end
    end

    # Operation Parser for GetLaunch
    class GetLaunch
      def self.parse(http_resp)
        data = Types::GetLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch = (Parsers::Launch.parse(map['launch']) unless map['launch'].nil?)
        data
      end
    end

    # Operation Parser for GetProject
    class GetProject
      def self.parse(http_resp)
        data = Types::GetProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    # Operation Parser for ListExperiments
    class ListExperiments
      def self.parse(http_resp)
        data = Types::ListExperimentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiments = (Parsers::ExperimentList.parse(map['experiments']) unless map['experiments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExperimentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Experiment.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFeatures
    class ListFeatures
      def self.parse(http_resp)
        data = Types::ListFeaturesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.features = (Parsers::FeatureSummariesList.parse(map['features']) unless map['features'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FeatureSummariesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FeatureSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class FeatureSummary
      def self.parse(map)
        data = Types::FeatureSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.project = map['project']
        data.status = map['status']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.evaluation_strategy = map['evaluationStrategy']
        data.evaluation_rules = (Parsers::EvaluationRulesList.parse(map['evaluationRules']) unless map['evaluationRules'].nil?)
        data.default_variation = map['defaultVariation']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListLaunches
    class ListLaunches
      def self.parse(http_resp)
        data = Types::ListLaunchesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launches = (Parsers::LaunchesList.parse(map['launches']) unless map['launches'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LaunchesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Launch.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.projects = (Parsers::ProjectSummariesList.parse(map['projects']) unless map['projects'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProjectSummariesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProjectSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.status = map['status']
        data.description = map['description']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.feature_count = map['featureCount']
        data.launch_count = map['launchCount']
        data.active_launch_count = map['activeLaunchCount']
        data.experiment_count = map['experimentCount']
        data.active_experiment_count = map['activeExperimentCount']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
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

    # Operation Parser for PutProjectEvents
    class PutProjectEvents
      def self.parse(http_resp)
        data = Types::PutProjectEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failed_event_count = map['failedEventCount']
        data.event_results = (Parsers::PutProjectEventsResultEntryList.parse(map['eventResults']) unless map['eventResults'].nil?)
        data
      end
    end

    class PutProjectEventsResultEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PutProjectEventsResultEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class PutProjectEventsResultEntry
      def self.parse(map)
        data = Types::PutProjectEventsResultEntry.new
        data.event_id = map['eventId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for StartExperiment
    class StartExperiment
      def self.parse(http_resp)
        data = Types::StartExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.started_time = Time.at(map['startedTime'].to_i) if map['startedTime']
        data
      end
    end

    # Operation Parser for StartLaunch
    class StartLaunch
      def self.parse(http_resp)
        data = Types::StartLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch = (Parsers::Launch.parse(map['launch']) unless map['launch'].nil?)
        data
      end
    end

    # Operation Parser for StopExperiment
    class StopExperiment
      def self.parse(http_resp)
        data = Types::StopExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ended_time = Time.at(map['endedTime'].to_i) if map['endedTime']
        data
      end
    end

    # Operation Parser for StopLaunch
    class StopLaunch
      def self.parse(http_resp)
        data = Types::StopLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ended_time = Time.at(map['endedTime'].to_i) if map['endedTime']
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

    # Operation Parser for UpdateExperiment
    class UpdateExperiment
      def self.parse(http_resp)
        data = Types::UpdateExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment = (Parsers::Experiment.parse(map['experiment']) unless map['experiment'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFeature
    class UpdateFeature
      def self.parse(http_resp)
        data = Types::UpdateFeatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.feature = (Parsers::Feature.parse(map['feature']) unless map['feature'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLaunch
    class UpdateLaunch
      def self.parse(http_resp)
        data = Types::UpdateLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch = (Parsers::Launch.parse(map['launch']) unless map['launch'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProjectDataDelivery
    class UpdateProjectDataDelivery
      def self.parse(http_resp)
        data = Types::UpdateProjectDataDeliveryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end
  end
end
