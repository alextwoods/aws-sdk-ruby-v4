# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CodePipeline
  module Parsers

    # Operation Parser for AcknowledgeJob
    class AcknowledgeJob
      def self.parse(http_resp)
        data = Types::AcknowledgeJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data
      end
    end

    # Error Parser for InvalidNonceException
    class InvalidNonceException
      def self.parse(http_resp)
        data = Types::InvalidNonceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for JobNotFoundException
    class JobNotFoundException
      def self.parse(http_resp)
        data = Types::JobNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AcknowledgeThirdPartyJob
    class AcknowledgeThirdPartyJob
      def self.parse(http_resp)
        data = Types::AcknowledgeThirdPartyJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data
      end
    end

    # Error Parser for InvalidClientTokenException
    class InvalidClientTokenException
      def self.parse(http_resp)
        data = Types::InvalidClientTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateCustomActionType
    class CreateCustomActionType
      def self.parse(http_resp)
        data = Types::CreateCustomActionTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_type = (Parsers::ActionType.parse(map['actionType']) unless map['actionType'].nil?)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class ActionType
      def self.parse(map)
        data = Types::ActionType.new
        data.id = (Parsers::ActionTypeId.parse(map['id']) unless map['id'].nil?)
        data.settings = (Parsers::ActionTypeSettings.parse(map['settings']) unless map['settings'].nil?)
        data.action_configuration_properties = (Parsers::ActionConfigurationPropertyList.parse(map['actionConfigurationProperties']) unless map['actionConfigurationProperties'].nil?)
        data.input_artifact_details = (Parsers::ArtifactDetails.parse(map['inputArtifactDetails']) unless map['inputArtifactDetails'].nil?)
        data.output_artifact_details = (Parsers::ArtifactDetails.parse(map['outputArtifactDetails']) unless map['outputArtifactDetails'].nil?)
        return data
      end
    end

    class ArtifactDetails
      def self.parse(map)
        data = Types::ArtifactDetails.new
        data.minimum_count = map['minimumCount']
        data.maximum_count = map['maximumCount']
        return data
      end
    end

    class ActionConfigurationPropertyList
      def self.parse(list)
        list.map do |value|
          Parsers::ActionConfigurationProperty.parse(value) unless value.nil?
        end
      end
    end

    class ActionConfigurationProperty
      def self.parse(map)
        data = Types::ActionConfigurationProperty.new
        data.name = map['name']
        data.required = map['required']
        data.key = map['key']
        data.secret = map['secret']
        data.queryable = map['queryable']
        data.description = map['description']
        data.type = map['type']
        return data
      end
    end

    class ActionTypeSettings
      def self.parse(map)
        data = Types::ActionTypeSettings.new
        data.third_party_configuration_url = map['thirdPartyConfigurationUrl']
        data.entity_url_template = map['entityUrlTemplate']
        data.execution_url_template = map['executionUrlTemplate']
        data.revision_url_template = map['revisionUrlTemplate']
        return data
      end
    end

    class ActionTypeId
      def self.parse(map)
        data = Types::ActionTypeId.new
        data.category = map['category']
        data.owner = map['owner']
        data.provider = map['provider']
        data.version = map['version']
        return data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagsException
    class InvalidTagsException
      def self.parse(http_resp)
        data = Types::InvalidTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreatePipeline
    class CreatePipeline
      def self.parse(http_resp)
        data = Types::CreatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline = (Parsers::PipelineDeclaration.parse(map['pipeline']) unless map['pipeline'].nil?)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class PipelineDeclaration
      def self.parse(map)
        data = Types::PipelineDeclaration.new
        data.name = map['name']
        data.role_arn = map['roleArn']
        data.artifact_store = (Parsers::ArtifactStore.parse(map['artifactStore']) unless map['artifactStore'].nil?)
        data.artifact_stores = (Parsers::ArtifactStoreMap.parse(map['artifactStores']) unless map['artifactStores'].nil?)
        data.stages = (Parsers::PipelineStageDeclarationList.parse(map['stages']) unless map['stages'].nil?)
        data.version = map['version']
        return data
      end
    end

    class PipelineStageDeclarationList
      def self.parse(list)
        list.map do |value|
          Parsers::StageDeclaration.parse(value) unless value.nil?
        end
      end
    end

    class StageDeclaration
      def self.parse(map)
        data = Types::StageDeclaration.new
        data.name = map['name']
        data.blockers = (Parsers::StageBlockerDeclarationList.parse(map['blockers']) unless map['blockers'].nil?)
        data.actions = (Parsers::StageActionDeclarationList.parse(map['actions']) unless map['actions'].nil?)
        return data
      end
    end

    class StageActionDeclarationList
      def self.parse(list)
        list.map do |value|
          Parsers::ActionDeclaration.parse(value) unless value.nil?
        end
      end
    end

    class ActionDeclaration
      def self.parse(map)
        data = Types::ActionDeclaration.new
        data.name = map['name']
        data.action_type_id = (Parsers::ActionTypeId.parse(map['actionTypeId']) unless map['actionTypeId'].nil?)
        data.run_order = map['runOrder']
        data.configuration = (Parsers::ActionConfigurationMap.parse(map['configuration']) unless map['configuration'].nil?)
        data.output_artifacts = (Parsers::OutputArtifactList.parse(map['outputArtifacts']) unless map['outputArtifacts'].nil?)
        data.input_artifacts = (Parsers::InputArtifactList.parse(map['inputArtifacts']) unless map['inputArtifacts'].nil?)
        data.role_arn = map['roleArn']
        data.region = map['region']
        data.namespace = map['namespace']
        return data
      end
    end

    class InputArtifactList
      def self.parse(list)
        list.map do |value|
          Parsers::InputArtifact.parse(value) unless value.nil?
        end
      end
    end

    class InputArtifact
      def self.parse(map)
        data = Types::InputArtifact.new
        data.name = map['name']
        return data
      end
    end

    class OutputArtifactList
      def self.parse(list)
        list.map do |value|
          Parsers::OutputArtifact.parse(value) unless value.nil?
        end
      end
    end

    class OutputArtifact
      def self.parse(map)
        data = Types::OutputArtifact.new
        data.name = map['name']
        return data
      end
    end

    class ActionConfigurationMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class StageBlockerDeclarationList
      def self.parse(list)
        list.map do |value|
          Parsers::BlockerDeclaration.parse(value) unless value.nil?
        end
      end
    end

    class BlockerDeclaration
      def self.parse(map)
        data = Types::BlockerDeclaration.new
        data.name = map['name']
        data.type = map['type']
        return data
      end
    end

    class ArtifactStoreMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ArtifactStore.parse(value) unless value.nil?
        end
        data
      end
    end

    class ArtifactStore
      def self.parse(map)
        data = Types::ArtifactStore.new
        data.type = map['type']
        data.location = map['location']
        data.encryption_key = (Parsers::EncryptionKey.parse(map['encryptionKey']) unless map['encryptionKey'].nil?)
        return data
      end
    end

    class EncryptionKey
      def self.parse(map)
        data = Types::EncryptionKey.new
        data.id = map['id']
        data.type = map['type']
        return data
      end
    end

    # Error Parser for InvalidActionDeclarationException
    class InvalidActionDeclarationException
      def self.parse(http_resp)
        data = Types::InvalidActionDeclarationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidBlockerDeclarationException
    class InvalidBlockerDeclarationException
      def self.parse(http_resp)
        data = Types::InvalidBlockerDeclarationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidStageDeclarationException
    class InvalidStageDeclarationException
      def self.parse(http_resp)
        data = Types::InvalidStageDeclarationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidStructureException
    class InvalidStructureException
      def self.parse(http_resp)
        data = Types::InvalidStructureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PipelineNameInUseException
    class PipelineNameInUseException
      def self.parse(http_resp)
        data = Types::PipelineNameInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteCustomActionType
    class DeleteCustomActionType
      def self.parse(http_resp)
        data = Types::DeleteCustomActionTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePipeline
    class DeletePipeline
      def self.parse(http_resp)
        data = Types::DeletePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWebhook
    class DeleteWebhook
      def self.parse(http_resp)
        data = Types::DeleteWebhookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterWebhookWithThirdParty
    class DeregisterWebhookWithThirdParty
      def self.parse(http_resp)
        data = Types::DeregisterWebhookWithThirdPartyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for WebhookNotFoundException
    class WebhookNotFoundException
      def self.parse(http_resp)
        data = Types::WebhookNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisableStageTransition
    class DisableStageTransition
      def self.parse(http_resp)
        data = Types::DisableStageTransitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PipelineNotFoundException
    class PipelineNotFoundException
      def self.parse(http_resp)
        data = Types::PipelineNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StageNotFoundException
    class StageNotFoundException
      def self.parse(http_resp)
        data = Types::StageNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for EnableStageTransition
    class EnableStageTransition
      def self.parse(http_resp)
        data = Types::EnableStageTransitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetActionType
    class GetActionType
      def self.parse(http_resp)
        data = Types::GetActionTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_type = (Parsers::ActionTypeDeclaration.parse(map['actionType']) unless map['actionType'].nil?)
        data
      end
    end

    class ActionTypeDeclaration
      def self.parse(map)
        data = Types::ActionTypeDeclaration.new
        data.description = map['description']
        data.executor = (Parsers::ActionTypeExecutor.parse(map['executor']) unless map['executor'].nil?)
        data.id = (Parsers::ActionTypeIdentifier.parse(map['id']) unless map['id'].nil?)
        data.input_artifact_details = (Parsers::ActionTypeArtifactDetails.parse(map['inputArtifactDetails']) unless map['inputArtifactDetails'].nil?)
        data.output_artifact_details = (Parsers::ActionTypeArtifactDetails.parse(map['outputArtifactDetails']) unless map['outputArtifactDetails'].nil?)
        data.permissions = (Parsers::ActionTypePermissions.parse(map['permissions']) unless map['permissions'].nil?)
        data.properties = (Parsers::ActionTypeProperties.parse(map['properties']) unless map['properties'].nil?)
        data.urls = (Parsers::ActionTypeUrls.parse(map['urls']) unless map['urls'].nil?)
        return data
      end
    end

    class ActionTypeUrls
      def self.parse(map)
        data = Types::ActionTypeUrls.new
        data.configuration_url = map['configurationUrl']
        data.entity_url_template = map['entityUrlTemplate']
        data.execution_url_template = map['executionUrlTemplate']
        data.revision_url_template = map['revisionUrlTemplate']
        return data
      end
    end

    class ActionTypeProperties
      def self.parse(list)
        list.map do |value|
          Parsers::ActionTypeProperty.parse(value) unless value.nil?
        end
      end
    end

    class ActionTypeProperty
      def self.parse(map)
        data = Types::ActionTypeProperty.new
        data.name = map['name']
        data.optional = map['optional']
        data.key = map['key']
        data.no_echo = map['noEcho']
        data.queryable = map['queryable']
        data.description = map['description']
        return data
      end
    end

    class ActionTypePermissions
      def self.parse(map)
        data = Types::ActionTypePermissions.new
        data.allowed_accounts = (Parsers::AllowedAccounts.parse(map['allowedAccounts']) unless map['allowedAccounts'].nil?)
        return data
      end
    end

    class AllowedAccounts
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ActionTypeArtifactDetails
      def self.parse(map)
        data = Types::ActionTypeArtifactDetails.new
        data.minimum_count = map['minimumCount']
        data.maximum_count = map['maximumCount']
        return data
      end
    end

    class ActionTypeIdentifier
      def self.parse(map)
        data = Types::ActionTypeIdentifier.new
        data.category = map['category']
        data.owner = map['owner']
        data.provider = map['provider']
        data.version = map['version']
        return data
      end
    end

    class ActionTypeExecutor
      def self.parse(map)
        data = Types::ActionTypeExecutor.new
        data.configuration = (Parsers::ExecutorConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data.type = map['type']
        data.policy_statements_template = map['policyStatementsTemplate']
        data.job_timeout = map['jobTimeout']
        return data
      end
    end

    class ExecutorConfiguration
      def self.parse(map)
        data = Types::ExecutorConfiguration.new
        data.lambda_executor_configuration = (Parsers::LambdaExecutorConfiguration.parse(map['lambdaExecutorConfiguration']) unless map['lambdaExecutorConfiguration'].nil?)
        data.job_worker_executor_configuration = (Parsers::JobWorkerExecutorConfiguration.parse(map['jobWorkerExecutorConfiguration']) unless map['jobWorkerExecutorConfiguration'].nil?)
        return data
      end
    end

    class JobWorkerExecutorConfiguration
      def self.parse(map)
        data = Types::JobWorkerExecutorConfiguration.new
        data.polling_accounts = (Parsers::PollingAccountList.parse(map['pollingAccounts']) unless map['pollingAccounts'].nil?)
        data.polling_service_principals = (Parsers::PollingServicePrincipalList.parse(map['pollingServicePrincipals']) unless map['pollingServicePrincipals'].nil?)
        return data
      end
    end

    class PollingServicePrincipalList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PollingAccountList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LambdaExecutorConfiguration
      def self.parse(map)
        data = Types::LambdaExecutorConfiguration.new
        data.lambda_function_arn = map['lambdaFunctionArn']
        return data
      end
    end

    # Error Parser for ActionTypeNotFoundException
    class ActionTypeNotFoundException
      def self.parse(http_resp)
        data = Types::ActionTypeNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetJobDetails
    class GetJobDetails
      def self.parse(http_resp)
        data = Types::GetJobDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_details = (Parsers::JobDetails.parse(map['jobDetails']) unless map['jobDetails'].nil?)
        data
      end
    end

    class JobDetails
      def self.parse(map)
        data = Types::JobDetails.new
        data.id = map['id']
        data.data = (Parsers::JobData.parse(map['data']) unless map['data'].nil?)
        data.account_id = map['accountId']
        return data
      end
    end

    class JobData
      def self.parse(map)
        data = Types::JobData.new
        data.action_type_id = (Parsers::ActionTypeId.parse(map['actionTypeId']) unless map['actionTypeId'].nil?)
        data.action_configuration = (Parsers::ActionConfiguration.parse(map['actionConfiguration']) unless map['actionConfiguration'].nil?)
        data.pipeline_context = (Parsers::PipelineContext.parse(map['pipelineContext']) unless map['pipelineContext'].nil?)
        data.input_artifacts = (Parsers::ArtifactList.parse(map['inputArtifacts']) unless map['inputArtifacts'].nil?)
        data.output_artifacts = (Parsers::ArtifactList.parse(map['outputArtifacts']) unless map['outputArtifacts'].nil?)
        data.artifact_credentials = (Parsers::AWSSessionCredentials.parse(map['artifactCredentials']) unless map['artifactCredentials'].nil?)
        data.continuation_token = map['continuationToken']
        data.encryption_key = (Parsers::EncryptionKey.parse(map['encryptionKey']) unless map['encryptionKey'].nil?)
        return data
      end
    end

    class AWSSessionCredentials
      def self.parse(map)
        data = Types::AWSSessionCredentials.new
        data.access_key_id = map['accessKeyId']
        data.secret_access_key = map['secretAccessKey']
        data.session_token = map['sessionToken']
        return data
      end
    end

    class ArtifactList
      def self.parse(list)
        list.map do |value|
          Parsers::Artifact.parse(value) unless value.nil?
        end
      end
    end

    class Artifact
      def self.parse(map)
        data = Types::Artifact.new
        data.name = map['name']
        data.revision = map['revision']
        data.location = (Parsers::ArtifactLocation.parse(map['location']) unless map['location'].nil?)
        return data
      end
    end

    class ArtifactLocation
      def self.parse(map)
        data = Types::ArtifactLocation.new
        data.type = map['type']
        data.s3_location = (Parsers::S3ArtifactLocation.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    class S3ArtifactLocation
      def self.parse(map)
        data = Types::S3ArtifactLocation.new
        data.bucket_name = map['bucketName']
        data.object_key = map['objectKey']
        return data
      end
    end

    class PipelineContext
      def self.parse(map)
        data = Types::PipelineContext.new
        data.pipeline_name = map['pipelineName']
        data.stage = (Parsers::StageContext.parse(map['stage']) unless map['stage'].nil?)
        data.action = (Parsers::ActionContext.parse(map['action']) unless map['action'].nil?)
        data.pipeline_arn = map['pipelineArn']
        data.pipeline_execution_id = map['pipelineExecutionId']
        return data
      end
    end

    class ActionContext
      def self.parse(map)
        data = Types::ActionContext.new
        data.name = map['name']
        data.action_execution_id = map['actionExecutionId']
        return data
      end
    end

    class StageContext
      def self.parse(map)
        data = Types::StageContext.new
        data.name = map['name']
        return data
      end
    end

    class ActionConfiguration
      def self.parse(map)
        data = Types::ActionConfiguration.new
        data.configuration = (Parsers::ActionConfigurationMap.parse(map['configuration']) unless map['configuration'].nil?)
        return data
      end
    end

    # Operation Parser for GetPipeline
    class GetPipeline
      def self.parse(http_resp)
        data = Types::GetPipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline = (Parsers::PipelineDeclaration.parse(map['pipeline']) unless map['pipeline'].nil?)
        data.metadata = (Parsers::PipelineMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data
      end
    end

    class PipelineMetadata
      def self.parse(map)
        data = Types::PipelineMetadata.new
        data.pipeline_arn = map['pipelineArn']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.updated = Time.at(map['updated'].to_i) if map['updated']
        return data
      end
    end

    # Error Parser for PipelineVersionNotFoundException
    class PipelineVersionNotFoundException
      def self.parse(http_resp)
        data = Types::PipelineVersionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetPipelineExecution
    class GetPipelineExecution
      def self.parse(http_resp)
        data = Types::GetPipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution = (Parsers::PipelineExecution.parse(map['pipelineExecution']) unless map['pipelineExecution'].nil?)
        data
      end
    end

    class PipelineExecution
      def self.parse(map)
        data = Types::PipelineExecution.new
        data.pipeline_name = map['pipelineName']
        data.pipeline_version = map['pipelineVersion']
        data.pipeline_execution_id = map['pipelineExecutionId']
        data.status = map['status']
        data.status_summary = map['statusSummary']
        data.artifact_revisions = (Parsers::ArtifactRevisionList.parse(map['artifactRevisions']) unless map['artifactRevisions'].nil?)
        return data
      end
    end

    class ArtifactRevisionList
      def self.parse(list)
        list.map do |value|
          Parsers::ArtifactRevision.parse(value) unless value.nil?
        end
      end
    end

    class ArtifactRevision
      def self.parse(map)
        data = Types::ArtifactRevision.new
        data.name = map['name']
        data.revision_id = map['revisionId']
        data.revision_change_identifier = map['revisionChangeIdentifier']
        data.revision_summary = map['revisionSummary']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.revision_url = map['revisionUrl']
        return data
      end
    end

    # Error Parser for PipelineExecutionNotFoundException
    class PipelineExecutionNotFoundException
      def self.parse(http_resp)
        data = Types::PipelineExecutionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetPipelineState
    class GetPipelineState
      def self.parse(http_resp)
        data = Types::GetPipelineStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_name = map['pipelineName']
        data.pipeline_version = map['pipelineVersion']
        data.stage_states = (Parsers::StageStateList.parse(map['stageStates']) unless map['stageStates'].nil?)
        data.created = Time.at(map['created'].to_i) if map['created']
        data.updated = Time.at(map['updated'].to_i) if map['updated']
        data
      end
    end

    class StageStateList
      def self.parse(list)
        list.map do |value|
          Parsers::StageState.parse(value) unless value.nil?
        end
      end
    end

    class StageState
      def self.parse(map)
        data = Types::StageState.new
        data.stage_name = map['stageName']
        data.inbound_execution = (Parsers::StageExecution.parse(map['inboundExecution']) unless map['inboundExecution'].nil?)
        data.inbound_transition_state = (Parsers::TransitionState.parse(map['inboundTransitionState']) unless map['inboundTransitionState'].nil?)
        data.action_states = (Parsers::ActionStateList.parse(map['actionStates']) unless map['actionStates'].nil?)
        data.latest_execution = (Parsers::StageExecution.parse(map['latestExecution']) unless map['latestExecution'].nil?)
        return data
      end
    end

    class StageExecution
      def self.parse(map)
        data = Types::StageExecution.new
        data.pipeline_execution_id = map['pipelineExecutionId']
        data.status = map['status']
        return data
      end
    end

    class ActionStateList
      def self.parse(list)
        list.map do |value|
          Parsers::ActionState.parse(value) unless value.nil?
        end
      end
    end

    class ActionState
      def self.parse(map)
        data = Types::ActionState.new
        data.action_name = map['actionName']
        data.current_revision = (Parsers::ActionRevision.parse(map['currentRevision']) unless map['currentRevision'].nil?)
        data.latest_execution = (Parsers::ActionExecution.parse(map['latestExecution']) unless map['latestExecution'].nil?)
        data.entity_url = map['entityUrl']
        data.revision_url = map['revisionUrl']
        return data
      end
    end

    class ActionExecution
      def self.parse(map)
        data = Types::ActionExecution.new
        data.action_execution_id = map['actionExecutionId']
        data.status = map['status']
        data.summary = map['summary']
        data.last_status_change = Time.at(map['lastStatusChange'].to_i) if map['lastStatusChange']
        data.token = map['token']
        data.last_updated_by = map['lastUpdatedBy']
        data.external_execution_id = map['externalExecutionId']
        data.external_execution_url = map['externalExecutionUrl']
        data.percent_complete = map['percentComplete']
        data.error_details = (Parsers::ErrorDetails.parse(map['errorDetails']) unless map['errorDetails'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(map)
        data = Types::ErrorDetails.new
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    class ActionRevision
      def self.parse(map)
        data = Types::ActionRevision.new
        data.revision_id = map['revisionId']
        data.revision_change_id = map['revisionChangeId']
        data.created = Time.at(map['created'].to_i) if map['created']
        return data
      end
    end

    class TransitionState
      def self.parse(map)
        data = Types::TransitionState.new
        data.enabled = map['enabled']
        data.last_changed_by = map['lastChangedBy']
        data.last_changed_at = Time.at(map['lastChangedAt'].to_i) if map['lastChangedAt']
        data.disabled_reason = map['disabledReason']
        return data
      end
    end

    # Operation Parser for GetThirdPartyJobDetails
    class GetThirdPartyJobDetails
      def self.parse(http_resp)
        data = Types::GetThirdPartyJobDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_details = (Parsers::ThirdPartyJobDetails.parse(map['jobDetails']) unless map['jobDetails'].nil?)
        data
      end
    end

    class ThirdPartyJobDetails
      def self.parse(map)
        data = Types::ThirdPartyJobDetails.new
        data.id = map['id']
        data.data = (Parsers::ThirdPartyJobData.parse(map['data']) unless map['data'].nil?)
        data.nonce = map['nonce']
        return data
      end
    end

    class ThirdPartyJobData
      def self.parse(map)
        data = Types::ThirdPartyJobData.new
        data.action_type_id = (Parsers::ActionTypeId.parse(map['actionTypeId']) unless map['actionTypeId'].nil?)
        data.action_configuration = (Parsers::ActionConfiguration.parse(map['actionConfiguration']) unless map['actionConfiguration'].nil?)
        data.pipeline_context = (Parsers::PipelineContext.parse(map['pipelineContext']) unless map['pipelineContext'].nil?)
        data.input_artifacts = (Parsers::ArtifactList.parse(map['inputArtifacts']) unless map['inputArtifacts'].nil?)
        data.output_artifacts = (Parsers::ArtifactList.parse(map['outputArtifacts']) unless map['outputArtifacts'].nil?)
        data.artifact_credentials = (Parsers::AWSSessionCredentials.parse(map['artifactCredentials']) unless map['artifactCredentials'].nil?)
        data.continuation_token = map['continuationToken']
        data.encryption_key = (Parsers::EncryptionKey.parse(map['encryptionKey']) unless map['encryptionKey'].nil?)
        return data
      end
    end

    # Error Parser for InvalidJobException
    class InvalidJobException
      def self.parse(http_resp)
        data = Types::InvalidJobException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListActionExecutions
    class ListActionExecutions
      def self.parse(http_resp)
        data = Types::ListActionExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_execution_details = (Parsers::ActionExecutionDetailList.parse(map['actionExecutionDetails']) unless map['actionExecutionDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ActionExecutionDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ActionExecutionDetail.parse(value) unless value.nil?
        end
      end
    end

    class ActionExecutionDetail
      def self.parse(map)
        data = Types::ActionExecutionDetail.new
        data.pipeline_execution_id = map['pipelineExecutionId']
        data.action_execution_id = map['actionExecutionId']
        data.pipeline_version = map['pipelineVersion']
        data.stage_name = map['stageName']
        data.action_name = map['actionName']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        data.input = (Parsers::ActionExecutionInput.parse(map['input']) unless map['input'].nil?)
        data.output = (Parsers::ActionExecutionOutput.parse(map['output']) unless map['output'].nil?)
        return data
      end
    end

    class ActionExecutionOutput
      def self.parse(map)
        data = Types::ActionExecutionOutput.new
        data.output_artifacts = (Parsers::ArtifactDetailList.parse(map['outputArtifacts']) unless map['outputArtifacts'].nil?)
        data.execution_result = (Parsers::ActionExecutionResult.parse(map['executionResult']) unless map['executionResult'].nil?)
        data.output_variables = (Parsers::OutputVariablesMap.parse(map['outputVariables']) unless map['outputVariables'].nil?)
        return data
      end
    end

    class OutputVariablesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ActionExecutionResult
      def self.parse(map)
        data = Types::ActionExecutionResult.new
        data.external_execution_id = map['externalExecutionId']
        data.external_execution_summary = map['externalExecutionSummary']
        data.external_execution_url = map['externalExecutionUrl']
        return data
      end
    end

    class ArtifactDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ArtifactDetail.parse(value) unless value.nil?
        end
      end
    end

    class ArtifactDetail
      def self.parse(map)
        data = Types::ArtifactDetail.new
        data.name = map['name']
        data.s3location = (Parsers::S3Location.parse(map['s3location']) unless map['s3location'].nil?)
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.key = map['key']
        return data
      end
    end

    class ActionExecutionInput
      def self.parse(map)
        data = Types::ActionExecutionInput.new
        data.action_type_id = (Parsers::ActionTypeId.parse(map['actionTypeId']) unless map['actionTypeId'].nil?)
        data.configuration = (Parsers::ActionConfigurationMap.parse(map['configuration']) unless map['configuration'].nil?)
        data.resolved_configuration = (Parsers::ResolvedActionConfigurationMap.parse(map['resolvedConfiguration']) unless map['resolvedConfiguration'].nil?)
        data.role_arn = map['roleArn']
        data.region = map['region']
        data.input_artifacts = (Parsers::ArtifactDetailList.parse(map['inputArtifacts']) unless map['inputArtifacts'].nil?)
        data.namespace = map['namespace']
        return data
      end
    end

    class ResolvedActionConfigurationMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListActionTypes
    class ListActionTypes
      def self.parse(http_resp)
        data = Types::ListActionTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_types = (Parsers::ActionTypeList.parse(map['actionTypes']) unless map['actionTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ActionTypeList
      def self.parse(list)
        list.map do |value|
          Parsers::ActionType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListPipelineExecutions
    class ListPipelineExecutions
      def self.parse(http_resp)
        data = Types::ListPipelineExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_summaries = (Parsers::PipelineExecutionSummaryList.parse(map['pipelineExecutionSummaries']) unless map['pipelineExecutionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PipelineExecutionSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineExecutionSummary.parse(value) unless value.nil?
        end
      end
    end

    class PipelineExecutionSummary
      def self.parse(map)
        data = Types::PipelineExecutionSummary.new
        data.pipeline_execution_id = map['pipelineExecutionId']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.source_revisions = (Parsers::SourceRevisionList.parse(map['sourceRevisions']) unless map['sourceRevisions'].nil?)
        data.trigger = (Parsers::ExecutionTrigger.parse(map['trigger']) unless map['trigger'].nil?)
        data.stop_trigger = (Parsers::StopExecutionTrigger.parse(map['stopTrigger']) unless map['stopTrigger'].nil?)
        return data
      end
    end

    class StopExecutionTrigger
      def self.parse(map)
        data = Types::StopExecutionTrigger.new
        data.reason = map['reason']
        return data
      end
    end

    class ExecutionTrigger
      def self.parse(map)
        data = Types::ExecutionTrigger.new
        data.trigger_type = map['triggerType']
        data.trigger_detail = map['triggerDetail']
        return data
      end
    end

    class SourceRevisionList
      def self.parse(list)
        list.map do |value|
          Parsers::SourceRevision.parse(value) unless value.nil?
        end
      end
    end

    class SourceRevision
      def self.parse(map)
        data = Types::SourceRevision.new
        data.action_name = map['actionName']
        data.revision_id = map['revisionId']
        data.revision_summary = map['revisionSummary']
        data.revision_url = map['revisionUrl']
        return data
      end
    end

    # Operation Parser for ListPipelines
    class ListPipelines
      def self.parse(http_resp)
        data = Types::ListPipelinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipelines = (Parsers::PipelineList.parse(map['pipelines']) unless map['pipelines'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PipelineList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineSummary.parse(value) unless value.nil?
        end
      end
    end

    class PipelineSummary
      def self.parse(map)
        data = Types::PipelineSummary.new
        data.name = map['name']
        data.version = map['version']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.updated = Time.at(map['updated'].to_i) if map['updated']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Error Parser for InvalidArnException
    class InvalidArnException
      def self.parse(http_resp)
        data = Types::InvalidArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListWebhooks
    class ListWebhooks
      def self.parse(http_resp)
        data = Types::ListWebhooksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.webhooks = (Parsers::WebhookList.parse(map['webhooks']) unless map['webhooks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WebhookList
      def self.parse(list)
        list.map do |value|
          Parsers::ListWebhookItem.parse(value) unless value.nil?
        end
      end
    end

    class ListWebhookItem
      def self.parse(map)
        data = Types::ListWebhookItem.new
        data.definition = (Parsers::WebhookDefinition.parse(map['definition']) unless map['definition'].nil?)
        data.url = map['url']
        data.error_message = map['errorMessage']
        data.error_code = map['errorCode']
        data.last_triggered = Time.at(map['lastTriggered'].to_i) if map['lastTriggered']
        data.arn = map['arn']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class WebhookDefinition
      def self.parse(map)
        data = Types::WebhookDefinition.new
        data.name = map['name']
        data.target_pipeline = map['targetPipeline']
        data.target_action = map['targetAction']
        data.filters = (Parsers::WebhookFilters.parse(map['filters']) unless map['filters'].nil?)
        data.authentication = map['authentication']
        data.authentication_configuration = (Parsers::WebhookAuthConfiguration.parse(map['authenticationConfiguration']) unless map['authenticationConfiguration'].nil?)
        return data
      end
    end

    class WebhookAuthConfiguration
      def self.parse(map)
        data = Types::WebhookAuthConfiguration.new
        data.allowed_ip_range = map['AllowedIPRange']
        data.secret_token = map['SecretToken']
        return data
      end
    end

    class WebhookFilters
      def self.parse(list)
        list.map do |value|
          Parsers::WebhookFilterRule.parse(value) unless value.nil?
        end
      end
    end

    class WebhookFilterRule
      def self.parse(map)
        data = Types::WebhookFilterRule.new
        data.json_path = map['jsonPath']
        data.match_equals = map['matchEquals']
        return data
      end
    end

    # Operation Parser for PollForJobs
    class PollForJobs
      def self.parse(http_resp)
        data = Types::PollForJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.jobs = (Parsers::JobList.parse(map['jobs']) unless map['jobs'].nil?)
        data
      end
    end

    class JobList
      def self.parse(list)
        list.map do |value|
          Parsers::Job.parse(value) unless value.nil?
        end
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.id = map['id']
        data.data = (Parsers::JobData.parse(map['data']) unless map['data'].nil?)
        data.nonce = map['nonce']
        data.account_id = map['accountId']
        return data
      end
    end

    # Operation Parser for PollForThirdPartyJobs
    class PollForThirdPartyJobs
      def self.parse(http_resp)
        data = Types::PollForThirdPartyJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.jobs = (Parsers::ThirdPartyJobList.parse(map['jobs']) unless map['jobs'].nil?)
        data
      end
    end

    class ThirdPartyJobList
      def self.parse(list)
        list.map do |value|
          Parsers::ThirdPartyJob.parse(value) unless value.nil?
        end
      end
    end

    class ThirdPartyJob
      def self.parse(map)
        data = Types::ThirdPartyJob.new
        data.client_id = map['clientId']
        data.job_id = map['jobId']
        return data
      end
    end

    # Operation Parser for PutActionRevision
    class PutActionRevision
      def self.parse(http_resp)
        data = Types::PutActionRevisionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.new_revision = map['newRevision']
        data.pipeline_execution_id = map['pipelineExecutionId']
        data
      end
    end

    # Error Parser for ActionNotFoundException
    class ActionNotFoundException
      def self.parse(http_resp)
        data = Types::ActionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutApprovalResult
    class PutApprovalResult
      def self.parse(http_resp)
        data = Types::PutApprovalResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approved_at = Time.at(map['approvedAt'].to_i) if map['approvedAt']
        data
      end
    end

    # Error Parser for ApprovalAlreadyCompletedException
    class ApprovalAlreadyCompletedException
      def self.parse(http_resp)
        data = Types::ApprovalAlreadyCompletedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalTokenException
    class InvalidApprovalTokenException
      def self.parse(http_resp)
        data = Types::InvalidApprovalTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutJobFailureResult
    class PutJobFailureResult
      def self.parse(http_resp)
        data = Types::PutJobFailureResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidJobStateException
    class InvalidJobStateException
      def self.parse(http_resp)
        data = Types::InvalidJobStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutJobSuccessResult
    class PutJobSuccessResult
      def self.parse(http_resp)
        data = Types::PutJobSuccessResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for OutputVariablesSizeExceededException
    class OutputVariablesSizeExceededException
      def self.parse(http_resp)
        data = Types::OutputVariablesSizeExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutThirdPartyJobFailureResult
    class PutThirdPartyJobFailureResult
      def self.parse(http_resp)
        data = Types::PutThirdPartyJobFailureResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutThirdPartyJobSuccessResult
    class PutThirdPartyJobSuccessResult
      def self.parse(http_resp)
        data = Types::PutThirdPartyJobSuccessResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutWebhook
    class PutWebhook
      def self.parse(http_resp)
        data = Types::PutWebhookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.webhook = (Parsers::ListWebhookItem.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end

    # Error Parser for InvalidWebhookAuthenticationParametersException
    class InvalidWebhookAuthenticationParametersException
      def self.parse(http_resp)
        data = Types::InvalidWebhookAuthenticationParametersException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidWebhookFilterPatternException
    class InvalidWebhookFilterPatternException
      def self.parse(http_resp)
        data = Types::InvalidWebhookFilterPatternException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterWebhookWithThirdParty
    class RegisterWebhookWithThirdParty
      def self.parse(http_resp)
        data = Types::RegisterWebhookWithThirdPartyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RetryStageExecution
    class RetryStageExecution
      def self.parse(http_resp)
        data = Types::RetryStageExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_id = map['pipelineExecutionId']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NotLatestPipelineExecutionException
    class NotLatestPipelineExecutionException
      def self.parse(http_resp)
        data = Types::NotLatestPipelineExecutionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StageNotRetryableException
    class StageNotRetryableException
      def self.parse(http_resp)
        data = Types::StageNotRetryableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartPipelineExecution
    class StartPipelineExecution
      def self.parse(http_resp)
        data = Types::StartPipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_id = map['pipelineExecutionId']
        data
      end
    end

    # Operation Parser for StopPipelineExecution
    class StopPipelineExecution
      def self.parse(http_resp)
        data = Types::StopPipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_id = map['pipelineExecutionId']
        data
      end
    end

    # Error Parser for DuplicatedStopRequestException
    class DuplicatedStopRequestException
      def self.parse(http_resp)
        data = Types::DuplicatedStopRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PipelineExecutionNotStoppableException
    class PipelineExecutionNotStoppableException
      def self.parse(http_resp)
        data = Types::PipelineExecutionNotStoppableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateActionType
    class UpdateActionType
      def self.parse(http_resp)
        data = Types::UpdateActionTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for RequestFailedException
    class RequestFailedException
      def self.parse(http_resp)
        data = Types::RequestFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdatePipeline
    class UpdatePipeline
      def self.parse(http_resp)
        data = Types::UpdatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline = (Parsers::PipelineDeclaration.parse(map['pipeline']) unless map['pipeline'].nil?)
        data
      end
    end
  end
end
