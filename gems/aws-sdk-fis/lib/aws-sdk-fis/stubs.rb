# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Fis
  module Stubs

    # Operation Stubber for CreateExperimentTemplate
    class CreateExperimentTemplate
      def self.default(visited=[])
        {
          experiment_template: Stubs::ExperimentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experimentTemplate'] = Stubs::ExperimentTemplate.stub(stub[:experiment_template]) unless stub[:experiment_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExperimentTemplate
    class ExperimentTemplate
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplate')
        visited = visited + ['ExperimentTemplate']
        {
          id: 'id',
          description: 'description',
          targets: Stubs::ExperimentTemplateTargetMap.default(visited),
          actions: Stubs::ExperimentTemplateActionMap.default(visited),
          stop_conditions: Stubs::ExperimentTemplateStopConditionList.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
          role_arn: 'role_arn',
          tags: Stubs::TagMap.default(visited),
          log_configuration: Stubs::ExperimentTemplateLogConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplate.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targets'] = Stubs::ExperimentTemplateTargetMap.stub(stub[:targets]) unless stub[:targets].nil?
        data['actions'] = Stubs::ExperimentTemplateActionMap.stub(stub[:actions]) unless stub[:actions].nil?
        data['stopConditions'] = Stubs::ExperimentTemplateStopConditionList.stub(stub[:stop_conditions]) unless stub[:stop_conditions].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['logConfiguration'] = Stubs::ExperimentTemplateLogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data
      end
    end

    # Structure Stubber for ExperimentTemplateLogConfiguration
    class ExperimentTemplateLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateLogConfiguration')
        visited = visited + ['ExperimentTemplateLogConfiguration']
        {
          cloud_watch_logs_configuration: Stubs::ExperimentTemplateCloudWatchLogsLogConfiguration.default(visited),
          s3_configuration: Stubs::ExperimentTemplateS3LogConfiguration.default(visited),
          log_schema_version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateLogConfiguration.new
        data = {}
        data['cloudWatchLogsConfiguration'] = Stubs::ExperimentTemplateCloudWatchLogsLogConfiguration.stub(stub[:cloud_watch_logs_configuration]) unless stub[:cloud_watch_logs_configuration].nil?
        data['s3Configuration'] = Stubs::ExperimentTemplateS3LogConfiguration.stub(stub[:s3_configuration]) unless stub[:s3_configuration].nil?
        data['logSchemaVersion'] = stub[:log_schema_version] unless stub[:log_schema_version].nil?
        data
      end
    end

    # Structure Stubber for ExperimentTemplateS3LogConfiguration
    class ExperimentTemplateS3LogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateS3LogConfiguration')
        visited = visited + ['ExperimentTemplateS3LogConfiguration']
        {
          bucket_name: 'bucket_name',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateS3LogConfiguration.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for ExperimentTemplateCloudWatchLogsLogConfiguration
    class ExperimentTemplateCloudWatchLogsLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateCloudWatchLogsLogConfiguration')
        visited = visited + ['ExperimentTemplateCloudWatchLogsLogConfiguration']
        {
          log_group_arn: 'log_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateCloudWatchLogsLogConfiguration.new
        data = {}
        data['logGroupArn'] = stub[:log_group_arn] unless stub[:log_group_arn].nil?
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

    # List Stubber for ExperimentTemplateStopConditionList
    class ExperimentTemplateStopConditionList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateStopConditionList')
        visited = visited + ['ExperimentTemplateStopConditionList']
        [
          Stubs::ExperimentTemplateStopCondition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExperimentTemplateStopCondition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTemplateStopCondition
    class ExperimentTemplateStopCondition
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateStopCondition')
        visited = visited + ['ExperimentTemplateStopCondition']
        {
          source: 'source',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateStopCondition.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Map Stubber for ExperimentTemplateActionMap
    class ExperimentTemplateActionMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateActionMap')
        visited = visited + ['ExperimentTemplateActionMap']
        {
          test_key: Stubs::ExperimentTemplateAction.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ExperimentTemplateAction.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTemplateAction
    class ExperimentTemplateAction
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateAction')
        visited = visited + ['ExperimentTemplateAction']
        {
          action_id: 'action_id',
          description: 'description',
          parameters: Stubs::ExperimentTemplateActionParameterMap.default(visited),
          targets: Stubs::ExperimentTemplateActionTargetMap.default(visited),
          start_after: Stubs::ExperimentTemplateActionStartAfterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateAction.new
        data = {}
        data['actionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parameters'] = Stubs::ExperimentTemplateActionParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['targets'] = Stubs::ExperimentTemplateActionTargetMap.stub(stub[:targets]) unless stub[:targets].nil?
        data['startAfter'] = Stubs::ExperimentTemplateActionStartAfterList.stub(stub[:start_after]) unless stub[:start_after].nil?
        data
      end
    end

    # List Stubber for ExperimentTemplateActionStartAfterList
    class ExperimentTemplateActionStartAfterList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateActionStartAfterList')
        visited = visited + ['ExperimentTemplateActionStartAfterList']
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

    # Map Stubber for ExperimentTemplateActionTargetMap
    class ExperimentTemplateActionTargetMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateActionTargetMap')
        visited = visited + ['ExperimentTemplateActionTargetMap']
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

    # Map Stubber for ExperimentTemplateActionParameterMap
    class ExperimentTemplateActionParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateActionParameterMap')
        visited = visited + ['ExperimentTemplateActionParameterMap']
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

    # Map Stubber for ExperimentTemplateTargetMap
    class ExperimentTemplateTargetMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateTargetMap')
        visited = visited + ['ExperimentTemplateTargetMap']
        {
          test_key: Stubs::ExperimentTemplateTarget.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ExperimentTemplateTarget.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTemplateTarget
    class ExperimentTemplateTarget
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateTarget')
        visited = visited + ['ExperimentTemplateTarget']
        {
          resource_type: 'resource_type',
          resource_arns: Stubs::ResourceArnList.default(visited),
          resource_tags: Stubs::TagMap.default(visited),
          filters: Stubs::ExperimentTemplateTargetFilterList.default(visited),
          selection_mode: 'selection_mode',
          parameters: Stubs::ExperimentTemplateTargetParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateTarget.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceArns'] = Stubs::ResourceArnList.stub(stub[:resource_arns]) unless stub[:resource_arns].nil?
        data['resourceTags'] = Stubs::TagMap.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['filters'] = Stubs::ExperimentTemplateTargetFilterList.stub(stub[:filters]) unless stub[:filters].nil?
        data['selectionMode'] = stub[:selection_mode] unless stub[:selection_mode].nil?
        data['parameters'] = Stubs::ExperimentTemplateTargetParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for ExperimentTemplateTargetParameterMap
    class ExperimentTemplateTargetParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateTargetParameterMap')
        visited = visited + ['ExperimentTemplateTargetParameterMap']
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

    # List Stubber for ExperimentTemplateTargetFilterList
    class ExperimentTemplateTargetFilterList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateTargetFilterList')
        visited = visited + ['ExperimentTemplateTargetFilterList']
        [
          Stubs::ExperimentTemplateTargetFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExperimentTemplateTargetFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTemplateTargetFilter
    class ExperimentTemplateTargetFilter
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateTargetFilter')
        visited = visited + ['ExperimentTemplateTargetFilter']
        {
          path: 'path',
          values: Stubs::ExperimentTemplateTargetFilterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateTargetFilter.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data['values'] = Stubs::ExperimentTemplateTargetFilterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ExperimentTemplateTargetFilterValues
    class ExperimentTemplateTargetFilterValues
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateTargetFilterValues')
        visited = visited + ['ExperimentTemplateTargetFilterValues']
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

    # List Stubber for ResourceArnList
    class ResourceArnList
      def self.default(visited=[])
        return nil if visited.include?('ResourceArnList')
        visited = visited + ['ResourceArnList']
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

    # Operation Stubber for DeleteExperimentTemplate
    class DeleteExperimentTemplate
      def self.default(visited=[])
        {
          experiment_template: Stubs::ExperimentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experimentTemplate'] = Stubs::ExperimentTemplate.stub(stub[:experiment_template]) unless stub[:experiment_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAction
    class GetAction
      def self.default(visited=[])
        {
          action: Stubs::Action.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          id: 'id',
          description: 'description',
          parameters: Stubs::ActionParameterMap.default(visited),
          targets: Stubs::ActionTargetMap.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parameters'] = Stubs::ActionParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['targets'] = Stubs::ActionTargetMap.stub(stub[:targets]) unless stub[:targets].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for ActionTargetMap
    class ActionTargetMap
      def self.default(visited=[])
        return nil if visited.include?('ActionTargetMap')
        visited = visited + ['ActionTargetMap']
        {
          test_key: Stubs::ActionTarget.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ActionTarget.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionTarget
    class ActionTarget
      def self.default(visited=[])
        return nil if visited.include?('ActionTarget')
        visited = visited + ['ActionTarget']
        {
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTarget.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Map Stubber for ActionParameterMap
    class ActionParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ActionParameterMap')
        visited = visited + ['ActionParameterMap']
        {
          test_key: Stubs::ActionParameter.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ActionParameter.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionParameter
    class ActionParameter
      def self.default(visited=[])
        return nil if visited.include?('ActionParameter')
        visited = visited + ['ActionParameter']
        {
          description: 'description',
          required: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionParameter.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['required'] = stub[:required] unless stub[:required].nil?
        data
      end
    end

    # Operation Stubber for GetExperiment
    class GetExperiment
      def self.default(visited=[])
        {
          experiment: Stubs::Experiment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiment'] = Stubs::Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Experiment
    class Experiment
      def self.default(visited=[])
        return nil if visited.include?('Experiment')
        visited = visited + ['Experiment']
        {
          id: 'id',
          experiment_template_id: 'experiment_template_id',
          role_arn: 'role_arn',
          state: Stubs::ExperimentState.default(visited),
          targets: Stubs::ExperimentTargetMap.default(visited),
          actions: Stubs::ExperimentActionMap.default(visited),
          stop_conditions: Stubs::ExperimentStopConditionList.default(visited),
          creation_time: Time.now,
          start_time: Time.now,
          end_time: Time.now,
          tags: Stubs::TagMap.default(visited),
          log_configuration: Stubs::ExperimentLogConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Experiment.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['experimentTemplateId'] = stub[:experiment_template_id] unless stub[:experiment_template_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = Stubs::ExperimentState.stub(stub[:state]) unless stub[:state].nil?
        data['targets'] = Stubs::ExperimentTargetMap.stub(stub[:targets]) unless stub[:targets].nil?
        data['actions'] = Stubs::ExperimentActionMap.stub(stub[:actions]) unless stub[:actions].nil?
        data['stopConditions'] = Stubs::ExperimentStopConditionList.stub(stub[:stop_conditions]) unless stub[:stop_conditions].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['logConfiguration'] = Stubs::ExperimentLogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data
      end
    end

    # Structure Stubber for ExperimentLogConfiguration
    class ExperimentLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperimentLogConfiguration')
        visited = visited + ['ExperimentLogConfiguration']
        {
          cloud_watch_logs_configuration: Stubs::ExperimentCloudWatchLogsLogConfiguration.default(visited),
          s3_configuration: Stubs::ExperimentS3LogConfiguration.default(visited),
          log_schema_version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentLogConfiguration.new
        data = {}
        data['cloudWatchLogsConfiguration'] = Stubs::ExperimentCloudWatchLogsLogConfiguration.stub(stub[:cloud_watch_logs_configuration]) unless stub[:cloud_watch_logs_configuration].nil?
        data['s3Configuration'] = Stubs::ExperimentS3LogConfiguration.stub(stub[:s3_configuration]) unless stub[:s3_configuration].nil?
        data['logSchemaVersion'] = stub[:log_schema_version] unless stub[:log_schema_version].nil?
        data
      end
    end

    # Structure Stubber for ExperimentS3LogConfiguration
    class ExperimentS3LogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperimentS3LogConfiguration')
        visited = visited + ['ExperimentS3LogConfiguration']
        {
          bucket_name: 'bucket_name',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentS3LogConfiguration.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for ExperimentCloudWatchLogsLogConfiguration
    class ExperimentCloudWatchLogsLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperimentCloudWatchLogsLogConfiguration')
        visited = visited + ['ExperimentCloudWatchLogsLogConfiguration']
        {
          log_group_arn: 'log_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentCloudWatchLogsLogConfiguration.new
        data = {}
        data['logGroupArn'] = stub[:log_group_arn] unless stub[:log_group_arn].nil?
        data
      end
    end

    # List Stubber for ExperimentStopConditionList
    class ExperimentStopConditionList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentStopConditionList')
        visited = visited + ['ExperimentStopConditionList']
        [
          Stubs::ExperimentStopCondition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExperimentStopCondition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentStopCondition
    class ExperimentStopCondition
      def self.default(visited=[])
        return nil if visited.include?('ExperimentStopCondition')
        visited = visited + ['ExperimentStopCondition']
        {
          source: 'source',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentStopCondition.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Map Stubber for ExperimentActionMap
    class ExperimentActionMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentActionMap')
        visited = visited + ['ExperimentActionMap']
        {
          test_key: Stubs::ExperimentAction.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ExperimentAction.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentAction
    class ExperimentAction
      def self.default(visited=[])
        return nil if visited.include?('ExperimentAction')
        visited = visited + ['ExperimentAction']
        {
          action_id: 'action_id',
          description: 'description',
          parameters: Stubs::ExperimentActionParameterMap.default(visited),
          targets: Stubs::ExperimentActionTargetMap.default(visited),
          start_after: Stubs::ExperimentActionStartAfterList.default(visited),
          state: Stubs::ExperimentActionState.default(visited),
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentAction.new
        data = {}
        data['actionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parameters'] = Stubs::ExperimentActionParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['targets'] = Stubs::ExperimentActionTargetMap.stub(stub[:targets]) unless stub[:targets].nil?
        data['startAfter'] = Stubs::ExperimentActionStartAfterList.stub(stub[:start_after]) unless stub[:start_after].nil?
        data['state'] = Stubs::ExperimentActionState.stub(stub[:state]) unless stub[:state].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for ExperimentActionState
    class ExperimentActionState
      def self.default(visited=[])
        return nil if visited.include?('ExperimentActionState')
        visited = visited + ['ExperimentActionState']
        {
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentActionState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for ExperimentActionStartAfterList
    class ExperimentActionStartAfterList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentActionStartAfterList')
        visited = visited + ['ExperimentActionStartAfterList']
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

    # Map Stubber for ExperimentActionTargetMap
    class ExperimentActionTargetMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentActionTargetMap')
        visited = visited + ['ExperimentActionTargetMap']
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

    # Map Stubber for ExperimentActionParameterMap
    class ExperimentActionParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentActionParameterMap')
        visited = visited + ['ExperimentActionParameterMap']
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

    # Map Stubber for ExperimentTargetMap
    class ExperimentTargetMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTargetMap')
        visited = visited + ['ExperimentTargetMap']
        {
          test_key: Stubs::ExperimentTarget.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ExperimentTarget.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTarget
    class ExperimentTarget
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTarget')
        visited = visited + ['ExperimentTarget']
        {
          resource_type: 'resource_type',
          resource_arns: Stubs::ResourceArnList.default(visited),
          resource_tags: Stubs::TagMap.default(visited),
          filters: Stubs::ExperimentTargetFilterList.default(visited),
          selection_mode: 'selection_mode',
          parameters: Stubs::ExperimentTargetParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTarget.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceArns'] = Stubs::ResourceArnList.stub(stub[:resource_arns]) unless stub[:resource_arns].nil?
        data['resourceTags'] = Stubs::TagMap.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['filters'] = Stubs::ExperimentTargetFilterList.stub(stub[:filters]) unless stub[:filters].nil?
        data['selectionMode'] = stub[:selection_mode] unless stub[:selection_mode].nil?
        data['parameters'] = Stubs::ExperimentTargetParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for ExperimentTargetParameterMap
    class ExperimentTargetParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTargetParameterMap')
        visited = visited + ['ExperimentTargetParameterMap']
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

    # List Stubber for ExperimentTargetFilterList
    class ExperimentTargetFilterList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTargetFilterList')
        visited = visited + ['ExperimentTargetFilterList']
        [
          Stubs::ExperimentTargetFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExperimentTargetFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTargetFilter
    class ExperimentTargetFilter
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTargetFilter')
        visited = visited + ['ExperimentTargetFilter']
        {
          path: 'path',
          values: Stubs::ExperimentTargetFilterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTargetFilter.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data['values'] = Stubs::ExperimentTargetFilterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ExperimentTargetFilterValues
    class ExperimentTargetFilterValues
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTargetFilterValues')
        visited = visited + ['ExperimentTargetFilterValues']
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

    # Structure Stubber for ExperimentState
    class ExperimentState
      def self.default(visited=[])
        return nil if visited.include?('ExperimentState')
        visited = visited + ['ExperimentState']
        {
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for GetExperimentTemplate
    class GetExperimentTemplate
      def self.default(visited=[])
        {
          experiment_template: Stubs::ExperimentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experimentTemplate'] = Stubs::ExperimentTemplate.stub(stub[:experiment_template]) unless stub[:experiment_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTargetResourceType
    class GetTargetResourceType
      def self.default(visited=[])
        {
          target_resource_type: Stubs::TargetResourceType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['targetResourceType'] = Stubs::TargetResourceType.stub(stub[:target_resource_type]) unless stub[:target_resource_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TargetResourceType
    class TargetResourceType
      def self.default(visited=[])
        return nil if visited.include?('TargetResourceType')
        visited = visited + ['TargetResourceType']
        {
          resource_type: 'resource_type',
          description: 'description',
          parameters: Stubs::TargetResourceTypeParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetResourceType.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parameters'] = Stubs::TargetResourceTypeParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for TargetResourceTypeParameterMap
    class TargetResourceTypeParameterMap
      def self.default(visited=[])
        return nil if visited.include?('TargetResourceTypeParameterMap')
        visited = visited + ['TargetResourceTypeParameterMap']
        {
          test_key: Stubs::TargetResourceTypeParameter.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::TargetResourceTypeParameter.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetResourceTypeParameter
    class TargetResourceTypeParameter
      def self.default(visited=[])
        return nil if visited.include?('TargetResourceTypeParameter')
        visited = visited + ['TargetResourceTypeParameter']
        {
          description: 'description',
          required: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetResourceTypeParameter.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['required'] = stub[:required] unless stub[:required].nil?
        data
      end
    end

    # Operation Stubber for ListActions
    class ListActions
      def self.default(visited=[])
        {
          actions: Stubs::ActionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actions'] = Stubs::ActionSummaryList.stub(stub[:actions]) unless stub[:actions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ActionSummaryList
    class ActionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ActionSummaryList')
        visited = visited + ['ActionSummaryList']
        [
          Stubs::ActionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionSummary
    class ActionSummary
      def self.default(visited=[])
        return nil if visited.include?('ActionSummary')
        visited = visited + ['ActionSummary']
        {
          id: 'id',
          description: 'description',
          targets: Stubs::ActionTargetMap.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targets'] = Stubs::ActionTargetMap.stub(stub[:targets]) unless stub[:targets].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListExperimentTemplates
    class ListExperimentTemplates
      def self.default(visited=[])
        {
          experiment_templates: Stubs::ExperimentTemplateSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experimentTemplates'] = Stubs::ExperimentTemplateSummaryList.stub(stub[:experiment_templates]) unless stub[:experiment_templates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExperimentTemplateSummaryList
    class ExperimentTemplateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateSummaryList')
        visited = visited + ['ExperimentTemplateSummaryList']
        [
          Stubs::ExperimentTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExperimentTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentTemplateSummary
    class ExperimentTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('ExperimentTemplateSummary')
        visited = visited + ['ExperimentTemplateSummary']
        {
          id: 'id',
          description: 'description',
          creation_time: Time.now,
          last_update_time: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentTemplateSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListExperiments
    class ListExperiments
      def self.default(visited=[])
        {
          experiments: Stubs::ExperimentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiments'] = Stubs::ExperimentSummaryList.stub(stub[:experiments]) unless stub[:experiments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExperimentSummaryList
    class ExperimentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ExperimentSummaryList')
        visited = visited + ['ExperimentSummaryList']
        [
          Stubs::ExperimentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExperimentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentSummary
    class ExperimentSummary
      def self.default(visited=[])
        return nil if visited.include?('ExperimentSummary')
        visited = visited + ['ExperimentSummary']
        {
          id: 'id',
          experiment_template_id: 'experiment_template_id',
          state: Stubs::ExperimentState.default(visited),
          creation_time: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['experimentTemplateId'] = stub[:experiment_template_id] unless stub[:experiment_template_id].nil?
        data['state'] = Stubs::ExperimentState.stub(stub[:state]) unless stub[:state].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTargetResourceTypes
    class ListTargetResourceTypes
      def self.default(visited=[])
        {
          target_resource_types: Stubs::TargetResourceTypeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['targetResourceTypes'] = Stubs::TargetResourceTypeSummaryList.stub(stub[:target_resource_types]) unless stub[:target_resource_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TargetResourceTypeSummaryList
    class TargetResourceTypeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TargetResourceTypeSummaryList')
        visited = visited + ['TargetResourceTypeSummaryList']
        [
          Stubs::TargetResourceTypeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetResourceTypeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetResourceTypeSummary
    class TargetResourceTypeSummary
      def self.default(visited=[])
        return nil if visited.include?('TargetResourceTypeSummary')
        visited = visited + ['TargetResourceTypeSummary']
        {
          resource_type: 'resource_type',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetResourceTypeSummary.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for StartExperiment
    class StartExperiment
      def self.default(visited=[])
        {
          experiment: Stubs::Experiment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiment'] = Stubs::Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopExperiment
    class StopExperiment
      def self.default(visited=[])
        {
          experiment: Stubs::Experiment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experiment'] = Stubs::Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateExperimentTemplate
    class UpdateExperimentTemplate
      def self.default(visited=[])
        {
          experiment_template: Stubs::ExperimentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['experimentTemplate'] = Stubs::ExperimentTemplate.stub(stub[:experiment_template]) unless stub[:experiment_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
