# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Evidently
  module Stubs

    # Operation Stubber for BatchEvaluateFeature
    class BatchEvaluateFeature
      def self.default(visited=[])
        {
          results: EvaluationResultsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['results'] = EvaluationResultsList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EvaluationResultsList
    class EvaluationResultsList
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResultsList')
        visited = visited + ['EvaluationResultsList']
        [
          EvaluationResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EvaluationResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluationResult
    class EvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResult')
        visited = visited + ['EvaluationResult']
        {
          project: 'project',
          feature: 'feature',
          variation: 'variation',
          value: VariableValue.default(visited),
          entity_id: 'entity_id',
          reason: 'reason',
          details: 'details',
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResult.new
        data = {}
        data['project'] = stub[:project] unless stub[:project].nil?
        data['feature'] = stub[:feature] unless stub[:feature].nil?
        data['variation'] = stub[:variation] unless stub[:variation].nil?
        data['value'] = VariableValue.stub(stub[:value]) unless stub[:value].nil?
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data
      end
    end

    # Union Stubber for VariableValue
    class VariableValue
      def self.default(visited=[])
        return nil if visited.include?('VariableValue')
        visited = visited + ['VariableValue']
        {
          bool_value: false,
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VariableValue::BoolValue
          data['boolValue'] = stub.__getobj__
        when Types::VariableValue::StringValue
          data['stringValue'] = stub.__getobj__
        when Types::VariableValue::LongValue
          data['longValue'] = stub.__getobj__
        when Types::VariableValue::DoubleValue
          data['doubleValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VariableValue"
        end

        data
      end
    end

    # Operation Stubber for CreateExperiment
    class CreateExperiment
      def self.default(visited=[])
        {
          experiment: Experiment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiment'] = Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Experiment
    class Experiment
      def self.default(visited=[])
        return nil if visited.include?('Experiment')
        visited = visited + ['Experiment']
        {
          arn: 'arn',
          name: 'name',
          project: 'project',
          status: 'status',
          status_reason: 'status_reason',
          description: 'description',
          created_time: Time.now,
          last_updated_time: Time.now,
          schedule: ExperimentSchedule.default(visited),
          execution: ExperimentExecution.default(visited),
          treatments: TreatmentList.default(visited),
          metric_goals: MetricGoalsList.default(visited),
          randomization_salt: 'randomization_salt',
          sampling_rate: 1,
          type: 'type',
          online_ab_definition: OnlineAbDefinition.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Experiment.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['project'] = stub[:project] unless stub[:project].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['schedule'] = ExperimentSchedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['execution'] = ExperimentExecution.stub(stub[:execution]) unless stub[:execution].nil?
        data['treatments'] = TreatmentList.stub(stub[:treatments]) unless stub[:treatments].nil?
        data['metricGoals'] = MetricGoalsList.stub(stub[:metric_goals]) unless stub[:metric_goals].nil?
        data['randomizationSalt'] = stub[:randomization_salt] unless stub[:randomization_salt].nil?
        data['samplingRate'] = stub[:sampling_rate] unless stub[:sampling_rate].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['onlineAbDefinition'] = OnlineAbDefinition.stub(stub[:online_ab_definition]) unless stub[:online_ab_definition].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
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

    # Structure Stubber for OnlineAbDefinition
    class OnlineAbDefinition
      def self.default(visited=[])
        return nil if visited.include?('OnlineAbDefinition')
        visited = visited + ['OnlineAbDefinition']
        {
          control_treatment_name: 'control_treatment_name',
          treatment_weights: TreatmentToWeightMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnlineAbDefinition.new
        data = {}
        data['controlTreatmentName'] = stub[:control_treatment_name] unless stub[:control_treatment_name].nil?
        data['treatmentWeights'] = TreatmentToWeightMap.stub(stub[:treatment_weights]) unless stub[:treatment_weights].nil?
        data
      end
    end

    # Map Stubber for TreatmentToWeightMap
    class TreatmentToWeightMap
      def self.default(visited=[])
        return nil if visited.include?('TreatmentToWeightMap')
        visited = visited + ['TreatmentToWeightMap']
        {
          test_key: 1
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

    # List Stubber for MetricGoalsList
    class MetricGoalsList
      def self.default(visited=[])
        return nil if visited.include?('MetricGoalsList')
        visited = visited + ['MetricGoalsList']
        [
          MetricGoal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricGoal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricGoal
    class MetricGoal
      def self.default(visited=[])
        return nil if visited.include?('MetricGoal')
        visited = visited + ['MetricGoal']
        {
          metric_definition: MetricDefinition.default(visited),
          desired_change: 'desired_change',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricGoal.new
        data = {}
        data['metricDefinition'] = MetricDefinition.stub(stub[:metric_definition]) unless stub[:metric_definition].nil?
        data['desiredChange'] = stub[:desired_change] unless stub[:desired_change].nil?
        data
      end
    end

    # Structure Stubber for MetricDefinition
    class MetricDefinition
      def self.default(visited=[])
        return nil if visited.include?('MetricDefinition')
        visited = visited + ['MetricDefinition']
        {
          name: 'name',
          entity_id_key: 'entity_id_key',
          value_key: 'value_key',
          event_pattern: 'event_pattern',
          unit_label: 'unit_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDefinition.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['entityIdKey'] = stub[:entity_id_key] unless stub[:entity_id_key].nil?
        data['valueKey'] = stub[:value_key] unless stub[:value_key].nil?
        data['eventPattern'] = stub[:event_pattern] unless stub[:event_pattern].nil?
        data['unitLabel'] = stub[:unit_label] unless stub[:unit_label].nil?
        data
      end
    end

    # List Stubber for TreatmentList
    class TreatmentList
      def self.default(visited=[])
        return nil if visited.include?('TreatmentList')
        visited = visited + ['TreatmentList']
        [
          Treatment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Treatment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Treatment
    class Treatment
      def self.default(visited=[])
        return nil if visited.include?('Treatment')
        visited = visited + ['Treatment']
        {
          name: 'name',
          description: 'description',
          feature_variations: FeatureToVariationMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Treatment.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['featureVariations'] = FeatureToVariationMap.stub(stub[:feature_variations]) unless stub[:feature_variations].nil?
        data
      end
    end

    # Map Stubber for FeatureToVariationMap
    class FeatureToVariationMap
      def self.default(visited=[])
        return nil if visited.include?('FeatureToVariationMap')
        visited = visited + ['FeatureToVariationMap']
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

    # Structure Stubber for ExperimentExecution
    class ExperimentExecution
      def self.default(visited=[])
        return nil if visited.include?('ExperimentExecution')
        visited = visited + ['ExperimentExecution']
        {
          started_time: Time.now,
          ended_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentExecution.new
        data = {}
        data['startedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_time]).to_i unless stub[:started_time].nil?
        data['endedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_time]).to_i unless stub[:ended_time].nil?
        data
      end
    end

    # Structure Stubber for ExperimentSchedule
    class ExperimentSchedule
      def self.default(visited=[])
        return nil if visited.include?('ExperimentSchedule')
        visited = visited + ['ExperimentSchedule']
        {
          analysis_complete_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentSchedule.new
        data = {}
        data['analysisCompleteTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:analysis_complete_time]).to_i unless stub[:analysis_complete_time].nil?
        data
      end
    end

    # Operation Stubber for CreateFeature
    class CreateFeature
      def self.default(visited=[])
        {
          feature: Feature.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['feature'] = Feature.stub(stub[:feature]) unless stub[:feature].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Feature
    class Feature
      def self.default(visited=[])
        return nil if visited.include?('Feature')
        visited = visited + ['Feature']
        {
          arn: 'arn',
          name: 'name',
          project: 'project',
          status: 'status',
          created_time: Time.now,
          last_updated_time: Time.now,
          description: 'description',
          evaluation_strategy: 'evaluation_strategy',
          value_type: 'value_type',
          variations: VariationsList.default(visited),
          default_variation: 'default_variation',
          evaluation_rules: EvaluationRulesList.default(visited),
          tags: TagMap.default(visited),
          entity_overrides: EntityOverrideMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Feature.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['project'] = stub[:project] unless stub[:project].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['evaluationStrategy'] = stub[:evaluation_strategy] unless stub[:evaluation_strategy].nil?
        data['valueType'] = stub[:value_type] unless stub[:value_type].nil?
        data['variations'] = VariationsList.stub(stub[:variations]) unless stub[:variations].nil?
        data['defaultVariation'] = stub[:default_variation] unless stub[:default_variation].nil?
        data['evaluationRules'] = EvaluationRulesList.stub(stub[:evaluation_rules]) unless stub[:evaluation_rules].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['entityOverrides'] = EntityOverrideMap.stub(stub[:entity_overrides]) unless stub[:entity_overrides].nil?
        data
      end
    end

    # Map Stubber for EntityOverrideMap
    class EntityOverrideMap
      def self.default(visited=[])
        return nil if visited.include?('EntityOverrideMap')
        visited = visited + ['EntityOverrideMap']
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

    # List Stubber for EvaluationRulesList
    class EvaluationRulesList
      def self.default(visited=[])
        return nil if visited.include?('EvaluationRulesList')
        visited = visited + ['EvaluationRulesList']
        [
          EvaluationRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EvaluationRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluationRule
    class EvaluationRule
      def self.default(visited=[])
        return nil if visited.include?('EvaluationRule')
        visited = visited + ['EvaluationRule']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationRule.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for VariationsList
    class VariationsList
      def self.default(visited=[])
        return nil if visited.include?('VariationsList')
        visited = visited + ['VariationsList']
        [
          Variation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Variation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Variation
    class Variation
      def self.default(visited=[])
        return nil if visited.include?('Variation')
        visited = visited + ['Variation']
        {
          name: 'name',
          value: VariableValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Variation.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = VariableValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateLaunch
    class CreateLaunch
      def self.default(visited=[])
        {
          launch: Launch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launch'] = Launch.stub(stub[:launch]) unless stub[:launch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Launch
    class Launch
      def self.default(visited=[])
        return nil if visited.include?('Launch')
        visited = visited + ['Launch']
        {
          arn: 'arn',
          name: 'name',
          project: 'project',
          status: 'status',
          status_reason: 'status_reason',
          description: 'description',
          created_time: Time.now,
          last_updated_time: Time.now,
          execution: LaunchExecution.default(visited),
          groups: LaunchGroupList.default(visited),
          metric_monitors: MetricMonitorList.default(visited),
          randomization_salt: 'randomization_salt',
          type: 'type',
          scheduled_splits_definition: ScheduledSplitsLaunchDefinition.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Launch.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['project'] = stub[:project] unless stub[:project].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['execution'] = LaunchExecution.stub(stub[:execution]) unless stub[:execution].nil?
        data['groups'] = LaunchGroupList.stub(stub[:groups]) unless stub[:groups].nil?
        data['metricMonitors'] = MetricMonitorList.stub(stub[:metric_monitors]) unless stub[:metric_monitors].nil?
        data['randomizationSalt'] = stub[:randomization_salt] unless stub[:randomization_salt].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['scheduledSplitsDefinition'] = ScheduledSplitsLaunchDefinition.stub(stub[:scheduled_splits_definition]) unless stub[:scheduled_splits_definition].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ScheduledSplitsLaunchDefinition
    class ScheduledSplitsLaunchDefinition
      def self.default(visited=[])
        return nil if visited.include?('ScheduledSplitsLaunchDefinition')
        visited = visited + ['ScheduledSplitsLaunchDefinition']
        {
          steps: ScheduledStepList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledSplitsLaunchDefinition.new
        data = {}
        data['steps'] = ScheduledStepList.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for ScheduledStepList
    class ScheduledStepList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledStepList')
        visited = visited + ['ScheduledStepList']
        [
          ScheduledSplit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScheduledSplit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduledSplit
    class ScheduledSplit
      def self.default(visited=[])
        return nil if visited.include?('ScheduledSplit')
        visited = visited + ['ScheduledSplit']
        {
          start_time: Time.now,
          group_weights: GroupToWeightMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledSplit.new
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['groupWeights'] = GroupToWeightMap.stub(stub[:group_weights]) unless stub[:group_weights].nil?
        data
      end
    end

    # Map Stubber for GroupToWeightMap
    class GroupToWeightMap
      def self.default(visited=[])
        return nil if visited.include?('GroupToWeightMap')
        visited = visited + ['GroupToWeightMap']
        {
          test_key: 1
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

    # List Stubber for MetricMonitorList
    class MetricMonitorList
      def self.default(visited=[])
        return nil if visited.include?('MetricMonitorList')
        visited = visited + ['MetricMonitorList']
        [
          MetricMonitor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricMonitor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricMonitor
    class MetricMonitor
      def self.default(visited=[])
        return nil if visited.include?('MetricMonitor')
        visited = visited + ['MetricMonitor']
        {
          metric_definition: MetricDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricMonitor.new
        data = {}
        data['metricDefinition'] = MetricDefinition.stub(stub[:metric_definition]) unless stub[:metric_definition].nil?
        data
      end
    end

    # List Stubber for LaunchGroupList
    class LaunchGroupList
      def self.default(visited=[])
        return nil if visited.include?('LaunchGroupList')
        visited = visited + ['LaunchGroupList']
        [
          LaunchGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LaunchGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LaunchGroup
    class LaunchGroup
      def self.default(visited=[])
        return nil if visited.include?('LaunchGroup')
        visited = visited + ['LaunchGroup']
        {
          name: 'name',
          description: 'description',
          feature_variations: FeatureToVariationMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchGroup.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['featureVariations'] = FeatureToVariationMap.stub(stub[:feature_variations]) unless stub[:feature_variations].nil?
        data
      end
    end

    # Structure Stubber for LaunchExecution
    class LaunchExecution
      def self.default(visited=[])
        return nil if visited.include?('LaunchExecution')
        visited = visited + ['LaunchExecution']
        {
          started_time: Time.now,
          ended_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchExecution.new
        data = {}
        data['startedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_time]).to_i unless stub[:started_time].nil?
        data['endedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_time]).to_i unless stub[:ended_time].nil?
        data
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Project
    class Project
      def self.default(visited=[])
        return nil if visited.include?('Project')
        visited = visited + ['Project']
        {
          arn: 'arn',
          name: 'name',
          status: 'status',
          description: 'description',
          created_time: Time.now,
          last_updated_time: Time.now,
          feature_count: 1,
          launch_count: 1,
          active_launch_count: 1,
          experiment_count: 1,
          active_experiment_count: 1,
          data_delivery: ProjectDataDelivery.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Project.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['featureCount'] = stub[:feature_count] unless stub[:feature_count].nil?
        data['launchCount'] = stub[:launch_count] unless stub[:launch_count].nil?
        data['activeLaunchCount'] = stub[:active_launch_count] unless stub[:active_launch_count].nil?
        data['experimentCount'] = stub[:experiment_count] unless stub[:experiment_count].nil?
        data['activeExperimentCount'] = stub[:active_experiment_count] unless stub[:active_experiment_count].nil?
        data['dataDelivery'] = ProjectDataDelivery.stub(stub[:data_delivery]) unless stub[:data_delivery].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ProjectDataDelivery
    class ProjectDataDelivery
      def self.default(visited=[])
        return nil if visited.include?('ProjectDataDelivery')
        visited = visited + ['ProjectDataDelivery']
        {
          s3_destination: S3Destination.default(visited),
          cloud_watch_logs: CloudWatchLogsDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectDataDelivery.new
        data = {}
        data['s3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data['cloudWatchLogs'] = CloudWatchLogsDestination.stub(stub[:cloud_watch_logs]) unless stub[:cloud_watch_logs].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogsDestination
    class CloudWatchLogsDestination
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsDestination')
        visited = visited + ['CloudWatchLogsDestination']
        {
          log_group: 'log_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsDestination.new
        data = {}
        data['logGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data
      end
    end

    # Structure Stubber for S3Destination
    class S3Destination
      def self.default(visited=[])
        return nil if visited.include?('S3Destination')
        visited = visited + ['S3Destination']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Destination.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for DeleteExperiment
    class DeleteExperiment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFeature
    class DeleteFeature
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLaunch
    class DeleteLaunch
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EvaluateFeature
    class EvaluateFeature
      def self.default(visited=[])
        {
          variation: 'variation',
          value: VariableValue.default(visited),
          reason: 'reason',
          details: 'details',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['variation'] = stub[:variation] unless stub[:variation].nil?
        data['value'] = VariableValue.stub(stub[:value]) unless stub[:value].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetExperiment
    class GetExperiment
      def self.default(visited=[])
        {
          experiment: Experiment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiment'] = Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetExperimentResults
    class GetExperimentResults
      def self.default(visited=[])
        {
          results_data: ExperimentResultsDataList.default(visited),
          reports: ExperimentReportList.default(visited),
          timestamps: TimestampList.default(visited),
          details: 'details',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resultsData'] = ExperimentResultsDataList.stub(stub[:results_data]) unless stub[:results_data].nil?
        data['reports'] = ExperimentReportList.stub(stub[:reports]) unless stub[:reports].nil?
        data['timestamps'] = TimestampList.stub(stub[:timestamps]) unless stub[:timestamps].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TimestampList
    class TimestampList
      def self.default(visited=[])
        return nil if visited.include?('TimestampList')
        visited = visited + ['TimestampList']
        [
          Time.now
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::TimeHelper.to_epoch_seconds(element).to_i unless element.nil?
        end
        data
      end
    end

    # List Stubber for ExperimentReportList
    class ExperimentReportList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentReportList')
        visited = visited + ['ExperimentReportList']
        [
          ExperimentReport.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExperimentReport.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentReport
    class ExperimentReport
      def self.default(visited=[])
        return nil if visited.include?('ExperimentReport')
        visited = visited + ['ExperimentReport']
        {
          metric_name: 'metric_name',
          treatment_name: 'treatment_name',
          report_name: 'report_name',
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentReport.new
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['treatmentName'] = stub[:treatment_name] unless stub[:treatment_name].nil?
        data['reportName'] = stub[:report_name] unless stub[:report_name].nil?
        data['content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # List Stubber for ExperimentResultsDataList
    class ExperimentResultsDataList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentResultsDataList')
        visited = visited + ['ExperimentResultsDataList']
        [
          ExperimentResultsData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExperimentResultsData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentResultsData
    class ExperimentResultsData
      def self.default(visited=[])
        return nil if visited.include?('ExperimentResultsData')
        visited = visited + ['ExperimentResultsData']
        {
          metric_name: 'metric_name',
          treatment_name: 'treatment_name',
          result_stat: 'result_stat',
          values: DoubleValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentResultsData.new
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['treatmentName'] = stub[:treatment_name] unless stub[:treatment_name].nil?
        data['resultStat'] = stub[:result_stat] unless stub[:result_stat].nil?
        data['values'] = DoubleValueList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for DoubleValueList
    class DoubleValueList
      def self.default(visited=[])
        return nil if visited.include?('DoubleValueList')
        visited = visited + ['DoubleValueList']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # Operation Stubber for GetFeature
    class GetFeature
      def self.default(visited=[])
        {
          feature: Feature.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['feature'] = Feature.stub(stub[:feature]) unless stub[:feature].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLaunch
    class GetLaunch
      def self.default(visited=[])
        {
          launch: Launch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launch'] = Launch.stub(stub[:launch]) unless stub[:launch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetProject
    class GetProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListExperiments
    class ListExperiments
      def self.default(visited=[])
        {
          experiments: ExperimentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiments'] = ExperimentList.stub(stub[:experiments]) unless stub[:experiments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExperimentList
    class ExperimentList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentList')
        visited = visited + ['ExperimentList']
        [
          Experiment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Experiment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFeatures
    class ListFeatures
      def self.default(visited=[])
        {
          features: FeatureSummariesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['features'] = FeatureSummariesList.stub(stub[:features]) unless stub[:features].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FeatureSummariesList
    class FeatureSummariesList
      def self.default(visited=[])
        return nil if visited.include?('FeatureSummariesList')
        visited = visited + ['FeatureSummariesList']
        [
          FeatureSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FeatureSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FeatureSummary
    class FeatureSummary
      def self.default(visited=[])
        return nil if visited.include?('FeatureSummary')
        visited = visited + ['FeatureSummary']
        {
          arn: 'arn',
          name: 'name',
          project: 'project',
          status: 'status',
          created_time: Time.now,
          last_updated_time: Time.now,
          evaluation_strategy: 'evaluation_strategy',
          evaluation_rules: EvaluationRulesList.default(visited),
          default_variation: 'default_variation',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['project'] = stub[:project] unless stub[:project].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['evaluationStrategy'] = stub[:evaluation_strategy] unless stub[:evaluation_strategy].nil?
        data['evaluationRules'] = EvaluationRulesList.stub(stub[:evaluation_rules]) unless stub[:evaluation_rules].nil?
        data['defaultVariation'] = stub[:default_variation] unless stub[:default_variation].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListLaunches
    class ListLaunches
      def self.default(visited=[])
        {
          launches: LaunchesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launches'] = LaunchesList.stub(stub[:launches]) unless stub[:launches].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LaunchesList
    class LaunchesList
      def self.default(visited=[])
        return nil if visited.include?('LaunchesList')
        visited = visited + ['LaunchesList']
        [
          Launch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Launch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: ProjectSummariesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['projects'] = ProjectSummariesList.stub(stub[:projects]) unless stub[:projects].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProjectSummariesList
    class ProjectSummariesList
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummariesList')
        visited = visited + ['ProjectSummariesList']
        [
          ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSummary
    class ProjectSummary
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          arn: 'arn',
          name: 'name',
          status: 'status',
          description: 'description',
          created_time: Time.now,
          last_updated_time: Time.now,
          feature_count: 1,
          launch_count: 1,
          active_launch_count: 1,
          experiment_count: 1,
          active_experiment_count: 1,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['featureCount'] = stub[:feature_count] unless stub[:feature_count].nil?
        data['launchCount'] = stub[:launch_count] unless stub[:launch_count].nil?
        data['activeLaunchCount'] = stub[:active_launch_count] unless stub[:active_launch_count].nil?
        data['experimentCount'] = stub[:experiment_count] unless stub[:experiment_count].nil?
        data['activeExperimentCount'] = stub[:active_experiment_count] unless stub[:active_experiment_count].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for PutProjectEvents
    class PutProjectEvents
      def self.default(visited=[])
        {
          failed_event_count: 1,
          event_results: PutProjectEventsResultEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['failedEventCount'] = stub[:failed_event_count] unless stub[:failed_event_count].nil?
        data['eventResults'] = PutProjectEventsResultEntryList.stub(stub[:event_results]) unless stub[:event_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PutProjectEventsResultEntryList
    class PutProjectEventsResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutProjectEventsResultEntryList')
        visited = visited + ['PutProjectEventsResultEntryList']
        [
          PutProjectEventsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PutProjectEventsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutProjectEventsResultEntry
    class PutProjectEventsResultEntry
      def self.default(visited=[])
        return nil if visited.include?('PutProjectEventsResultEntry')
        visited = visited + ['PutProjectEventsResultEntry']
        {
          event_id: 'event_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutProjectEventsResultEntry.new
        data = {}
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for StartExperiment
    class StartExperiment
      def self.default(visited=[])
        {
          started_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['startedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_time]).to_i unless stub[:started_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartLaunch
    class StartLaunch
      def self.default(visited=[])
        {
          launch: Launch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launch'] = Launch.stub(stub[:launch]) unless stub[:launch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopExperiment
    class StopExperiment
      def self.default(visited=[])
        {
          ended_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_time]).to_i unless stub[:ended_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopLaunch
    class StopLaunch
      def self.default(visited=[])
        {
          ended_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_time]).to_i unless stub[:ended_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateExperiment
    class UpdateExperiment
      def self.default(visited=[])
        {
          experiment: Experiment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiment'] = Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFeature
    class UpdateFeature
      def self.default(visited=[])
        {
          feature: Feature.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['feature'] = Feature.stub(stub[:feature]) unless stub[:feature].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLaunch
    class UpdateLaunch
      def self.default(visited=[])
        {
          launch: Launch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launch'] = Launch.stub(stub[:launch]) unless stub[:launch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProjectDataDelivery
    class UpdateProjectDataDelivery
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
