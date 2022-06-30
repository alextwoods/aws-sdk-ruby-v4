# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Fis
  module Builders

    # Operation Builder for CreateExperimentTemplate
    class CreateExperimentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/experimentTemplates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['stopConditions'] = Builders::CreateExperimentTemplateStopConditionInputList.build(input[:stop_conditions]) unless input[:stop_conditions].nil?
        data['targets'] = Builders::CreateExperimentTemplateTargetInputMap.build(input[:targets]) unless input[:targets].nil?
        data['actions'] = Builders::CreateExperimentTemplateActionInputMap.build(input[:actions]) unless input[:actions].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['logConfiguration'] = Builders::CreateExperimentTemplateLogConfigurationInput.build(input[:log_configuration]) unless input[:log_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateExperimentTemplateLogConfigurationInput
    class CreateExperimentTemplateLogConfigurationInput
      def self.build(input)
        data = {}
        data['cloudWatchLogsConfiguration'] = Builders::ExperimentTemplateCloudWatchLogsLogConfigurationInput.build(input[:cloud_watch_logs_configuration]) unless input[:cloud_watch_logs_configuration].nil?
        data['s3Configuration'] = Builders::ExperimentTemplateS3LogConfigurationInput.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['logSchemaVersion'] = input[:log_schema_version] unless input[:log_schema_version].nil?
        data
      end
    end

    # Structure Builder for ExperimentTemplateS3LogConfigurationInput
    class ExperimentTemplateS3LogConfigurationInput
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for ExperimentTemplateCloudWatchLogsLogConfigurationInput
    class ExperimentTemplateCloudWatchLogsLogConfigurationInput
      def self.build(input)
        data = {}
        data['logGroupArn'] = input[:log_group_arn] unless input[:log_group_arn].nil?
        data
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

    # Map Builder for CreateExperimentTemplateActionInputMap
    class CreateExperimentTemplateActionInputMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::CreateExperimentTemplateActionInput.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CreateExperimentTemplateActionInput
    class CreateExperimentTemplateActionInput
      def self.build(input)
        data = {}
        data['actionId'] = input[:action_id] unless input[:action_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['parameters'] = Builders::ExperimentTemplateActionParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data['targets'] = Builders::ExperimentTemplateActionTargetMap.build(input[:targets]) unless input[:targets].nil?
        data['startAfter'] = Builders::ExperimentTemplateActionStartAfterList.build(input[:start_after]) unless input[:start_after].nil?
        data
      end
    end

    # List Builder for ExperimentTemplateActionStartAfterList
    class ExperimentTemplateActionStartAfterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for ExperimentTemplateActionTargetMap
    class ExperimentTemplateActionTargetMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ExperimentTemplateActionParameterMap
    class ExperimentTemplateActionParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for CreateExperimentTemplateTargetInputMap
    class CreateExperimentTemplateTargetInputMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::CreateExperimentTemplateTargetInput.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CreateExperimentTemplateTargetInput
    class CreateExperimentTemplateTargetInput
      def self.build(input)
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceArns'] = Builders::ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['resourceTags'] = Builders::TagMap.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['filters'] = Builders::ExperimentTemplateTargetFilterInputList.build(input[:filters]) unless input[:filters].nil?
        data['selectionMode'] = input[:selection_mode] unless input[:selection_mode].nil?
        data['parameters'] = Builders::ExperimentTemplateTargetParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Map Builder for ExperimentTemplateTargetParameterMap
    class ExperimentTemplateTargetParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ExperimentTemplateTargetFilterInputList
    class ExperimentTemplateTargetFilterInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ExperimentTemplateTargetInputFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExperimentTemplateTargetInputFilter
    class ExperimentTemplateTargetInputFilter
      def self.build(input)
        data = {}
        data['path'] = input[:path] unless input[:path].nil?
        data['values'] = Builders::ExperimentTemplateTargetFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ExperimentTemplateTargetFilterValues
    class ExperimentTemplateTargetFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceArnList
    class ResourceArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CreateExperimentTemplateStopConditionInputList
    class CreateExperimentTemplateStopConditionInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateExperimentTemplateStopConditionInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateExperimentTemplateStopConditionInput
    class CreateExperimentTemplateStopConditionInput
      def self.build(input)
        data = {}
        data['source'] = input[:source] unless input[:source].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteExperimentTemplate
    class DeleteExperimentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/experimentTemplates/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAction
    class GetAction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/actions/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExperiment
    class GetExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/experiments/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExperimentTemplate
    class GetExperimentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/experimentTemplates/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTargetResourceType
    class GetTargetResourceType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/targetResourceTypes/%<resourceType>s',
            resourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListActions
    class ListActions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/actions')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListExperimentTemplates
    class ListExperimentTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/experimentTemplates')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListExperiments
    class ListExperiments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/experiments')
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

    # Operation Builder for ListTargetResourceTypes
    class ListTargetResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/targetResourceTypes')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartExperiment
    class StartExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/experiments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['experimentTemplateId'] = input[:experiment_template_id] unless input[:experiment_template_id].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopExperiment
    class StopExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/experiments/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateExperimentTemplate
    class UpdateExperimentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/experimentTemplates/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['stopConditions'] = Builders::UpdateExperimentTemplateStopConditionInputList.build(input[:stop_conditions]) unless input[:stop_conditions].nil?
        data['targets'] = Builders::UpdateExperimentTemplateTargetInputMap.build(input[:targets]) unless input[:targets].nil?
        data['actions'] = Builders::UpdateExperimentTemplateActionInputMap.build(input[:actions]) unless input[:actions].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['logConfiguration'] = Builders::UpdateExperimentTemplateLogConfigurationInput.build(input[:log_configuration]) unless input[:log_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateExperimentTemplateLogConfigurationInput
    class UpdateExperimentTemplateLogConfigurationInput
      def self.build(input)
        data = {}
        data['cloudWatchLogsConfiguration'] = Builders::ExperimentTemplateCloudWatchLogsLogConfigurationInput.build(input[:cloud_watch_logs_configuration]) unless input[:cloud_watch_logs_configuration].nil?
        data['s3Configuration'] = Builders::ExperimentTemplateS3LogConfigurationInput.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['logSchemaVersion'] = input[:log_schema_version] unless input[:log_schema_version].nil?
        data
      end
    end

    # Map Builder for UpdateExperimentTemplateActionInputMap
    class UpdateExperimentTemplateActionInputMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::UpdateExperimentTemplateActionInputItem.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateExperimentTemplateActionInputItem
    class UpdateExperimentTemplateActionInputItem
      def self.build(input)
        data = {}
        data['actionId'] = input[:action_id] unless input[:action_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['parameters'] = Builders::ExperimentTemplateActionParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data['targets'] = Builders::ExperimentTemplateActionTargetMap.build(input[:targets]) unless input[:targets].nil?
        data['startAfter'] = Builders::ExperimentTemplateActionStartAfterList.build(input[:start_after]) unless input[:start_after].nil?
        data
      end
    end

    # Map Builder for UpdateExperimentTemplateTargetInputMap
    class UpdateExperimentTemplateTargetInputMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::UpdateExperimentTemplateTargetInput.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateExperimentTemplateTargetInput
    class UpdateExperimentTemplateTargetInput
      def self.build(input)
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceArns'] = Builders::ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['resourceTags'] = Builders::TagMap.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['filters'] = Builders::ExperimentTemplateTargetFilterInputList.build(input[:filters]) unless input[:filters].nil?
        data['selectionMode'] = input[:selection_mode] unless input[:selection_mode].nil?
        data['parameters'] = Builders::ExperimentTemplateTargetParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for UpdateExperimentTemplateStopConditionInputList
    class UpdateExperimentTemplateStopConditionInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateExperimentTemplateStopConditionInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateExperimentTemplateStopConditionInput
    class UpdateExperimentTemplateStopConditionInput
      def self.build(input)
        data = {}
        data['source'] = input[:source] unless input[:source].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end
  end
end
