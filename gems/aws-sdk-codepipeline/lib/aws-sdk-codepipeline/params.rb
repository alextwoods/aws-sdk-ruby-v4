# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodePipeline
  module Params

    module AWSSessionCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AWSSessionCredentials, context: context)
        type = Types::AWSSessionCredentials.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type
      end
    end

    module AcknowledgeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeJobInput, context: context)
        type = Types::AcknowledgeJobInput.new
        type.job_id = params[:job_id]
        type.nonce = params[:nonce]
        type
      end
    end

    module AcknowledgeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeJobOutput, context: context)
        type = Types::AcknowledgeJobOutput.new
        type.status = params[:status]
        type
      end
    end

    module AcknowledgeThirdPartyJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeThirdPartyJobInput, context: context)
        type = Types::AcknowledgeThirdPartyJobInput.new
        type.job_id = params[:job_id]
        type.nonce = params[:nonce]
        type.client_token = params[:client_token]
        type
      end
    end

    module AcknowledgeThirdPartyJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeThirdPartyJobOutput, context: context)
        type = Types::AcknowledgeThirdPartyJobOutput.new
        type.status = params[:status]
        type
      end
    end

    module ActionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionConfiguration, context: context)
        type = Types::ActionConfiguration.new
        type.configuration = ActionConfigurationMap.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module ActionConfigurationMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ActionConfigurationProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionConfigurationProperty, context: context)
        type = Types::ActionConfigurationProperty.new
        type.name = params[:name]
        type.required = params[:required]
        type.key = params[:key]
        type.secret = params[:secret]
        type.queryable = params[:queryable]
        type.description = params[:description]
        type.type = params[:type]
        type
      end
    end

    module ActionConfigurationPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionConfigurationProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionContext, context: context)
        type = Types::ActionContext.new
        type.name = params[:name]
        type.action_execution_id = params[:action_execution_id]
        type
      end
    end

    module ActionDeclaration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionDeclaration, context: context)
        type = Types::ActionDeclaration.new
        type.name = params[:name]
        type.action_type_id = ActionTypeId.build(params[:action_type_id], context: "#{context}[:action_type_id]") unless params[:action_type_id].nil?
        type.run_order = params[:run_order]
        type.configuration = ActionConfigurationMap.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.output_artifacts = OutputArtifactList.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.input_artifacts = InputArtifactList.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.role_arn = params[:role_arn]
        type.region = params[:region]
        type.namespace = params[:namespace]
        type
      end
    end

    module ActionExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionExecution, context: context)
        type = Types::ActionExecution.new
        type.action_execution_id = params[:action_execution_id]
        type.status = params[:status]
        type.summary = params[:summary]
        type.last_status_change = params[:last_status_change]
        type.token = params[:token]
        type.last_updated_by = params[:last_updated_by]
        type.external_execution_id = params[:external_execution_id]
        type.external_execution_url = params[:external_execution_url]
        type.percent_complete = params[:percent_complete]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module ActionExecutionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionExecutionDetail, context: context)
        type = Types::ActionExecutionDetail.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type.action_execution_id = params[:action_execution_id]
        type.pipeline_version = params[:pipeline_version]
        type.stage_name = params[:stage_name]
        type.action_name = params[:action_name]
        type.start_time = params[:start_time]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type.input = ActionExecutionInput.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.output = ActionExecutionOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type
      end
    end

    module ActionExecutionDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionExecutionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionExecutionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionExecutionFilter, context: context)
        type = Types::ActionExecutionFilter.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type
      end
    end

    module ActionExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionExecutionInput, context: context)
        type = Types::ActionExecutionInput.new
        type.action_type_id = ActionTypeId.build(params[:action_type_id], context: "#{context}[:action_type_id]") unless params[:action_type_id].nil?
        type.configuration = ActionConfigurationMap.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.resolved_configuration = ResolvedActionConfigurationMap.build(params[:resolved_configuration], context: "#{context}[:resolved_configuration]") unless params[:resolved_configuration].nil?
        type.role_arn = params[:role_arn]
        type.region = params[:region]
        type.input_artifacts = ArtifactDetailList.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.namespace = params[:namespace]
        type
      end
    end

    module ActionExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionExecutionOutput, context: context)
        type = Types::ActionExecutionOutput.new
        type.output_artifacts = ArtifactDetailList.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.execution_result = ActionExecutionResult.build(params[:execution_result], context: "#{context}[:execution_result]") unless params[:execution_result].nil?
        type.output_variables = OutputVariablesMap.build(params[:output_variables], context: "#{context}[:output_variables]") unless params[:output_variables].nil?
        type
      end
    end

    module ActionExecutionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionExecutionResult, context: context)
        type = Types::ActionExecutionResult.new
        type.external_execution_id = params[:external_execution_id]
        type.external_execution_summary = params[:external_execution_summary]
        type.external_execution_url = params[:external_execution_url]
        type
      end
    end

    module ActionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionNotFoundException, context: context)
        type = Types::ActionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ActionRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionRevision, context: context)
        type = Types::ActionRevision.new
        type.revision_id = params[:revision_id]
        type.revision_change_id = params[:revision_change_id]
        type.created = params[:created]
        type
      end
    end

    module ActionState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionState, context: context)
        type = Types::ActionState.new
        type.action_name = params[:action_name]
        type.current_revision = ActionRevision.build(params[:current_revision], context: "#{context}[:current_revision]") unless params[:current_revision].nil?
        type.latest_execution = ActionExecution.build(params[:latest_execution], context: "#{context}[:latest_execution]") unless params[:latest_execution].nil?
        type.entity_url = params[:entity_url]
        type.revision_url = params[:revision_url]
        type
      end
    end

    module ActionStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionType, context: context)
        type = Types::ActionType.new
        type.id = ActionTypeId.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type.settings = ActionTypeSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.action_configuration_properties = ActionConfigurationPropertyList.build(params[:action_configuration_properties], context: "#{context}[:action_configuration_properties]") unless params[:action_configuration_properties].nil?
        type.input_artifact_details = ArtifactDetails.build(params[:input_artifact_details], context: "#{context}[:input_artifact_details]") unless params[:input_artifact_details].nil?
        type.output_artifact_details = ArtifactDetails.build(params[:output_artifact_details], context: "#{context}[:output_artifact_details]") unless params[:output_artifact_details].nil?
        type
      end
    end

    module ActionTypeArtifactDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeArtifactDetails, context: context)
        type = Types::ActionTypeArtifactDetails.new
        type.minimum_count = params[:minimum_count]
        type.maximum_count = params[:maximum_count]
        type
      end
    end

    module ActionTypeDeclaration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeDeclaration, context: context)
        type = Types::ActionTypeDeclaration.new
        type.description = params[:description]
        type.executor = ActionTypeExecutor.build(params[:executor], context: "#{context}[:executor]") unless params[:executor].nil?
        type.id = ActionTypeIdentifier.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type.input_artifact_details = ActionTypeArtifactDetails.build(params[:input_artifact_details], context: "#{context}[:input_artifact_details]") unless params[:input_artifact_details].nil?
        type.output_artifact_details = ActionTypeArtifactDetails.build(params[:output_artifact_details], context: "#{context}[:output_artifact_details]") unless params[:output_artifact_details].nil?
        type.permissions = ActionTypePermissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.properties = ActionTypeProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.urls = ActionTypeUrls.build(params[:urls], context: "#{context}[:urls]") unless params[:urls].nil?
        type
      end
    end

    module ActionTypeExecutor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeExecutor, context: context)
        type = Types::ActionTypeExecutor.new
        type.configuration = ExecutorConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.type = params[:type]
        type.policy_statements_template = params[:policy_statements_template]
        type.job_timeout = params[:job_timeout]
        type
      end
    end

    module ActionTypeId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeId, context: context)
        type = Types::ActionTypeId.new
        type.category = params[:category]
        type.owner = params[:owner]
        type.provider = params[:provider]
        type.version = params[:version]
        type
      end
    end

    module ActionTypeIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeIdentifier, context: context)
        type = Types::ActionTypeIdentifier.new
        type.category = params[:category]
        type.owner = params[:owner]
        type.provider = params[:provider]
        type.version = params[:version]
        type
      end
    end

    module ActionTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionTypeNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeNotFoundException, context: context)
        type = Types::ActionTypeNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ActionTypePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypePermissions, context: context)
        type = Types::ActionTypePermissions.new
        type.allowed_accounts = AllowedAccounts.build(params[:allowed_accounts], context: "#{context}[:allowed_accounts]") unless params[:allowed_accounts].nil?
        type
      end
    end

    module ActionTypeProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionTypeProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionTypeProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeProperty, context: context)
        type = Types::ActionTypeProperty.new
        type.name = params[:name]
        type.optional = params[:optional]
        type.key = params[:key]
        type.no_echo = params[:no_echo]
        type.queryable = params[:queryable]
        type.description = params[:description]
        type
      end
    end

    module ActionTypeSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeSettings, context: context)
        type = Types::ActionTypeSettings.new
        type.third_party_configuration_url = params[:third_party_configuration_url]
        type.entity_url_template = params[:entity_url_template]
        type.execution_url_template = params[:execution_url_template]
        type.revision_url_template = params[:revision_url_template]
        type
      end
    end

    module ActionTypeUrls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTypeUrls, context: context)
        type = Types::ActionTypeUrls.new
        type.configuration_url = params[:configuration_url]
        type.entity_url_template = params[:entity_url_template]
        type.execution_url_template = params[:execution_url_template]
        type.revision_url_template = params[:revision_url_template]
        type
      end
    end

    module AllowedAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApprovalAlreadyCompletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalAlreadyCompletedException, context: context)
        type = Types::ApprovalAlreadyCompletedException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalResult, context: context)
        type = Types::ApprovalResult.new
        type.summary = params[:summary]
        type.status = params[:status]
        type
      end
    end

    module Artifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Artifact, context: context)
        type = Types::Artifact.new
        type.name = params[:name]
        type.revision = params[:revision]
        type.location = ArtifactLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type
      end
    end

    module ArtifactDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactDetail, context: context)
        type = Types::ArtifactDetail.new
        type.name = params[:name]
        type.s3location = S3Location.build(params[:s3location], context: "#{context}[:s3location]") unless params[:s3location].nil?
        type
      end
    end

    module ArtifactDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ArtifactDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArtifactDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactDetails, context: context)
        type = Types::ArtifactDetails.new
        type.minimum_count = params[:minimum_count]
        type.maximum_count = params[:maximum_count]
        type
      end
    end

    module ArtifactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Artifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArtifactLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactLocation, context: context)
        type = Types::ArtifactLocation.new
        type.type = params[:type]
        type.s3_location = S3ArtifactLocation.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module ArtifactRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactRevision, context: context)
        type = Types::ArtifactRevision.new
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type.revision_change_identifier = params[:revision_change_identifier]
        type.revision_summary = params[:revision_summary]
        type.created = params[:created]
        type.revision_url = params[:revision_url]
        type
      end
    end

    module ArtifactRevisionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ArtifactRevision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArtifactStore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactStore, context: context)
        type = Types::ArtifactStore.new
        type.type = params[:type]
        type.location = params[:location]
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type
      end
    end

    module ArtifactStoreMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ArtifactStore.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BlockerDeclaration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockerDeclaration, context: context)
        type = Types::BlockerDeclaration.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateCustomActionTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomActionTypeInput, context: context)
        type = Types::CreateCustomActionTypeInput.new
        type.category = params[:category]
        type.provider = params[:provider]
        type.version = params[:version]
        type.settings = ActionTypeSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.configuration_properties = ActionConfigurationPropertyList.build(params[:configuration_properties], context: "#{context}[:configuration_properties]") unless params[:configuration_properties].nil?
        type.input_artifact_details = ArtifactDetails.build(params[:input_artifact_details], context: "#{context}[:input_artifact_details]") unless params[:input_artifact_details].nil?
        type.output_artifact_details = ArtifactDetails.build(params[:output_artifact_details], context: "#{context}[:output_artifact_details]") unless params[:output_artifact_details].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCustomActionTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomActionTypeOutput, context: context)
        type = Types::CreateCustomActionTypeOutput.new
        type.action_type = ActionType.build(params[:action_type], context: "#{context}[:action_type]") unless params[:action_type].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineInput, context: context)
        type = Types::CreatePipelineInput.new
        type.pipeline = PipelineDeclaration.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineOutput, context: context)
        type = Types::CreatePipelineOutput.new
        type.pipeline = PipelineDeclaration.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CurrentRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CurrentRevision, context: context)
        type = Types::CurrentRevision.new
        type.revision = params[:revision]
        type.change_identifier = params[:change_identifier]
        type.created = params[:created]
        type.revision_summary = params[:revision_summary]
        type
      end
    end

    module DeleteCustomActionTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomActionTypeInput, context: context)
        type = Types::DeleteCustomActionTypeInput.new
        type.category = params[:category]
        type.provider = params[:provider]
        type.version = params[:version]
        type
      end
    end

    module DeleteCustomActionTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomActionTypeOutput, context: context)
        type = Types::DeleteCustomActionTypeOutput.new
        type
      end
    end

    module DeletePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineInput, context: context)
        type = Types::DeletePipelineInput.new
        type.name = params[:name]
        type
      end
    end

    module DeletePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineOutput, context: context)
        type = Types::DeletePipelineOutput.new
        type
      end
    end

    module DeleteWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebhookInput, context: context)
        type = Types::DeleteWebhookInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebhookOutput, context: context)
        type = Types::DeleteWebhookOutput.new
        type
      end
    end

    module DeregisterWebhookWithThirdPartyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterWebhookWithThirdPartyInput, context: context)
        type = Types::DeregisterWebhookWithThirdPartyInput.new
        type.webhook_name = params[:webhook_name]
        type
      end
    end

    module DeregisterWebhookWithThirdPartyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterWebhookWithThirdPartyOutput, context: context)
        type = Types::DeregisterWebhookWithThirdPartyOutput.new
        type
      end
    end

    module DisableStageTransitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableStageTransitionInput, context: context)
        type = Types::DisableStageTransitionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.stage_name = params[:stage_name]
        type.transition_type = params[:transition_type]
        type.reason = params[:reason]
        type
      end
    end

    module DisableStageTransitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableStageTransitionOutput, context: context)
        type = Types::DisableStageTransitionOutput.new
        type
      end
    end

    module DuplicatedStopRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicatedStopRequestException, context: context)
        type = Types::DuplicatedStopRequestException.new
        type.message = params[:message]
        type
      end
    end

    module EnableStageTransitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableStageTransitionInput, context: context)
        type = Types::EnableStageTransitionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.stage_name = params[:stage_name]
        type.transition_type = params[:transition_type]
        type
      end
    end

    module EnableStageTransitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableStageTransitionOutput, context: context)
        type = Types::EnableStageTransitionOutput.new
        type
      end
    end

    module EncryptionKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionKey, context: context)
        type = Types::EncryptionKey.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetails, context: context)
        type = Types::ErrorDetails.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ExecutionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionDetails, context: context)
        type = Types::ExecutionDetails.new
        type.summary = params[:summary]
        type.external_execution_id = params[:external_execution_id]
        type.percent_complete = params[:percent_complete]
        type
      end
    end

    module ExecutionTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionTrigger, context: context)
        type = Types::ExecutionTrigger.new
        type.trigger_type = params[:trigger_type]
        type.trigger_detail = params[:trigger_detail]
        type
      end
    end

    module ExecutorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutorConfiguration, context: context)
        type = Types::ExecutorConfiguration.new
        type.lambda_executor_configuration = LambdaExecutorConfiguration.build(params[:lambda_executor_configuration], context: "#{context}[:lambda_executor_configuration]") unless params[:lambda_executor_configuration].nil?
        type.job_worker_executor_configuration = JobWorkerExecutorConfiguration.build(params[:job_worker_executor_configuration], context: "#{context}[:job_worker_executor_configuration]") unless params[:job_worker_executor_configuration].nil?
        type
      end
    end

    module FailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureDetails, context: context)
        type = Types::FailureDetails.new
        type.type = params[:type]
        type.message = params[:message]
        type.external_execution_id = params[:external_execution_id]
        type
      end
    end

    module GetActionTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActionTypeInput, context: context)
        type = Types::GetActionTypeInput.new
        type.category = params[:category]
        type.owner = params[:owner]
        type.provider = params[:provider]
        type.version = params[:version]
        type
      end
    end

    module GetActionTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActionTypeOutput, context: context)
        type = Types::GetActionTypeOutput.new
        type.action_type = ActionTypeDeclaration.build(params[:action_type], context: "#{context}[:action_type]") unless params[:action_type].nil?
        type
      end
    end

    module GetJobDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobDetailsInput, context: context)
        type = Types::GetJobDetailsInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobDetailsOutput, context: context)
        type = Types::GetJobDetailsOutput.new
        type.job_details = JobDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type
      end
    end

    module GetPipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineExecutionInput, context: context)
        type = Types::GetPipelineExecutionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type
      end
    end

    module GetPipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineExecutionOutput, context: context)
        type = Types::GetPipelineExecutionOutput.new
        type.pipeline_execution = PipelineExecution.build(params[:pipeline_execution], context: "#{context}[:pipeline_execution]") unless params[:pipeline_execution].nil?
        type
      end
    end

    module GetPipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineInput, context: context)
        type = Types::GetPipelineInput.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module GetPipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineOutput, context: context)
        type = Types::GetPipelineOutput.new
        type.pipeline = PipelineDeclaration.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.metadata = PipelineMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module GetPipelineStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineStateInput, context: context)
        type = Types::GetPipelineStateInput.new
        type.name = params[:name]
        type
      end
    end

    module GetPipelineStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineStateOutput, context: context)
        type = Types::GetPipelineStateOutput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_version = params[:pipeline_version]
        type.stage_states = StageStateList.build(params[:stage_states], context: "#{context}[:stage_states]") unless params[:stage_states].nil?
        type.created = params[:created]
        type.updated = params[:updated]
        type
      end
    end

    module GetThirdPartyJobDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThirdPartyJobDetailsInput, context: context)
        type = Types::GetThirdPartyJobDetailsInput.new
        type.job_id = params[:job_id]
        type.client_token = params[:client_token]
        type
      end
    end

    module GetThirdPartyJobDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThirdPartyJobDetailsOutput, context: context)
        type = Types::GetThirdPartyJobDetailsOutput.new
        type.job_details = ThirdPartyJobDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type
      end
    end

    module InputArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputArtifact, context: context)
        type = Types::InputArtifact.new
        type.name = params[:name]
        type
      end
    end

    module InputArtifactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputArtifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidActionDeclarationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidActionDeclarationException, context: context)
        type = Types::InvalidActionDeclarationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalTokenException, context: context)
        type = Types::InvalidApprovalTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArnException, context: context)
        type = Types::InvalidArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidBlockerDeclarationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidBlockerDeclarationException, context: context)
        type = Types::InvalidBlockerDeclarationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClientTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientTokenException, context: context)
        type = Types::InvalidClientTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidJobException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidJobException, context: context)
        type = Types::InvalidJobException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidJobStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidJobStateException, context: context)
        type = Types::InvalidJobStateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNonceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNonceException, context: context)
        type = Types::InvalidNonceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStageDeclarationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStageDeclarationException, context: context)
        type = Types::InvalidStageDeclarationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStructureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStructureException, context: context)
        type = Types::InvalidStructureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagsException, context: context)
        type = Types::InvalidTagsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidWebhookAuthenticationParametersException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidWebhookAuthenticationParametersException, context: context)
        type = Types::InvalidWebhookAuthenticationParametersException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidWebhookFilterPatternException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidWebhookFilterPatternException, context: context)
        type = Types::InvalidWebhookFilterPatternException.new
        type.message = params[:message]
        type
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.id = params[:id]
        type.data = JobData.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.nonce = params[:nonce]
        type.account_id = params[:account_id]
        type
      end
    end

    module JobData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobData, context: context)
        type = Types::JobData.new
        type.action_type_id = ActionTypeId.build(params[:action_type_id], context: "#{context}[:action_type_id]") unless params[:action_type_id].nil?
        type.action_configuration = ActionConfiguration.build(params[:action_configuration], context: "#{context}[:action_configuration]") unless params[:action_configuration].nil?
        type.pipeline_context = PipelineContext.build(params[:pipeline_context], context: "#{context}[:pipeline_context]") unless params[:pipeline_context].nil?
        type.input_artifacts = ArtifactList.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.output_artifacts = ArtifactList.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.artifact_credentials = AWSSessionCredentials.build(params[:artifact_credentials], context: "#{context}[:artifact_credentials]") unless params[:artifact_credentials].nil?
        type.continuation_token = params[:continuation_token]
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type
      end
    end

    module JobDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDetails, context: context)
        type = Types::JobDetails.new
        type.id = params[:id]
        type.data = JobData.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.account_id = params[:account_id]
        type
      end
    end

    module JobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobNotFoundException, context: context)
        type = Types::JobNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module JobWorkerExecutorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobWorkerExecutorConfiguration, context: context)
        type = Types::JobWorkerExecutorConfiguration.new
        type.polling_accounts = PollingAccountList.build(params[:polling_accounts], context: "#{context}[:polling_accounts]") unless params[:polling_accounts].nil?
        type.polling_service_principals = PollingServicePrincipalList.build(params[:polling_service_principals], context: "#{context}[:polling_service_principals]") unless params[:polling_service_principals].nil?
        type
      end
    end

    module LambdaExecutorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaExecutorConfiguration, context: context)
        type = Types::LambdaExecutorConfiguration.new
        type.lambda_function_arn = params[:lambda_function_arn]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListActionExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionExecutionsInput, context: context)
        type = Types::ListActionExecutionsInput.new
        type.pipeline_name = params[:pipeline_name]
        type.filter = ActionExecutionFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListActionExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionExecutionsOutput, context: context)
        type = Types::ListActionExecutionsOutput.new
        type.action_execution_details = ActionExecutionDetailList.build(params[:action_execution_details], context: "#{context}[:action_execution_details]") unless params[:action_execution_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListActionTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionTypesInput, context: context)
        type = Types::ListActionTypesInput.new
        type.action_owner_filter = params[:action_owner_filter]
        type.next_token = params[:next_token]
        type.region_filter = params[:region_filter]
        type
      end
    end

    module ListActionTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionTypesOutput, context: context)
        type = Types::ListActionTypesOutput.new
        type.action_types = ActionTypeList.build(params[:action_types], context: "#{context}[:action_types]") unless params[:action_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelineExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineExecutionsInput, context: context)
        type = Types::ListPipelineExecutionsInput.new
        type.pipeline_name = params[:pipeline_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelineExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineExecutionsOutput, context: context)
        type = Types::ListPipelineExecutionsOutput.new
        type.pipeline_execution_summaries = PipelineExecutionSummaryList.build(params[:pipeline_execution_summaries], context: "#{context}[:pipeline_execution_summaries]") unless params[:pipeline_execution_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesInput, context: context)
        type = Types::ListPipelinesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesOutput, context: context)
        type = Types::ListPipelinesOutput.new
        type.pipelines = PipelineList.build(params[:pipelines], context: "#{context}[:pipelines]") unless params[:pipelines].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWebhookItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebhookItem, context: context)
        type = Types::ListWebhookItem.new
        type.definition = WebhookDefinition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.url = params[:url]
        type.error_message = params[:error_message]
        type.error_code = params[:error_code]
        type.last_triggered = params[:last_triggered]
        type.arn = params[:arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWebhooksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebhooksInput, context: context)
        type = Types::ListWebhooksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWebhooksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebhooksOutput, context: context)
        type = Types::ListWebhooksOutput.new
        type.webhooks = WebhookList.build(params[:webhooks], context: "#{context}[:webhooks]") unless params[:webhooks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotLatestPipelineExecutionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotLatestPipelineExecutionException, context: context)
        type = Types::NotLatestPipelineExecutionException.new
        type.message = params[:message]
        type
      end
    end

    module OutputArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputArtifact, context: context)
        type = Types::OutputArtifact.new
        type.name = params[:name]
        type
      end
    end

    module OutputArtifactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputArtifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OutputVariablesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module OutputVariablesSizeExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputVariablesSizeExceededException, context: context)
        type = Types::OutputVariablesSizeExceededException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineContext, context: context)
        type = Types::PipelineContext.new
        type.pipeline_name = params[:pipeline_name]
        type.stage = StageContext.build(params[:stage], context: "#{context}[:stage]") unless params[:stage].nil?
        type.action = ActionContext.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.pipeline_arn = params[:pipeline_arn]
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type
      end
    end

    module PipelineDeclaration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineDeclaration, context: context)
        type = Types::PipelineDeclaration.new
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.artifact_store = ArtifactStore.build(params[:artifact_store], context: "#{context}[:artifact_store]") unless params[:artifact_store].nil?
        type.artifact_stores = ArtifactStoreMap.build(params[:artifact_stores], context: "#{context}[:artifact_stores]") unless params[:artifact_stores].nil?
        type.stages = PipelineStageDeclarationList.build(params[:stages], context: "#{context}[:stages]") unless params[:stages].nil?
        type.version = params[:version]
        type
      end
    end

    module PipelineExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecution, context: context)
        type = Types::PipelineExecution.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_version = params[:pipeline_version]
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type.status = params[:status]
        type.status_summary = params[:status_summary]
        type.artifact_revisions = ArtifactRevisionList.build(params[:artifact_revisions], context: "#{context}[:artifact_revisions]") unless params[:artifact_revisions].nil?
        type
      end
    end

    module PipelineExecutionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecutionNotFoundException, context: context)
        type = Types::PipelineExecutionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineExecutionNotStoppableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecutionNotStoppableException, context: context)
        type = Types::PipelineExecutionNotStoppableException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecutionSummary, context: context)
        type = Types::PipelineExecutionSummary.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.last_update_time = params[:last_update_time]
        type.source_revisions = SourceRevisionList.build(params[:source_revisions], context: "#{context}[:source_revisions]") unless params[:source_revisions].nil?
        type.trigger = ExecutionTrigger.build(params[:trigger], context: "#{context}[:trigger]") unless params[:trigger].nil?
        type.stop_trigger = StopExecutionTrigger.build(params[:stop_trigger], context: "#{context}[:stop_trigger]") unless params[:stop_trigger].nil?
        type
      end
    end

    module PipelineExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineMetadata, context: context)
        type = Types::PipelineMetadata.new
        type.pipeline_arn = params[:pipeline_arn]
        type.created = params[:created]
        type.updated = params[:updated]
        type
      end
    end

    module PipelineNameInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineNameInUseException, context: context)
        type = Types::PipelineNameInUseException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineNotFoundException, context: context)
        type = Types::PipelineNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineStageDeclarationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StageDeclaration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineSummary, context: context)
        type = Types::PipelineSummary.new
        type.name = params[:name]
        type.version = params[:version]
        type.created = params[:created]
        type.updated = params[:updated]
        type
      end
    end

    module PipelineVersionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineVersionNotFoundException, context: context)
        type = Types::PipelineVersionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PollForJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForJobsInput, context: context)
        type = Types::PollForJobsInput.new
        type.action_type_id = ActionTypeId.build(params[:action_type_id], context: "#{context}[:action_type_id]") unless params[:action_type_id].nil?
        type.max_batch_size = params[:max_batch_size]
        type.query_param = QueryParamMap.build(params[:query_param], context: "#{context}[:query_param]") unless params[:query_param].nil?
        type
      end
    end

    module PollForJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForJobsOutput, context: context)
        type = Types::PollForJobsOutput.new
        type.jobs = JobList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module PollForThirdPartyJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForThirdPartyJobsInput, context: context)
        type = Types::PollForThirdPartyJobsInput.new
        type.action_type_id = ActionTypeId.build(params[:action_type_id], context: "#{context}[:action_type_id]") unless params[:action_type_id].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module PollForThirdPartyJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForThirdPartyJobsOutput, context: context)
        type = Types::PollForThirdPartyJobsOutput.new
        type.jobs = ThirdPartyJobList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module PollingAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PollingServicePrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutActionRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutActionRevisionInput, context: context)
        type = Types::PutActionRevisionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.stage_name = params[:stage_name]
        type.action_name = params[:action_name]
        type.action_revision = ActionRevision.build(params[:action_revision], context: "#{context}[:action_revision]") unless params[:action_revision].nil?
        type
      end
    end

    module PutActionRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutActionRevisionOutput, context: context)
        type = Types::PutActionRevisionOutput.new
        type.new_revision = params[:new_revision]
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type
      end
    end

    module PutApprovalResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutApprovalResultInput, context: context)
        type = Types::PutApprovalResultInput.new
        type.pipeline_name = params[:pipeline_name]
        type.stage_name = params[:stage_name]
        type.action_name = params[:action_name]
        type.result = ApprovalResult.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type.token = params[:token]
        type
      end
    end

    module PutApprovalResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutApprovalResultOutput, context: context)
        type = Types::PutApprovalResultOutput.new
        type.approved_at = params[:approved_at]
        type
      end
    end

    module PutJobFailureResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutJobFailureResultInput, context: context)
        type = Types::PutJobFailureResultInput.new
        type.job_id = params[:job_id]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type
      end
    end

    module PutJobFailureResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutJobFailureResultOutput, context: context)
        type = Types::PutJobFailureResultOutput.new
        type
      end
    end

    module PutJobSuccessResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutJobSuccessResultInput, context: context)
        type = Types::PutJobSuccessResultInput.new
        type.job_id = params[:job_id]
        type.current_revision = CurrentRevision.build(params[:current_revision], context: "#{context}[:current_revision]") unless params[:current_revision].nil?
        type.continuation_token = params[:continuation_token]
        type.execution_details = ExecutionDetails.build(params[:execution_details], context: "#{context}[:execution_details]") unless params[:execution_details].nil?
        type.output_variables = OutputVariablesMap.build(params[:output_variables], context: "#{context}[:output_variables]") unless params[:output_variables].nil?
        type
      end
    end

    module PutJobSuccessResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutJobSuccessResultOutput, context: context)
        type = Types::PutJobSuccessResultOutput.new
        type
      end
    end

    module PutThirdPartyJobFailureResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutThirdPartyJobFailureResultInput, context: context)
        type = Types::PutThirdPartyJobFailureResultInput.new
        type.job_id = params[:job_id]
        type.client_token = params[:client_token]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type
      end
    end

    module PutThirdPartyJobFailureResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutThirdPartyJobFailureResultOutput, context: context)
        type = Types::PutThirdPartyJobFailureResultOutput.new
        type
      end
    end

    module PutThirdPartyJobSuccessResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutThirdPartyJobSuccessResultInput, context: context)
        type = Types::PutThirdPartyJobSuccessResultInput.new
        type.job_id = params[:job_id]
        type.client_token = params[:client_token]
        type.current_revision = CurrentRevision.build(params[:current_revision], context: "#{context}[:current_revision]") unless params[:current_revision].nil?
        type.continuation_token = params[:continuation_token]
        type.execution_details = ExecutionDetails.build(params[:execution_details], context: "#{context}[:execution_details]") unless params[:execution_details].nil?
        type
      end
    end

    module PutThirdPartyJobSuccessResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutThirdPartyJobSuccessResultOutput, context: context)
        type = Types::PutThirdPartyJobSuccessResultOutput.new
        type
      end
    end

    module PutWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutWebhookInput, context: context)
        type = Types::PutWebhookInput.new
        type.webhook = WebhookDefinition.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutWebhookOutput, context: context)
        type = Types::PutWebhookOutput.new
        type.webhook = ListWebhookItem.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module QueryParamMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RegisterWebhookWithThirdPartyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterWebhookWithThirdPartyInput, context: context)
        type = Types::RegisterWebhookWithThirdPartyInput.new
        type.webhook_name = params[:webhook_name]
        type
      end
    end

    module RegisterWebhookWithThirdPartyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterWebhookWithThirdPartyOutput, context: context)
        type = Types::RegisterWebhookWithThirdPartyOutput.new
        type
      end
    end

    module RequestFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestFailedException, context: context)
        type = Types::RequestFailedException.new
        type.message = params[:message]
        type
      end
    end

    module ResolvedActionConfigurationMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
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

    module RetryStageExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryStageExecutionInput, context: context)
        type = Types::RetryStageExecutionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.stage_name = params[:stage_name]
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type.retry_mode = params[:retry_mode]
        type
      end
    end

    module RetryStageExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryStageExecutionOutput, context: context)
        type = Types::RetryStageExecutionOutput.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type
      end
    end

    module S3ArtifactLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ArtifactLocation, context: context)
        type = Types::S3ArtifactLocation.new
        type.bucket_name = params[:bucket_name]
        type.object_key = params[:object_key]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module SourceRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceRevision, context: context)
        type = Types::SourceRevision.new
        type.action_name = params[:action_name]
        type.revision_id = params[:revision_id]
        type.revision_summary = params[:revision_summary]
        type.revision_url = params[:revision_url]
        type
      end
    end

    module SourceRevisionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceRevision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StageActionDeclarationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionDeclaration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StageBlockerDeclarationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlockerDeclaration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StageContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageContext, context: context)
        type = Types::StageContext.new
        type.name = params[:name]
        type
      end
    end

    module StageDeclaration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageDeclaration, context: context)
        type = Types::StageDeclaration.new
        type.name = params[:name]
        type.blockers = StageBlockerDeclarationList.build(params[:blockers], context: "#{context}[:blockers]") unless params[:blockers].nil?
        type.actions = StageActionDeclarationList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module StageExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageExecution, context: context)
        type = Types::StageExecution.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type.status = params[:status]
        type
      end
    end

    module StageNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageNotFoundException, context: context)
        type = Types::StageNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module StageNotRetryableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageNotRetryableException, context: context)
        type = Types::StageNotRetryableException.new
        type.message = params[:message]
        type
      end
    end

    module StageState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageState, context: context)
        type = Types::StageState.new
        type.stage_name = params[:stage_name]
        type.inbound_execution = StageExecution.build(params[:inbound_execution], context: "#{context}[:inbound_execution]") unless params[:inbound_execution].nil?
        type.inbound_transition_state = TransitionState.build(params[:inbound_transition_state], context: "#{context}[:inbound_transition_state]") unless params[:inbound_transition_state].nil?
        type.action_states = ActionStateList.build(params[:action_states], context: "#{context}[:action_states]") unless params[:action_states].nil?
        type.latest_execution = StageExecution.build(params[:latest_execution], context: "#{context}[:latest_execution]") unless params[:latest_execution].nil?
        type
      end
    end

    module StageStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StageState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartPipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPipelineExecutionInput, context: context)
        type = Types::StartPipelineExecutionInput.new
        type.name = params[:name]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module StartPipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPipelineExecutionOutput, context: context)
        type = Types::StartPipelineExecutionOutput.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type
      end
    end

    module StopExecutionTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExecutionTrigger, context: context)
        type = Types::StopExecutionTrigger.new
        type.reason = params[:reason]
        type
      end
    end

    module StopPipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPipelineExecutionInput, context: context)
        type = Types::StopPipelineExecutionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_execution_id = params[:pipeline_execution_id]
        type.abandon = params[:abandon]
        type.reason = params[:reason]
        type
      end
    end

    module StopPipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPipelineExecutionOutput, context: context)
        type = Types::StopPipelineExecutionOutput.new
        type.pipeline_execution_id = params[:pipeline_execution_id]
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

    module ThirdPartyJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyJob, context: context)
        type = Types::ThirdPartyJob.new
        type.client_id = params[:client_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module ThirdPartyJobData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyJobData, context: context)
        type = Types::ThirdPartyJobData.new
        type.action_type_id = ActionTypeId.build(params[:action_type_id], context: "#{context}[:action_type_id]") unless params[:action_type_id].nil?
        type.action_configuration = ActionConfiguration.build(params[:action_configuration], context: "#{context}[:action_configuration]") unless params[:action_configuration].nil?
        type.pipeline_context = PipelineContext.build(params[:pipeline_context], context: "#{context}[:pipeline_context]") unless params[:pipeline_context].nil?
        type.input_artifacts = ArtifactList.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.output_artifacts = ArtifactList.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.artifact_credentials = AWSSessionCredentials.build(params[:artifact_credentials], context: "#{context}[:artifact_credentials]") unless params[:artifact_credentials].nil?
        type.continuation_token = params[:continuation_token]
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type
      end
    end

    module ThirdPartyJobDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyJobDetails, context: context)
        type = Types::ThirdPartyJobDetails.new
        type.id = params[:id]
        type.data = ThirdPartyJobData.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.nonce = params[:nonce]
        type
      end
    end

    module ThirdPartyJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThirdPartyJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module TransitionState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitionState, context: context)
        type = Types::TransitionState.new
        type.enabled = params[:enabled]
        type.last_changed_by = params[:last_changed_by]
        type.last_changed_at = params[:last_changed_at]
        type.disabled_reason = params[:disabled_reason]
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

    module UpdateActionTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateActionTypeInput, context: context)
        type = Types::UpdateActionTypeInput.new
        type.action_type = ActionTypeDeclaration.build(params[:action_type], context: "#{context}[:action_type]") unless params[:action_type].nil?
        type
      end
    end

    module UpdateActionTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateActionTypeOutput, context: context)
        type = Types::UpdateActionTypeOutput.new
        type
      end
    end

    module UpdatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineInput, context: context)
        type = Types::UpdatePipelineInput.new
        type.pipeline = PipelineDeclaration.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type
      end
    end

    module UpdatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineOutput, context: context)
        type = Types::UpdatePipelineOutput.new
        type.pipeline = PipelineDeclaration.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
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

    module WebhookAuthConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebhookAuthConfiguration, context: context)
        type = Types::WebhookAuthConfiguration.new
        type.allowed_ip_range = params[:allowed_ip_range]
        type.secret_token = params[:secret_token]
        type
      end
    end

    module WebhookDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebhookDefinition, context: context)
        type = Types::WebhookDefinition.new
        type.name = params[:name]
        type.target_pipeline = params[:target_pipeline]
        type.target_action = params[:target_action]
        type.filters = WebhookFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.authentication = params[:authentication]
        type.authentication_configuration = WebhookAuthConfiguration.build(params[:authentication_configuration], context: "#{context}[:authentication_configuration]") unless params[:authentication_configuration].nil?
        type
      end
    end

    module WebhookFilterRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebhookFilterRule, context: context)
        type = Types::WebhookFilterRule.new
        type.json_path = params[:json_path]
        type.match_equals = params[:match_equals]
        type
      end
    end

    module WebhookFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WebhookFilterRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WebhookList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListWebhookItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WebhookNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebhookNotFoundException, context: context)
        type = Types::WebhookNotFoundException.new
        type
      end
    end

  end
end
