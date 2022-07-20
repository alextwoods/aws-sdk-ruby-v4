# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodePipeline
  module Builders

    # Operation Builder for AcknowledgeJob
    class AcknowledgeJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.AcknowledgeJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['nonce'] = input[:nonce] unless input[:nonce].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AcknowledgeThirdPartyJob
    class AcknowledgeThirdPartyJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.AcknowledgeThirdPartyJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['nonce'] = input[:nonce] unless input[:nonce].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCustomActionType
    class CreateCustomActionType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.CreateCustomActionType'
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['settings'] = Builders::ActionTypeSettings.build(input[:settings]) unless input[:settings].nil?
        data['configurationProperties'] = Builders::ActionConfigurationPropertyList.build(input[:configuration_properties]) unless input[:configuration_properties].nil?
        data['inputArtifactDetails'] = Builders::ArtifactDetails.build(input[:input_artifact_details]) unless input[:input_artifact_details].nil?
        data['outputArtifactDetails'] = Builders::ArtifactDetails.build(input[:output_artifact_details]) unless input[:output_artifact_details].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ArtifactDetails
    class ArtifactDetails
      def self.build(input)
        data = {}
        data['minimumCount'] = input[:minimum_count] unless input[:minimum_count].nil?
        data['maximumCount'] = input[:maximum_count] unless input[:maximum_count].nil?
        data
      end
    end

    # List Builder for ActionConfigurationPropertyList
    class ActionConfigurationPropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ActionConfigurationProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActionConfigurationProperty
    class ActionConfigurationProperty
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['required'] = input[:required] unless input[:required].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['secret'] = input[:secret] unless input[:secret].nil?
        data['queryable'] = input[:queryable] unless input[:queryable].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for ActionTypeSettings
    class ActionTypeSettings
      def self.build(input)
        data = {}
        data['thirdPartyConfigurationUrl'] = input[:third_party_configuration_url] unless input[:third_party_configuration_url].nil?
        data['entityUrlTemplate'] = input[:entity_url_template] unless input[:entity_url_template].nil?
        data['executionUrlTemplate'] = input[:execution_url_template] unless input[:execution_url_template].nil?
        data['revisionUrlTemplate'] = input[:revision_url_template] unless input[:revision_url_template].nil?
        data
      end
    end

    # Operation Builder for CreatePipeline
    class CreatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.CreatePipeline'
        data = {}
        data['pipeline'] = Builders::PipelineDeclaration.build(input[:pipeline]) unless input[:pipeline].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PipelineDeclaration
    class PipelineDeclaration
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['artifactStore'] = Builders::ArtifactStore.build(input[:artifact_store]) unless input[:artifact_store].nil?
        data['artifactStores'] = Builders::ArtifactStoreMap.build(input[:artifact_stores]) unless input[:artifact_stores].nil?
        data['stages'] = Builders::PipelineStageDeclarationList.build(input[:stages]) unless input[:stages].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # List Builder for PipelineStageDeclarationList
    class PipelineStageDeclarationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StageDeclaration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StageDeclaration
    class StageDeclaration
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['blockers'] = Builders::StageBlockerDeclarationList.build(input[:blockers]) unless input[:blockers].nil?
        data['actions'] = Builders::StageActionDeclarationList.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # List Builder for StageActionDeclarationList
    class StageActionDeclarationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ActionDeclaration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActionDeclaration
    class ActionDeclaration
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['actionTypeId'] = Builders::ActionTypeId.build(input[:action_type_id]) unless input[:action_type_id].nil?
        data['runOrder'] = input[:run_order] unless input[:run_order].nil?
        data['configuration'] = Builders::ActionConfigurationMap.build(input[:configuration]) unless input[:configuration].nil?
        data['outputArtifacts'] = Builders::OutputArtifactList.build(input[:output_artifacts]) unless input[:output_artifacts].nil?
        data['inputArtifacts'] = Builders::InputArtifactList.build(input[:input_artifacts]) unless input[:input_artifacts].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['region'] = input[:region] unless input[:region].nil?
        data['namespace'] = input[:namespace] unless input[:namespace].nil?
        data
      end
    end

    # List Builder for InputArtifactList
    class InputArtifactList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputArtifact.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputArtifact
    class InputArtifact
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for OutputArtifactList
    class OutputArtifactList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputArtifact.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputArtifact
    class OutputArtifact
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Map Builder for ActionConfigurationMap
    class ActionConfigurationMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ActionTypeId
    class ActionTypeId
      def self.build(input)
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # List Builder for StageBlockerDeclarationList
    class StageBlockerDeclarationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BlockerDeclaration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BlockerDeclaration
    class BlockerDeclaration
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Map Builder for ArtifactStoreMap
    class ArtifactStoreMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ArtifactStore.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ArtifactStore
    class ArtifactStore
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['encryptionKey'] = Builders::EncryptionKey.build(input[:encryption_key]) unless input[:encryption_key].nil?
        data
      end
    end

    # Structure Builder for EncryptionKey
    class EncryptionKey
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for DeleteCustomActionType
    class DeleteCustomActionType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.DeleteCustomActionType'
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePipeline
    class DeletePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.DeletePipeline'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWebhook
    class DeleteWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.DeleteWebhook'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterWebhookWithThirdParty
    class DeregisterWebhookWithThirdParty
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.DeregisterWebhookWithThirdParty'
        data = {}
        data['webhookName'] = input[:webhook_name] unless input[:webhook_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableStageTransition
    class DisableStageTransition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.DisableStageTransition'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['transitionType'] = input[:transition_type] unless input[:transition_type].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableStageTransition
    class EnableStageTransition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.EnableStageTransition'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['transitionType'] = input[:transition_type] unless input[:transition_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetActionType
    class GetActionType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.GetActionType'
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobDetails
    class GetJobDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.GetJobDetails'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPipeline
    class GetPipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.GetPipeline'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPipelineExecution
    class GetPipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.GetPipelineExecution'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['pipelineExecutionId'] = input[:pipeline_execution_id] unless input[:pipeline_execution_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPipelineState
    class GetPipelineState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.GetPipelineState'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetThirdPartyJobDetails
    class GetThirdPartyJobDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.GetThirdPartyJobDetails'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListActionExecutions
    class ListActionExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.ListActionExecutions'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['filter'] = Builders::ActionExecutionFilter.build(input[:filter]) unless input[:filter].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ActionExecutionFilter
    class ActionExecutionFilter
      def self.build(input)
        data = {}
        data['pipelineExecutionId'] = input[:pipeline_execution_id] unless input[:pipeline_execution_id].nil?
        data
      end
    end

    # Operation Builder for ListActionTypes
    class ListActionTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.ListActionTypes'
        data = {}
        data['actionOwnerFilter'] = input[:action_owner_filter] unless input[:action_owner_filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['regionFilter'] = input[:region_filter] unless input[:region_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelineExecutions
    class ListPipelineExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.ListPipelineExecutions'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelines
    class ListPipelines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.ListPipelines'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWebhooks
    class ListWebhooks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.ListWebhooks'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PollForJobs
    class PollForJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PollForJobs'
        data = {}
        data['actionTypeId'] = Builders::ActionTypeId.build(input[:action_type_id]) unless input[:action_type_id].nil?
        data['maxBatchSize'] = input[:max_batch_size] unless input[:max_batch_size].nil?
        data['queryParam'] = Builders::QueryParamMap.build(input[:query_param]) unless input[:query_param].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for QueryParamMap
    class QueryParamMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for PollForThirdPartyJobs
    class PollForThirdPartyJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PollForThirdPartyJobs'
        data = {}
        data['actionTypeId'] = Builders::ActionTypeId.build(input[:action_type_id]) unless input[:action_type_id].nil?
        data['maxBatchSize'] = input[:max_batch_size] unless input[:max_batch_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutActionRevision
    class PutActionRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutActionRevision'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['actionName'] = input[:action_name] unless input[:action_name].nil?
        data['actionRevision'] = Builders::ActionRevision.build(input[:action_revision]) unless input[:action_revision].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ActionRevision
    class ActionRevision
      def self.build(input)
        data = {}
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['revisionChangeId'] = input[:revision_change_id] unless input[:revision_change_id].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(input[:created]).to_i unless input[:created].nil?
        data
      end
    end

    # Operation Builder for PutApprovalResult
    class PutApprovalResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutApprovalResult'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['actionName'] = input[:action_name] unless input[:action_name].nil?
        data['result'] = Builders::ApprovalResult.build(input[:result]) unless input[:result].nil?
        data['token'] = input[:token] unless input[:token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ApprovalResult
    class ApprovalResult
      def self.build(input)
        data = {}
        data['summary'] = input[:summary] unless input[:summary].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for PutJobFailureResult
    class PutJobFailureResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutJobFailureResult'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['failureDetails'] = Builders::FailureDetails.build(input[:failure_details]) unless input[:failure_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FailureDetails
    class FailureDetails
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['message'] = input[:message] unless input[:message].nil?
        data['externalExecutionId'] = input[:external_execution_id] unless input[:external_execution_id].nil?
        data
      end
    end

    # Operation Builder for PutJobSuccessResult
    class PutJobSuccessResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutJobSuccessResult'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['currentRevision'] = Builders::CurrentRevision.build(input[:current_revision]) unless input[:current_revision].nil?
        data['continuationToken'] = input[:continuation_token] unless input[:continuation_token].nil?
        data['executionDetails'] = Builders::ExecutionDetails.build(input[:execution_details]) unless input[:execution_details].nil?
        data['outputVariables'] = Builders::OutputVariablesMap.build(input[:output_variables]) unless input[:output_variables].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for OutputVariablesMap
    class OutputVariablesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ExecutionDetails
    class ExecutionDetails
      def self.build(input)
        data = {}
        data['summary'] = input[:summary] unless input[:summary].nil?
        data['externalExecutionId'] = input[:external_execution_id] unless input[:external_execution_id].nil?
        data['percentComplete'] = input[:percent_complete] unless input[:percent_complete].nil?
        data
      end
    end

    # Structure Builder for CurrentRevision
    class CurrentRevision
      def self.build(input)
        data = {}
        data['revision'] = input[:revision] unless input[:revision].nil?
        data['changeIdentifier'] = input[:change_identifier] unless input[:change_identifier].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(input[:created]).to_i unless input[:created].nil?
        data['revisionSummary'] = input[:revision_summary] unless input[:revision_summary].nil?
        data
      end
    end

    # Operation Builder for PutThirdPartyJobFailureResult
    class PutThirdPartyJobFailureResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutThirdPartyJobFailureResult'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['failureDetails'] = Builders::FailureDetails.build(input[:failure_details]) unless input[:failure_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutThirdPartyJobSuccessResult
    class PutThirdPartyJobSuccessResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutThirdPartyJobSuccessResult'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['currentRevision'] = Builders::CurrentRevision.build(input[:current_revision]) unless input[:current_revision].nil?
        data['continuationToken'] = input[:continuation_token] unless input[:continuation_token].nil?
        data['executionDetails'] = Builders::ExecutionDetails.build(input[:execution_details]) unless input[:execution_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutWebhook
    class PutWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.PutWebhook'
        data = {}
        data['webhook'] = Builders::WebhookDefinition.build(input[:webhook]) unless input[:webhook].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WebhookDefinition
    class WebhookDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['targetPipeline'] = input[:target_pipeline] unless input[:target_pipeline].nil?
        data['targetAction'] = input[:target_action] unless input[:target_action].nil?
        data['filters'] = Builders::WebhookFilters.build(input[:filters]) unless input[:filters].nil?
        data['authentication'] = input[:authentication] unless input[:authentication].nil?
        data['authenticationConfiguration'] = Builders::WebhookAuthConfiguration.build(input[:authentication_configuration]) unless input[:authentication_configuration].nil?
        data
      end
    end

    # Structure Builder for WebhookAuthConfiguration
    class WebhookAuthConfiguration
      def self.build(input)
        data = {}
        data['AllowedIPRange'] = input[:allowed_ip_range] unless input[:allowed_ip_range].nil?
        data['SecretToken'] = input[:secret_token] unless input[:secret_token].nil?
        data
      end
    end

    # List Builder for WebhookFilters
    class WebhookFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WebhookFilterRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WebhookFilterRule
    class WebhookFilterRule
      def self.build(input)
        data = {}
        data['jsonPath'] = input[:json_path] unless input[:json_path].nil?
        data['matchEquals'] = input[:match_equals] unless input[:match_equals].nil?
        data
      end
    end

    # Operation Builder for RegisterWebhookWithThirdParty
    class RegisterWebhookWithThirdParty
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.RegisterWebhookWithThirdParty'
        data = {}
        data['webhookName'] = input[:webhook_name] unless input[:webhook_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetryStageExecution
    class RetryStageExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.RetryStageExecution'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['pipelineExecutionId'] = input[:pipeline_execution_id] unless input[:pipeline_execution_id].nil?
        data['retryMode'] = input[:retry_mode] unless input[:retry_mode].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartPipelineExecution
    class StartPipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.StartPipelineExecution'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopPipelineExecution
    class StopPipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.StopPipelineExecution'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['pipelineExecutionId'] = input[:pipeline_execution_id] unless input[:pipeline_execution_id].nil?
        data['abandon'] = input[:abandon] unless input[:abandon].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateActionType
    class UpdateActionType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.UpdateActionType'
        data = {}
        data['actionType'] = Builders::ActionTypeDeclaration.build(input[:action_type]) unless input[:action_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ActionTypeDeclaration
    class ActionTypeDeclaration
      def self.build(input)
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['executor'] = Builders::ActionTypeExecutor.build(input[:executor]) unless input[:executor].nil?
        data['id'] = Builders::ActionTypeIdentifier.build(input[:id]) unless input[:id].nil?
        data['inputArtifactDetails'] = Builders::ActionTypeArtifactDetails.build(input[:input_artifact_details]) unless input[:input_artifact_details].nil?
        data['outputArtifactDetails'] = Builders::ActionTypeArtifactDetails.build(input[:output_artifact_details]) unless input[:output_artifact_details].nil?
        data['permissions'] = Builders::ActionTypePermissions.build(input[:permissions]) unless input[:permissions].nil?
        data['properties'] = Builders::ActionTypeProperties.build(input[:properties]) unless input[:properties].nil?
        data['urls'] = Builders::ActionTypeUrls.build(input[:urls]) unless input[:urls].nil?
        data
      end
    end

    # Structure Builder for ActionTypeUrls
    class ActionTypeUrls
      def self.build(input)
        data = {}
        data['configurationUrl'] = input[:configuration_url] unless input[:configuration_url].nil?
        data['entityUrlTemplate'] = input[:entity_url_template] unless input[:entity_url_template].nil?
        data['executionUrlTemplate'] = input[:execution_url_template] unless input[:execution_url_template].nil?
        data['revisionUrlTemplate'] = input[:revision_url_template] unless input[:revision_url_template].nil?
        data
      end
    end

    # List Builder for ActionTypeProperties
    class ActionTypeProperties
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ActionTypeProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActionTypeProperty
    class ActionTypeProperty
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['optional'] = input[:optional] unless input[:optional].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['noEcho'] = input[:no_echo] unless input[:no_echo].nil?
        data['queryable'] = input[:queryable] unless input[:queryable].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Structure Builder for ActionTypePermissions
    class ActionTypePermissions
      def self.build(input)
        data = {}
        data['allowedAccounts'] = Builders::AllowedAccounts.build(input[:allowed_accounts]) unless input[:allowed_accounts].nil?
        data
      end
    end

    # List Builder for AllowedAccounts
    class AllowedAccounts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActionTypeArtifactDetails
    class ActionTypeArtifactDetails
      def self.build(input)
        data = {}
        data['minimumCount'] = input[:minimum_count] unless input[:minimum_count].nil?
        data['maximumCount'] = input[:maximum_count] unless input[:maximum_count].nil?
        data
      end
    end

    # Structure Builder for ActionTypeIdentifier
    class ActionTypeIdentifier
      def self.build(input)
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for ActionTypeExecutor
    class ActionTypeExecutor
      def self.build(input)
        data = {}
        data['configuration'] = Builders::ExecutorConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['policyStatementsTemplate'] = input[:policy_statements_template] unless input[:policy_statements_template].nil?
        data['jobTimeout'] = input[:job_timeout] unless input[:job_timeout].nil?
        data
      end
    end

    # Structure Builder for ExecutorConfiguration
    class ExecutorConfiguration
      def self.build(input)
        data = {}
        data['lambdaExecutorConfiguration'] = Builders::LambdaExecutorConfiguration.build(input[:lambda_executor_configuration]) unless input[:lambda_executor_configuration].nil?
        data['jobWorkerExecutorConfiguration'] = Builders::JobWorkerExecutorConfiguration.build(input[:job_worker_executor_configuration]) unless input[:job_worker_executor_configuration].nil?
        data
      end
    end

    # Structure Builder for JobWorkerExecutorConfiguration
    class JobWorkerExecutorConfiguration
      def self.build(input)
        data = {}
        data['pollingAccounts'] = Builders::PollingAccountList.build(input[:polling_accounts]) unless input[:polling_accounts].nil?
        data['pollingServicePrincipals'] = Builders::PollingServicePrincipalList.build(input[:polling_service_principals]) unless input[:polling_service_principals].nil?
        data
      end
    end

    # List Builder for PollingServicePrincipalList
    class PollingServicePrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PollingAccountList
    class PollingAccountList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaExecutorConfiguration
    class LambdaExecutorConfiguration
      def self.build(input)
        data = {}
        data['lambdaFunctionArn'] = input[:lambda_function_arn] unless input[:lambda_function_arn].nil?
        data
      end
    end

    # Operation Builder for UpdatePipeline
    class UpdatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodePipeline_20150709.UpdatePipeline'
        data = {}
        data['pipeline'] = Builders::PipelineDeclaration.build(input[:pipeline]) unless input[:pipeline].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
