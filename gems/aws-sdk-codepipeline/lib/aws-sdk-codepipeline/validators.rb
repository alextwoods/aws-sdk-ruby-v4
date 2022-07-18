# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CodePipeline
  module Validators

    class AWSSessionCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AWSSessionCredentials, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
      end
    end

    class AcknowledgeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:nonce], ::String, context: "#{context}[:nonce]")
      end
    end

    class AcknowledgeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeJobOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AcknowledgeThirdPartyJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeThirdPartyJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:nonce], ::String, context: "#{context}[:nonce]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AcknowledgeThirdPartyJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeThirdPartyJobOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ActionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionConfiguration, context: context)
        ActionConfigurationMap.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class ActionConfigurationMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ActionConfigurationProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionConfigurationProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:required], ::TrueClass, ::FalseClass, context: "#{context}[:required]")
        Hearth::Validator.validate!(input[:key], ::TrueClass, ::FalseClass, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:secret], ::TrueClass, ::FalseClass, context: "#{context}[:secret]")
        Hearth::Validator.validate!(input[:queryable], ::TrueClass, ::FalseClass, context: "#{context}[:queryable]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ActionConfigurationPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionConfigurationProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionContext, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:action_execution_id], ::String, context: "#{context}[:action_execution_id]")
      end
    end

    class ActionDeclaration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionDeclaration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ActionTypeId.validate!(input[:action_type_id], context: "#{context}[:action_type_id]") unless input[:action_type_id].nil?
        Hearth::Validator.validate!(input[:run_order], ::Integer, context: "#{context}[:run_order]")
        ActionConfigurationMap.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        OutputArtifactList.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        InputArtifactList.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class ActionExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionExecution, context: context)
        Hearth::Validator.validate!(input[:action_execution_id], ::String, context: "#{context}[:action_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:last_status_change], ::Time, context: "#{context}[:last_status_change]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
        Hearth::Validator.validate!(input[:external_execution_id], ::String, context: "#{context}[:external_execution_id]")
        Hearth::Validator.validate!(input[:external_execution_url], ::String, context: "#{context}[:external_execution_url]")
        Hearth::Validator.validate!(input[:percent_complete], ::Integer, context: "#{context}[:percent_complete]")
        ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class ActionExecutionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionExecutionDetail, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
        Hearth::Validator.validate!(input[:action_execution_id], ::String, context: "#{context}[:action_execution_id]")
        Hearth::Validator.validate!(input[:pipeline_version], ::Integer, context: "#{context}[:pipeline_version]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ActionExecutionInput.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        ActionExecutionOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
      end
    end

    class ActionExecutionDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionExecutionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionExecutionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionExecutionFilter, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class ActionExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionExecutionInput, context: context)
        ActionTypeId.validate!(input[:action_type_id], context: "#{context}[:action_type_id]") unless input[:action_type_id].nil?
        ActionConfigurationMap.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        ResolvedActionConfigurationMap.validate!(input[:resolved_configuration], context: "#{context}[:resolved_configuration]") unless input[:resolved_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        ArtifactDetailList.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class ActionExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionExecutionOutput, context: context)
        ArtifactDetailList.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        ActionExecutionResult.validate!(input[:execution_result], context: "#{context}[:execution_result]") unless input[:execution_result].nil?
        OutputVariablesMap.validate!(input[:output_variables], context: "#{context}[:output_variables]") unless input[:output_variables].nil?
      end
    end

    class ActionExecutionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionExecutionResult, context: context)
        Hearth::Validator.validate!(input[:external_execution_id], ::String, context: "#{context}[:external_execution_id]")
        Hearth::Validator.validate!(input[:external_execution_summary], ::String, context: "#{context}[:external_execution_summary]")
        Hearth::Validator.validate!(input[:external_execution_url], ::String, context: "#{context}[:external_execution_url]")
      end
    end

    class ActionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActionRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionRevision, context: context)
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:revision_change_id], ::String, context: "#{context}[:revision_change_id]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
      end
    end

    class ActionState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionState, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        ActionRevision.validate!(input[:current_revision], context: "#{context}[:current_revision]") unless input[:current_revision].nil?
        ActionExecution.validate!(input[:latest_execution], context: "#{context}[:latest_execution]") unless input[:latest_execution].nil?
        Hearth::Validator.validate!(input[:entity_url], ::String, context: "#{context}[:entity_url]")
        Hearth::Validator.validate!(input[:revision_url], ::String, context: "#{context}[:revision_url]")
      end
    end

    class ActionStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionType, context: context)
        ActionTypeId.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
        ActionTypeSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ActionConfigurationPropertyList.validate!(input[:action_configuration_properties], context: "#{context}[:action_configuration_properties]") unless input[:action_configuration_properties].nil?
        ArtifactDetails.validate!(input[:input_artifact_details], context: "#{context}[:input_artifact_details]") unless input[:input_artifact_details].nil?
        ArtifactDetails.validate!(input[:output_artifact_details], context: "#{context}[:output_artifact_details]") unless input[:output_artifact_details].nil?
      end
    end

    class ActionTypeArtifactDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeArtifactDetails, context: context)
        Hearth::Validator.validate!(input[:minimum_count], ::Integer, context: "#{context}[:minimum_count]")
        Hearth::Validator.validate!(input[:maximum_count], ::Integer, context: "#{context}[:maximum_count]")
      end
    end

    class ActionTypeDeclaration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeDeclaration, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ActionTypeExecutor.validate!(input[:executor], context: "#{context}[:executor]") unless input[:executor].nil?
        ActionTypeIdentifier.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
        ActionTypeArtifactDetails.validate!(input[:input_artifact_details], context: "#{context}[:input_artifact_details]") unless input[:input_artifact_details].nil?
        ActionTypeArtifactDetails.validate!(input[:output_artifact_details], context: "#{context}[:output_artifact_details]") unless input[:output_artifact_details].nil?
        ActionTypePermissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        ActionTypeProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        ActionTypeUrls.validate!(input[:urls], context: "#{context}[:urls]") unless input[:urls].nil?
      end
    end

    class ActionTypeExecutor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeExecutor, context: context)
        ExecutorConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:policy_statements_template], ::String, context: "#{context}[:policy_statements_template]")
        Hearth::Validator.validate!(input[:job_timeout], ::Integer, context: "#{context}[:job_timeout]")
      end
    end

    class ActionTypeId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeId, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ActionTypeIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeIdentifier, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ActionTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionTypeNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActionTypePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypePermissions, context: context)
        AllowedAccounts.validate!(input[:allowed_accounts], context: "#{context}[:allowed_accounts]") unless input[:allowed_accounts].nil?
      end
    end

    class ActionTypeProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionTypeProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionTypeProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:optional], ::TrueClass, ::FalseClass, context: "#{context}[:optional]")
        Hearth::Validator.validate!(input[:key], ::TrueClass, ::FalseClass, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:no_echo], ::TrueClass, ::FalseClass, context: "#{context}[:no_echo]")
        Hearth::Validator.validate!(input[:queryable], ::TrueClass, ::FalseClass, context: "#{context}[:queryable]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ActionTypeSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeSettings, context: context)
        Hearth::Validator.validate!(input[:third_party_configuration_url], ::String, context: "#{context}[:third_party_configuration_url]")
        Hearth::Validator.validate!(input[:entity_url_template], ::String, context: "#{context}[:entity_url_template]")
        Hearth::Validator.validate!(input[:execution_url_template], ::String, context: "#{context}[:execution_url_template]")
        Hearth::Validator.validate!(input[:revision_url_template], ::String, context: "#{context}[:revision_url_template]")
      end
    end

    class ActionTypeUrls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTypeUrls, context: context)
        Hearth::Validator.validate!(input[:configuration_url], ::String, context: "#{context}[:configuration_url]")
        Hearth::Validator.validate!(input[:entity_url_template], ::String, context: "#{context}[:entity_url_template]")
        Hearth::Validator.validate!(input[:execution_url_template], ::String, context: "#{context}[:execution_url_template]")
        Hearth::Validator.validate!(input[:revision_url_template], ::String, context: "#{context}[:revision_url_template]")
      end
    end

    class AllowedAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApprovalAlreadyCompletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalAlreadyCompletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalResult, context: context)
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Artifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Artifact, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
        ArtifactLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
      end
    end

    class ArtifactDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactDetail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        S3Location.validate!(input[:s3location], context: "#{context}[:s3location]") unless input[:s3location].nil?
      end
    end

    class ArtifactDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ArtifactDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArtifactDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactDetails, context: context)
        Hearth::Validator.validate!(input[:minimum_count], ::Integer, context: "#{context}[:minimum_count]")
        Hearth::Validator.validate!(input[:maximum_count], ::Integer, context: "#{context}[:maximum_count]")
      end
    end

    class ArtifactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Artifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArtifactLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactLocation, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        S3ArtifactLocation.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class ArtifactRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactRevision, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:revision_change_identifier], ::String, context: "#{context}[:revision_change_identifier]")
        Hearth::Validator.validate!(input[:revision_summary], ::String, context: "#{context}[:revision_summary]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:revision_url], ::String, context: "#{context}[:revision_url]")
      end
    end

    class ArtifactRevisionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ArtifactRevision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArtifactStore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactStore, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
      end
    end

    class ArtifactStoreMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ArtifactStore.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BlockerDeclaration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockerDeclaration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCustomActionTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomActionTypeInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ActionTypeSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ActionConfigurationPropertyList.validate!(input[:configuration_properties], context: "#{context}[:configuration_properties]") unless input[:configuration_properties].nil?
        ArtifactDetails.validate!(input[:input_artifact_details], context: "#{context}[:input_artifact_details]") unless input[:input_artifact_details].nil?
        ArtifactDetails.validate!(input[:output_artifact_details], context: "#{context}[:output_artifact_details]") unless input[:output_artifact_details].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCustomActionTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomActionTypeOutput, context: context)
        ActionType.validate!(input[:action_type], context: "#{context}[:action_type]") unless input[:action_type].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineInput, context: context)
        PipelineDeclaration.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineOutput, context: context)
        PipelineDeclaration.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CurrentRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CurrentRevision, context: context)
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:change_identifier], ::String, context: "#{context}[:change_identifier]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:revision_summary], ::String, context: "#{context}[:revision_summary]")
      end
    end

    class DeleteCustomActionTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomActionTypeInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteCustomActionTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomActionTypeOutput, context: context)
      end
    end

    class DeletePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeletePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineOutput, context: context)
      end
    end

    class DeleteWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebhookInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebhookOutput, context: context)
      end
    end

    class DeregisterWebhookWithThirdPartyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterWebhookWithThirdPartyInput, context: context)
        Hearth::Validator.validate!(input[:webhook_name], ::String, context: "#{context}[:webhook_name]")
      end
    end

    class DeregisterWebhookWithThirdPartyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterWebhookWithThirdPartyOutput, context: context)
      end
    end

    class DisableStageTransitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableStageTransitionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:transition_type], ::String, context: "#{context}[:transition_type]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class DisableStageTransitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableStageTransitionOutput, context: context)
      end
    end

    class DuplicatedStopRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicatedStopRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableStageTransitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableStageTransitionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:transition_type], ::String, context: "#{context}[:transition_type]")
      end
    end

    class EnableStageTransitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableStageTransitionOutput, context: context)
      end
    end

    class EncryptionKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionKey, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetails, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExecutionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionDetails, context: context)
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:external_execution_id], ::String, context: "#{context}[:external_execution_id]")
        Hearth::Validator.validate!(input[:percent_complete], ::Integer, context: "#{context}[:percent_complete]")
      end
    end

    class ExecutionTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionTrigger, context: context)
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
        Hearth::Validator.validate!(input[:trigger_detail], ::String, context: "#{context}[:trigger_detail]")
      end
    end

    class ExecutorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutorConfiguration, context: context)
        LambdaExecutorConfiguration.validate!(input[:lambda_executor_configuration], context: "#{context}[:lambda_executor_configuration]") unless input[:lambda_executor_configuration].nil?
        JobWorkerExecutorConfiguration.validate!(input[:job_worker_executor_configuration], context: "#{context}[:job_worker_executor_configuration]") unless input[:job_worker_executor_configuration].nil?
      end
    end

    class FailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureDetails, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:external_execution_id], ::String, context: "#{context}[:external_execution_id]")
      end
    end

    class GetActionTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActionTypeInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetActionTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActionTypeOutput, context: context)
        ActionTypeDeclaration.validate!(input[:action_type], context: "#{context}[:action_type]") unless input[:action_type].nil?
      end
    end

    class GetJobDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobDetailsInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobDetailsOutput, context: context)
        JobDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
      end
    end

    class GetPipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class GetPipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineExecutionOutput, context: context)
        PipelineExecution.validate!(input[:pipeline_execution], context: "#{context}[:pipeline_execution]") unless input[:pipeline_execution].nil?
      end
    end

    class GetPipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class GetPipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineOutput, context: context)
        PipelineDeclaration.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        PipelineMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class GetPipelineStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineStateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetPipelineStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineStateOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_version], ::Integer, context: "#{context}[:pipeline_version]")
        StageStateList.validate!(input[:stage_states], context: "#{context}[:stage_states]") unless input[:stage_states].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:updated], ::Time, context: "#{context}[:updated]")
      end
    end

    class GetThirdPartyJobDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThirdPartyJobDetailsInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class GetThirdPartyJobDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThirdPartyJobDetailsOutput, context: context)
        ThirdPartyJobDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
      end
    end

    class InputArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputArtifact, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InputArtifactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputArtifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidActionDeclarationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidActionDeclarationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidBlockerDeclarationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidBlockerDeclarationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClientTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidJobException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidJobException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidJobStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidJobStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNonceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNonceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStageDeclarationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStageDeclarationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStructureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStructureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidWebhookAuthenticationParametersException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidWebhookAuthenticationParametersException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidWebhookFilterPatternException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidWebhookFilterPatternException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        JobData.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:nonce], ::String, context: "#{context}[:nonce]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class JobData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobData, context: context)
        ActionTypeId.validate!(input[:action_type_id], context: "#{context}[:action_type_id]") unless input[:action_type_id].nil?
        ActionConfiguration.validate!(input[:action_configuration], context: "#{context}[:action_configuration]") unless input[:action_configuration].nil?
        PipelineContext.validate!(input[:pipeline_context], context: "#{context}[:pipeline_context]") unless input[:pipeline_context].nil?
        ArtifactList.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        ArtifactList.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        AWSSessionCredentials.validate!(input[:artifact_credentials], context: "#{context}[:artifact_credentials]") unless input[:artifact_credentials].nil?
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
      end
    end

    class JobDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDetails, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        JobData.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class JobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobWorkerExecutorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobWorkerExecutorConfiguration, context: context)
        PollingAccountList.validate!(input[:polling_accounts], context: "#{context}[:polling_accounts]") unless input[:polling_accounts].nil?
        PollingServicePrincipalList.validate!(input[:polling_service_principals], context: "#{context}[:polling_service_principals]") unless input[:polling_service_principals].nil?
      end
    end

    class LambdaExecutorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaExecutorConfiguration, context: context)
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListActionExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        ActionExecutionFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListActionExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionExecutionsOutput, context: context)
        ActionExecutionDetailList.validate!(input[:action_execution_details], context: "#{context}[:action_execution_details]") unless input[:action_execution_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListActionTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionTypesInput, context: context)
        Hearth::Validator.validate!(input[:action_owner_filter], ::String, context: "#{context}[:action_owner_filter]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:region_filter], ::String, context: "#{context}[:region_filter]")
      end
    end

    class ListActionTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionTypesOutput, context: context)
        ActionTypeList.validate!(input[:action_types], context: "#{context}[:action_types]") unless input[:action_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelineExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelineExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineExecutionsOutput, context: context)
        PipelineExecutionSummaryList.validate!(input[:pipeline_execution_summaries], context: "#{context}[:pipeline_execution_summaries]") unless input[:pipeline_execution_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesOutput, context: context)
        PipelineList.validate!(input[:pipelines], context: "#{context}[:pipelines]") unless input[:pipelines].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWebhookItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebhookItem, context: context)
        WebhookDefinition.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:last_triggered], ::Time, context: "#{context}[:last_triggered]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWebhooksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebhooksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWebhooksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebhooksOutput, context: context)
        WebhookList.validate!(input[:webhooks], context: "#{context}[:webhooks]") unless input[:webhooks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotLatestPipelineExecutionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotLatestPipelineExecutionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutputArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputArtifact, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class OutputArtifactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputArtifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputVariablesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class OutputVariablesSizeExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputVariablesSizeExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineContext, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        StageContext.validate!(input[:stage], context: "#{context}[:stage]") unless input[:stage].nil?
        ActionContext.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class PipelineDeclaration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineDeclaration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ArtifactStore.validate!(input[:artifact_store], context: "#{context}[:artifact_store]") unless input[:artifact_store].nil?
        ArtifactStoreMap.validate!(input[:artifact_stores], context: "#{context}[:artifact_stores]") unless input[:artifact_stores].nil?
        PipelineStageDeclarationList.validate!(input[:stages], context: "#{context}[:stages]") unless input[:stages].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class PipelineExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecution, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_version], ::Integer, context: "#{context}[:pipeline_version]")
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_summary], ::String, context: "#{context}[:status_summary]")
        ArtifactRevisionList.validate!(input[:artifact_revisions], context: "#{context}[:artifact_revisions]") unless input[:artifact_revisions].nil?
      end
    end

    class PipelineExecutionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecutionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineExecutionNotStoppableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecutionNotStoppableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        SourceRevisionList.validate!(input[:source_revisions], context: "#{context}[:source_revisions]") unless input[:source_revisions].nil?
        ExecutionTrigger.validate!(input[:trigger], context: "#{context}[:trigger]") unless input[:trigger].nil?
        StopExecutionTrigger.validate!(input[:stop_trigger], context: "#{context}[:stop_trigger]") unless input[:stop_trigger].nil?
      end
    end

    class PipelineExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelineExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelineSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineMetadata, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:updated], ::Time, context: "#{context}[:updated]")
      end
    end

    class PipelineNameInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineNameInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineStageDeclarationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StageDeclaration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:updated], ::Time, context: "#{context}[:updated]")
      end
    end

    class PipelineVersionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineVersionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PollForJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForJobsInput, context: context)
        ActionTypeId.validate!(input[:action_type_id], context: "#{context}[:action_type_id]") unless input[:action_type_id].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
        QueryParamMap.validate!(input[:query_param], context: "#{context}[:query_param]") unless input[:query_param].nil?
      end
    end

    class PollForJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForJobsOutput, context: context)
        JobList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class PollForThirdPartyJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForThirdPartyJobsInput, context: context)
        ActionTypeId.validate!(input[:action_type_id], context: "#{context}[:action_type_id]") unless input[:action_type_id].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class PollForThirdPartyJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForThirdPartyJobsOutput, context: context)
        ThirdPartyJobList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class PollingAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PollingServicePrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutActionRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutActionRevisionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        ActionRevision.validate!(input[:action_revision], context: "#{context}[:action_revision]") unless input[:action_revision].nil?
      end
    end

    class PutActionRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutActionRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:new_revision], ::TrueClass, ::FalseClass, context: "#{context}[:new_revision]")
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class PutApprovalResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutApprovalResultInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        ApprovalResult.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class PutApprovalResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutApprovalResultOutput, context: context)
        Hearth::Validator.validate!(input[:approved_at], ::Time, context: "#{context}[:approved_at]")
      end
    end

    class PutJobFailureResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutJobFailureResultInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
      end
    end

    class PutJobFailureResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutJobFailureResultOutput, context: context)
      end
    end

    class PutJobSuccessResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutJobSuccessResultInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        CurrentRevision.validate!(input[:current_revision], context: "#{context}[:current_revision]") unless input[:current_revision].nil?
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        ExecutionDetails.validate!(input[:execution_details], context: "#{context}[:execution_details]") unless input[:execution_details].nil?
        OutputVariablesMap.validate!(input[:output_variables], context: "#{context}[:output_variables]") unless input[:output_variables].nil?
      end
    end

    class PutJobSuccessResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutJobSuccessResultOutput, context: context)
      end
    end

    class PutThirdPartyJobFailureResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutThirdPartyJobFailureResultInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
      end
    end

    class PutThirdPartyJobFailureResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutThirdPartyJobFailureResultOutput, context: context)
      end
    end

    class PutThirdPartyJobSuccessResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutThirdPartyJobSuccessResultInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        CurrentRevision.validate!(input[:current_revision], context: "#{context}[:current_revision]") unless input[:current_revision].nil?
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        ExecutionDetails.validate!(input[:execution_details], context: "#{context}[:execution_details]") unless input[:execution_details].nil?
      end
    end

    class PutThirdPartyJobSuccessResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutThirdPartyJobSuccessResultOutput, context: context)
      end
    end

    class PutWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutWebhookInput, context: context)
        WebhookDefinition.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutWebhookOutput, context: context)
        ListWebhookItem.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class QueryParamMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RegisterWebhookWithThirdPartyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterWebhookWithThirdPartyInput, context: context)
        Hearth::Validator.validate!(input[:webhook_name], ::String, context: "#{context}[:webhook_name]")
      end
    end

    class RegisterWebhookWithThirdPartyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterWebhookWithThirdPartyOutput, context: context)
      end
    end

    class RequestFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResolvedActionConfigurationMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetryStageExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryStageExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
        Hearth::Validator.validate!(input[:retry_mode], ::String, context: "#{context}[:retry_mode]")
      end
    end

    class RetryStageExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryStageExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class S3ArtifactLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ArtifactLocation, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key], ::String, context: "#{context}[:object_key]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class SourceRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceRevision, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:revision_summary], ::String, context: "#{context}[:revision_summary]")
        Hearth::Validator.validate!(input[:revision_url], ::String, context: "#{context}[:revision_url]")
      end
    end

    class SourceRevisionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceRevision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StageActionDeclarationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionDeclaration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StageBlockerDeclarationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BlockerDeclaration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StageContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageContext, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StageDeclaration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageDeclaration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StageBlockerDeclarationList.validate!(input[:blockers], context: "#{context}[:blockers]") unless input[:blockers].nil?
        StageActionDeclarationList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class StageExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageExecution, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StageNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StageNotRetryableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageNotRetryableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StageState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageState, context: context)
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageExecution.validate!(input[:inbound_execution], context: "#{context}[:inbound_execution]") unless input[:inbound_execution].nil?
        TransitionState.validate!(input[:inbound_transition_state], context: "#{context}[:inbound_transition_state]") unless input[:inbound_transition_state].nil?
        ActionStateList.validate!(input[:action_states], context: "#{context}[:action_states]") unless input[:action_states].nil?
        StageExecution.validate!(input[:latest_execution], context: "#{context}[:latest_execution]") unless input[:latest_execution].nil?
      end
    end

    class StageStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StageState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartPipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class StartPipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class StopExecutionTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExecutionTrigger, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StopPipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
        Hearth::Validator.validate!(input[:abandon], ::TrueClass, ::FalseClass, context: "#{context}[:abandon]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StopPipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_id], ::String, context: "#{context}[:pipeline_execution_id]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThirdPartyJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyJob, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class ThirdPartyJobData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyJobData, context: context)
        ActionTypeId.validate!(input[:action_type_id], context: "#{context}[:action_type_id]") unless input[:action_type_id].nil?
        ActionConfiguration.validate!(input[:action_configuration], context: "#{context}[:action_configuration]") unless input[:action_configuration].nil?
        PipelineContext.validate!(input[:pipeline_context], context: "#{context}[:pipeline_context]") unless input[:pipeline_context].nil?
        ArtifactList.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        ArtifactList.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        AWSSessionCredentials.validate!(input[:artifact_credentials], context: "#{context}[:artifact_credentials]") unless input[:artifact_credentials].nil?
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
      end
    end

    class ThirdPartyJobDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyJobDetails, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ThirdPartyJobData.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:nonce], ::String, context: "#{context}[:nonce]")
      end
    end

    class ThirdPartyJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ThirdPartyJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransitionState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitionState, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:last_changed_by], ::String, context: "#{context}[:last_changed_by]")
        Hearth::Validator.validate!(input[:last_changed_at], ::Time, context: "#{context}[:last_changed_at]")
        Hearth::Validator.validate!(input[:disabled_reason], ::String, context: "#{context}[:disabled_reason]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateActionTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateActionTypeInput, context: context)
        ActionTypeDeclaration.validate!(input[:action_type], context: "#{context}[:action_type]") unless input[:action_type].nil?
      end
    end

    class UpdateActionTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateActionTypeOutput, context: context)
      end
    end

    class UpdatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineInput, context: context)
        PipelineDeclaration.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class UpdatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineOutput, context: context)
        PipelineDeclaration.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WebhookAuthConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebhookAuthConfiguration, context: context)
        Hearth::Validator.validate!(input[:allowed_ip_range], ::String, context: "#{context}[:allowed_ip_range]")
        Hearth::Validator.validate!(input[:secret_token], ::String, context: "#{context}[:secret_token]")
      end
    end

    class WebhookDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebhookDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:target_pipeline], ::String, context: "#{context}[:target_pipeline]")
        Hearth::Validator.validate!(input[:target_action], ::String, context: "#{context}[:target_action]")
        WebhookFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:authentication], ::String, context: "#{context}[:authentication]")
        WebhookAuthConfiguration.validate!(input[:authentication_configuration], context: "#{context}[:authentication_configuration]") unless input[:authentication_configuration].nil?
      end
    end

    class WebhookFilterRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebhookFilterRule, context: context)
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
        Hearth::Validator.validate!(input[:match_equals], ::String, context: "#{context}[:match_equals]")
      end
    end

    class WebhookFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WebhookFilterRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WebhookList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListWebhookItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WebhookNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebhookNotFoundException, context: context)
      end
    end

  end
end
