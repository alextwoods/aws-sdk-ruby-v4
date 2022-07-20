# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Fis
  module Parsers

    # Operation Parser for CreateExperimentTemplate
    class CreateExperimentTemplate
      def self.parse(http_resp)
        data = Types::CreateExperimentTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment_template = (Parsers::ExperimentTemplate.parse(map['experimentTemplate']) unless map['experimentTemplate'].nil?)
        data
      end
    end

    class ExperimentTemplate
      def self.parse(map)
        data = Types::ExperimentTemplate.new
        data.id = map['id']
        data.description = map['description']
        data.targets = (Parsers::ExperimentTemplateTargetMap.parse(map['targets']) unless map['targets'].nil?)
        data.actions = (Parsers::ExperimentTemplateActionMap.parse(map['actions']) unless map['actions'].nil?)
        data.stop_conditions = (Parsers::ExperimentTemplateStopConditionList.parse(map['stopConditions']) unless map['stopConditions'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.role_arn = map['roleArn']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.log_configuration = (Parsers::ExperimentTemplateLogConfiguration.parse(map['logConfiguration']) unless map['logConfiguration'].nil?)
        return data
      end
    end

    class ExperimentTemplateLogConfiguration
      def self.parse(map)
        data = Types::ExperimentTemplateLogConfiguration.new
        data.cloud_watch_logs_configuration = (Parsers::ExperimentTemplateCloudWatchLogsLogConfiguration.parse(map['cloudWatchLogsConfiguration']) unless map['cloudWatchLogsConfiguration'].nil?)
        data.s3_configuration = (Parsers::ExperimentTemplateS3LogConfiguration.parse(map['s3Configuration']) unless map['s3Configuration'].nil?)
        data.log_schema_version = map['logSchemaVersion']
        return data
      end
    end

    class ExperimentTemplateS3LogConfiguration
      def self.parse(map)
        data = Types::ExperimentTemplateS3LogConfiguration.new
        data.bucket_name = map['bucketName']
        data.prefix = map['prefix']
        return data
      end
    end

    class ExperimentTemplateCloudWatchLogsLogConfiguration
      def self.parse(map)
        data = Types::ExperimentTemplateCloudWatchLogsLogConfiguration.new
        data.log_group_arn = map['logGroupArn']
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

    class ExperimentTemplateStopConditionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentTemplateStopCondition.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateStopCondition
      def self.parse(map)
        data = Types::ExperimentTemplateStopCondition.new
        data.source = map['source']
        data.value = map['value']
        return data
      end
    end

    class ExperimentTemplateActionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ExperimentTemplateAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateAction
      def self.parse(map)
        data = Types::ExperimentTemplateAction.new
        data.action_id = map['actionId']
        data.description = map['description']
        data.parameters = (Parsers::ExperimentTemplateActionParameterMap.parse(map['parameters']) unless map['parameters'].nil?)
        data.targets = (Parsers::ExperimentTemplateActionTargetMap.parse(map['targets']) unless map['targets'].nil?)
        data.start_after = (Parsers::ExperimentTemplateActionStartAfterList.parse(map['startAfter']) unless map['startAfter'].nil?)
        return data
      end
    end

    class ExperimentTemplateActionStartAfterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateActionTargetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateActionParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateTargetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ExperimentTemplateTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateTarget
      def self.parse(map)
        data = Types::ExperimentTemplateTarget.new
        data.resource_type = map['resourceType']
        data.resource_arns = (Parsers::ResourceArnList.parse(map['resourceArns']) unless map['resourceArns'].nil?)
        data.resource_tags = (Parsers::TagMap.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data.filters = (Parsers::ExperimentTemplateTargetFilterList.parse(map['filters']) unless map['filters'].nil?)
        data.selection_mode = map['selectionMode']
        data.parameters = (Parsers::ExperimentTemplateTargetParameterMap.parse(map['parameters']) unless map['parameters'].nil?)
        return data
      end
    end

    class ExperimentTemplateTargetParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateTargetFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentTemplateTargetFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateTargetFilter
      def self.parse(map)
        data = Types::ExperimentTemplateTargetFilter.new
        data.path = map['path']
        data.values = (Parsers::ExperimentTemplateTargetFilterValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class ExperimentTemplateTargetFilterValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ResourceArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for DeleteExperimentTemplate
    class DeleteExperimentTemplate
      def self.parse(http_resp)
        data = Types::DeleteExperimentTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment_template = (Parsers::ExperimentTemplate.parse(map['experimentTemplate']) unless map['experimentTemplate'].nil?)
        data
      end
    end

    # Operation Parser for GetAction
    class GetAction
      def self.parse(http_resp)
        data = Types::GetActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action = (Parsers::Action.parse(map['action']) unless map['action'].nil?)
        data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.id = map['id']
        data.description = map['description']
        data.parameters = (Parsers::ActionParameterMap.parse(map['parameters']) unless map['parameters'].nil?)
        data.targets = (Parsers::ActionTargetMap.parse(map['targets']) unless map['targets'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ActionTargetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ActionTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActionTarget
      def self.parse(map)
        data = Types::ActionTarget.new
        data.resource_type = map['resourceType']
        return data
      end
    end

    class ActionParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ActionParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActionParameter
      def self.parse(map)
        data = Types::ActionParameter.new
        data.description = map['description']
        data.required = map['required']
        return data
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

    class Experiment
      def self.parse(map)
        data = Types::Experiment.new
        data.id = map['id']
        data.experiment_template_id = map['experimentTemplateId']
        data.role_arn = map['roleArn']
        data.state = (Parsers::ExperimentState.parse(map['state']) unless map['state'].nil?)
        data.targets = (Parsers::ExperimentTargetMap.parse(map['targets']) unless map['targets'].nil?)
        data.actions = (Parsers::ExperimentActionMap.parse(map['actions']) unless map['actions'].nil?)
        data.stop_conditions = (Parsers::ExperimentStopConditionList.parse(map['stopConditions']) unless map['stopConditions'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.log_configuration = (Parsers::ExperimentLogConfiguration.parse(map['logConfiguration']) unless map['logConfiguration'].nil?)
        return data
      end
    end

    class ExperimentLogConfiguration
      def self.parse(map)
        data = Types::ExperimentLogConfiguration.new
        data.cloud_watch_logs_configuration = (Parsers::ExperimentCloudWatchLogsLogConfiguration.parse(map['cloudWatchLogsConfiguration']) unless map['cloudWatchLogsConfiguration'].nil?)
        data.s3_configuration = (Parsers::ExperimentS3LogConfiguration.parse(map['s3Configuration']) unless map['s3Configuration'].nil?)
        data.log_schema_version = map['logSchemaVersion']
        return data
      end
    end

    class ExperimentS3LogConfiguration
      def self.parse(map)
        data = Types::ExperimentS3LogConfiguration.new
        data.bucket_name = map['bucketName']
        data.prefix = map['prefix']
        return data
      end
    end

    class ExperimentCloudWatchLogsLogConfiguration
      def self.parse(map)
        data = Types::ExperimentCloudWatchLogsLogConfiguration.new
        data.log_group_arn = map['logGroupArn']
        return data
      end
    end

    class ExperimentStopConditionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentStopCondition.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentStopCondition
      def self.parse(map)
        data = Types::ExperimentStopCondition.new
        data.source = map['source']
        data.value = map['value']
        return data
      end
    end

    class ExperimentActionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ExperimentAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentAction
      def self.parse(map)
        data = Types::ExperimentAction.new
        data.action_id = map['actionId']
        data.description = map['description']
        data.parameters = (Parsers::ExperimentActionParameterMap.parse(map['parameters']) unless map['parameters'].nil?)
        data.targets = (Parsers::ExperimentActionTargetMap.parse(map['targets']) unless map['targets'].nil?)
        data.start_after = (Parsers::ExperimentActionStartAfterList.parse(map['startAfter']) unless map['startAfter'].nil?)
        data.state = (Parsers::ExperimentActionState.parse(map['state']) unless map['state'].nil?)
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        return data
      end
    end

    class ExperimentActionState
      def self.parse(map)
        data = Types::ExperimentActionState.new
        data.status = map['status']
        data.reason = map['reason']
        return data
      end
    end

    class ExperimentActionStartAfterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ExperimentActionTargetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentActionParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentTargetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ExperimentTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTarget
      def self.parse(map)
        data = Types::ExperimentTarget.new
        data.resource_type = map['resourceType']
        data.resource_arns = (Parsers::ResourceArnList.parse(map['resourceArns']) unless map['resourceArns'].nil?)
        data.resource_tags = (Parsers::TagMap.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data.filters = (Parsers::ExperimentTargetFilterList.parse(map['filters']) unless map['filters'].nil?)
        data.selection_mode = map['selectionMode']
        data.parameters = (Parsers::ExperimentTargetParameterMap.parse(map['parameters']) unless map['parameters'].nil?)
        return data
      end
    end

    class ExperimentTargetParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExperimentTargetFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentTargetFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTargetFilter
      def self.parse(map)
        data = Types::ExperimentTargetFilter.new
        data.path = map['path']
        data.values = (Parsers::ExperimentTargetFilterValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class ExperimentTargetFilterValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ExperimentState
      def self.parse(map)
        data = Types::ExperimentState.new
        data.status = map['status']
        data.reason = map['reason']
        return data
      end
    end

    # Operation Parser for GetExperimentTemplate
    class GetExperimentTemplate
      def self.parse(http_resp)
        data = Types::GetExperimentTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment_template = (Parsers::ExperimentTemplate.parse(map['experimentTemplate']) unless map['experimentTemplate'].nil?)
        data
      end
    end

    # Operation Parser for GetTargetResourceType
    class GetTargetResourceType
      def self.parse(http_resp)
        data = Types::GetTargetResourceTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.target_resource_type = (Parsers::TargetResourceType.parse(map['targetResourceType']) unless map['targetResourceType'].nil?)
        data
      end
    end

    class TargetResourceType
      def self.parse(map)
        data = Types::TargetResourceType.new
        data.resource_type = map['resourceType']
        data.description = map['description']
        data.parameters = (Parsers::TargetResourceTypeParameterMap.parse(map['parameters']) unless map['parameters'].nil?)
        return data
      end
    end

    class TargetResourceTypeParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::TargetResourceTypeParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class TargetResourceTypeParameter
      def self.parse(map)
        data = Types::TargetResourceTypeParameter.new
        data.description = map['description']
        data.required = map['required']
        return data
      end
    end

    # Operation Parser for ListActions
    class ListActions
      def self.parse(http_resp)
        data = Types::ListActionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.actions = (Parsers::ActionSummaryList.parse(map['actions']) unless map['actions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ActionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActionSummary
      def self.parse(map)
        data = Types::ActionSummary.new
        data.id = map['id']
        data.description = map['description']
        data.targets = (Parsers::ActionTargetMap.parse(map['targets']) unless map['targets'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListExperimentTemplates
    class ListExperimentTemplates
      def self.parse(http_resp)
        data = Types::ListExperimentTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment_templates = (Parsers::ExperimentTemplateSummaryList.parse(map['experimentTemplates']) unless map['experimentTemplates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExperimentTemplateSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentTemplateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentTemplateSummary
      def self.parse(map)
        data = Types::ExperimentTemplateSummary.new
        data.id = map['id']
        data.description = map['description']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListExperiments
    class ListExperiments
      def self.parse(http_resp)
        data = Types::ListExperimentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiments = (Parsers::ExperimentSummaryList.parse(map['experiments']) unless map['experiments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExperimentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExperimentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExperimentSummary
      def self.parse(map)
        data = Types::ExperimentSummary.new
        data.id = map['id']
        data.experiment_template_id = map['experimentTemplateId']
        data.state = (Parsers::ExperimentState.parse(map['state']) unless map['state'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
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

    # Operation Parser for ListTargetResourceTypes
    class ListTargetResourceTypes
      def self.parse(http_resp)
        data = Types::ListTargetResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.target_resource_types = (Parsers::TargetResourceTypeSummaryList.parse(map['targetResourceTypes']) unless map['targetResourceTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TargetResourceTypeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TargetResourceTypeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TargetResourceTypeSummary
      def self.parse(map)
        data = Types::TargetResourceTypeSummary.new
        data.resource_type = map['resourceType']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for StartExperiment
    class StartExperiment
      def self.parse(http_resp)
        data = Types::StartExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment = (Parsers::Experiment.parse(map['experiment']) unless map['experiment'].nil?)
        data
      end
    end

    # Operation Parser for StopExperiment
    class StopExperiment
      def self.parse(http_resp)
        data = Types::StopExperimentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment = (Parsers::Experiment.parse(map['experiment']) unless map['experiment'].nil?)
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

    # Operation Parser for UpdateExperimentTemplate
    class UpdateExperimentTemplate
      def self.parse(http_resp)
        data = Types::UpdateExperimentTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.experiment_template = (Parsers::ExperimentTemplate.parse(map['experimentTemplate']) unless map['experimentTemplate'].nil?)
        data
      end
    end
  end
end
