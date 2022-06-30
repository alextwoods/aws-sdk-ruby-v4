# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::GameSparks
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
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

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.id = params[:id]
        type.created = params[:created]
        type
      end
    end

    module ConnectionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateGameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameInput, context: context)
        type = Types::CreateGameInput.new
        type.game_name = params[:game_name]
        type.description = params[:description]
        type.client_token = params[:client_token]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameOutput, context: context)
        type = Types::CreateGameOutput.new
        type.game = GameDetails.build(params[:game], context: "#{context}[:game]") unless params[:game].nil?
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.game_name = params[:game_name]
        type.description = params[:description]
        type
      end
    end

    module CreateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotOutput, context: context)
        type = Types::CreateSnapshotOutput.new
        type.snapshot = SnapshotDetails.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStageInput, context: context)
        type = Types::CreateStageInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type.role = params[:role]
        type.description = params[:description]
        type.client_token = params[:client_token]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStageOutput, context: context)
        type = Types::CreateStageOutput.new
        type.stage = StageDetails.build(params[:stage], context: "#{context}[:stage]") unless params[:stage].nil?
        type
      end
    end

    module DeleteGameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGameInput, context: context)
        type = Types::DeleteGameInput.new
        type.game_name = params[:game_name]
        type
      end
    end

    module DeleteGameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGameOutput, context: context)
        type = Types::DeleteGameOutput.new
        type
      end
    end

    module DeleteStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStageInput, context: context)
        type = Types::DeleteStageInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module DeleteStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStageOutput, context: context)
        type = Types::DeleteStageOutput.new
        type
      end
    end

    module DeploymentResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentResult, context: context)
        type = Types::DeploymentResult.new
        type.result_code = params[:result_code]
        type.message = params[:message]
        type
      end
    end

    module DisconnectPlayerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectPlayerInput, context: context)
        type = Types::DisconnectPlayerInput.new
        type.player_id = params[:player_id]
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module DisconnectPlayerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectPlayerOutput, context: context)
        type = Types::DisconnectPlayerOutput.new
        type.disconnect_successes = ConnectionIdList.build(params[:disconnect_successes], context: "#{context}[:disconnect_successes]") unless params[:disconnect_successes].nil?
        type.disconnect_failures = ConnectionIdList.build(params[:disconnect_failures], context: "#{context}[:disconnect_failures]") unless params[:disconnect_failures].nil?
        type
      end
    end

    module ExportSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSnapshotInput, context: context)
        type = Types::ExportSnapshotInput.new
        type.game_name = params[:game_name]
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module ExportSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSnapshotOutput, context: context)
        type = Types::ExportSnapshotOutput.new
        type.s3_url = params[:s3_url]
        type
      end
    end

    module ExtensionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtensionDetails, context: context)
        type = Types::ExtensionDetails.new
        type.namespace = params[:namespace]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module ExtensionDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExtensionDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExtensionVersionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtensionVersionDetails, context: context)
        type = Types::ExtensionVersionDetails.new
        type.namespace = params[:namespace]
        type.name = params[:name]
        type.schema = params[:schema]
        type.version = params[:version]
        type
      end
    end

    module ExtensionVersionDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExtensionVersionDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameConfigurationDetails, context: context)
        type = Types::GameConfigurationDetails.new
        type.sections = Sections.build(params[:sections], context: "#{context}[:sections]") unless params[:sections].nil?
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module GameDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameDetails, context: context)
        type = Types::GameDetails.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type.state = params[:state]
        type.enable_termination_protection = params[:enable_termination_protection]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GameSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSummary, context: context)
        type = Types::GameSummary.new
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GameSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GeneratedCodeJobDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneratedCodeJobDetails, context: context)
        type = Types::GeneratedCodeJobDetails.new
        type.s3_url = params[:s3_url]
        type.status = params[:status]
        type.description = params[:description]
        type.expiration_time = params[:expiration_time]
        type.generated_code_job_id = params[:generated_code_job_id]
        type
      end
    end

    module GeneratedCodeJobDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeneratedCodeJobDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Generator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Generator, context: context)
        type = Types::Generator.new
        type.target_platform = params[:target_platform]
        type.language = params[:language]
        type.game_sdk_version = params[:game_sdk_version]
        type
      end
    end

    module GetExtensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExtensionInput, context: context)
        type = Types::GetExtensionInput.new
        type.namespace = params[:namespace]
        type.name = params[:name]
        type
      end
    end

    module GetExtensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExtensionOutput, context: context)
        type = Types::GetExtensionOutput.new
        type.extension = ExtensionDetails.build(params[:extension], context: "#{context}[:extension]") unless params[:extension].nil?
        type
      end
    end

    module GetExtensionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExtensionVersionInput, context: context)
        type = Types::GetExtensionVersionInput.new
        type.namespace = params[:namespace]
        type.name = params[:name]
        type.extension_version = params[:extension_version]
        type
      end
    end

    module GetExtensionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExtensionVersionOutput, context: context)
        type = Types::GetExtensionVersionOutput.new
        type.extension_version = ExtensionVersionDetails.build(params[:extension_version], context: "#{context}[:extension_version]") unless params[:extension_version].nil?
        type
      end
    end

    module GetGameConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGameConfigurationInput, context: context)
        type = Types::GetGameConfigurationInput.new
        type.game_name = params[:game_name]
        type.sections = SectionList.build(params[:sections], context: "#{context}[:sections]") unless params[:sections].nil?
        type
      end
    end

    module GetGameConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGameConfigurationOutput, context: context)
        type = Types::GetGameConfigurationOutput.new
        type.game_configuration = GameConfigurationDetails.build(params[:game_configuration], context: "#{context}[:game_configuration]") unless params[:game_configuration].nil?
        type
      end
    end

    module GetGameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGameInput, context: context)
        type = Types::GetGameInput.new
        type.game_name = params[:game_name]
        type
      end
    end

    module GetGameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGameOutput, context: context)
        type = Types::GetGameOutput.new
        type.game = GameDetails.build(params[:game], context: "#{context}[:game]") unless params[:game].nil?
        type
      end
    end

    module GetGeneratedCodeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeneratedCodeJobInput, context: context)
        type = Types::GetGeneratedCodeJobInput.new
        type.game_name = params[:game_name]
        type.snapshot_id = params[:snapshot_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetGeneratedCodeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeneratedCodeJobOutput, context: context)
        type = Types::GetGeneratedCodeJobOutput.new
        type.generated_code_job = GeneratedCodeJobDetails.build(params[:generated_code_job], context: "#{context}[:generated_code_job]") unless params[:generated_code_job].nil?
        type
      end
    end

    module GetPlayerConnectionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlayerConnectionStatusInput, context: context)
        type = Types::GetPlayerConnectionStatusInput.new
        type.player_id = params[:player_id]
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module GetPlayerConnectionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlayerConnectionStatusOutput, context: context)
        type = Types::GetPlayerConnectionStatusOutput.new
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type
      end
    end

    module GetSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotInput, context: context)
        type = Types::GetSnapshotInput.new
        type.game_name = params[:game_name]
        type.snapshot_id = params[:snapshot_id]
        type.sections = SectionList.build(params[:sections], context: "#{context}[:sections]") unless params[:sections].nil?
        type
      end
    end

    module GetSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotOutput, context: context)
        type = Types::GetSnapshotOutput.new
        type.snapshot = SnapshotDetails.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module GetStageDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageDeploymentInput, context: context)
        type = Types::GetStageDeploymentInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module GetStageDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageDeploymentOutput, context: context)
        type = Types::GetStageDeploymentOutput.new
        type.stage_deployment = StageDeploymentDetails.build(params[:stage_deployment], context: "#{context}[:stage_deployment]") unless params[:stage_deployment].nil?
        type
      end
    end

    module GetStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageInput, context: context)
        type = Types::GetStageInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module GetStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageOutput, context: context)
        type = Types::GetStageOutput.new
        type.stage = StageDetails.build(params[:stage], context: "#{context}[:stage]") unless params[:stage].nil?
        type
      end
    end

    module ImportGameConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportGameConfigurationInput, context: context)
        type = Types::ImportGameConfigurationInput.new
        type.game_name = params[:game_name]
        type.import_source = ImportGameConfigurationSource.build(params[:import_source], context: "#{context}[:import_source]") unless params[:import_source].nil?
        type
      end
    end

    module ImportGameConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportGameConfigurationOutput, context: context)
        type = Types::ImportGameConfigurationOutput.new
        type.game_configuration = GameConfigurationDetails.build(params[:game_configuration], context: "#{context}[:game_configuration]") unless params[:game_configuration].nil?
        type
      end
    end

    module ImportGameConfigurationSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportGameConfigurationSource, context: context)
        type = Types::ImportGameConfigurationSource.new
        type.file = params[:file]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListExtensionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExtensionVersionsInput, context: context)
        type = Types::ListExtensionVersionsInput.new
        type.namespace = params[:namespace]
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListExtensionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExtensionVersionsOutput, context: context)
        type = Types::ListExtensionVersionsOutput.new
        type.extension_versions = ExtensionVersionDetailsList.build(params[:extension_versions], context: "#{context}[:extension_versions]") unless params[:extension_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExtensionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExtensionsInput, context: context)
        type = Types::ListExtensionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExtensionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExtensionsOutput, context: context)
        type = Types::ListExtensionsOutput.new
        type.extensions = ExtensionDetailsList.build(params[:extensions], context: "#{context}[:extensions]") unless params[:extensions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGamesInput, context: context)
        type = Types::ListGamesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGamesOutput, context: context)
        type = Types::ListGamesOutput.new
        type.games = GameSummaryList.build(params[:games], context: "#{context}[:games]") unless params[:games].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGeneratedCodeJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeneratedCodeJobsInput, context: context)
        type = Types::ListGeneratedCodeJobsInput.new
        type.game_name = params[:game_name]
        type.snapshot_id = params[:snapshot_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGeneratedCodeJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeneratedCodeJobsOutput, context: context)
        type = Types::ListGeneratedCodeJobsOutput.new
        type.generated_code_jobs = GeneratedCodeJobDetailsList.build(params[:generated_code_jobs], context: "#{context}[:generated_code_jobs]") unless params[:generated_code_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSnapshotsInput, context: context)
        type = Types::ListSnapshotsInput.new
        type.game_name = params[:game_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSnapshotsOutput, context: context)
        type = Types::ListSnapshotsOutput.new
        type.snapshots = SnapshotSummaryList.build(params[:snapshots], context: "#{context}[:snapshots]") unless params[:snapshots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStageDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStageDeploymentsInput, context: context)
        type = Types::ListStageDeploymentsInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListStageDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStageDeploymentsOutput, context: context)
        type = Types::ListStageDeploymentsOutput.new
        type.stage_deployments = StageDeploymentList.build(params[:stage_deployments], context: "#{context}[:stage_deployments]") unless params[:stage_deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStagesInput, context: context)
        type = Types::ListStagesInput.new
        type.game_name = params[:game_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStagesOutput, context: context)
        type = Types::ListStagesOutput.new
        type.stages = StageSummaryList.build(params[:stages], context: "#{context}[:stages]") unless params[:stages].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
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

    module Section
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Section, context: context)
        type = Types::Section.new
        type.name = params[:name]
        type.size = params[:size]
        type.attributes = params[:attributes]
        type
      end
    end

    module SectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SectionModification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SectionModification, context: context)
        type = Types::SectionModification.new
        type.section = params[:section]
        type.path = params[:path]
        type.operation = params[:operation]
        type.value = params[:value]
        type
      end
    end

    module SectionModificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SectionModification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Sections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Section.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotDetails, context: context)
        type = Types::SnapshotDetails.new
        type.id = params[:id]
        type.description = params[:description]
        type.sections = Sections.build(params[:sections], context: "#{context}[:sections]") unless params[:sections].nil?
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module SnapshotSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotSummary, context: context)
        type = Types::SnapshotSummary.new
        type.id = params[:id]
        type.description = params[:description]
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module SnapshotSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StageDeploymentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageDeploymentDetails, context: context)
        type = Types::StageDeploymentDetails.new
        type.deployment_id = params[:deployment_id]
        type.snapshot_id = params[:snapshot_id]
        type.deployment_action = params[:deployment_action]
        type.deployment_state = params[:deployment_state]
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type.deployment_result = DeploymentResult.build(params[:deployment_result], context: "#{context}[:deployment_result]") unless params[:deployment_result].nil?
        type
      end
    end

    module StageDeploymentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StageDeploymentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StageDeploymentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageDeploymentSummary, context: context)
        type = Types::StageDeploymentSummary.new
        type.deployment_id = params[:deployment_id]
        type.snapshot_id = params[:snapshot_id]
        type.deployment_action = params[:deployment_action]
        type.deployment_state = params[:deployment_state]
        type.last_updated = params[:last_updated]
        type.deployment_result = DeploymentResult.build(params[:deployment_result], context: "#{context}[:deployment_result]") unless params[:deployment_result].nil?
        type
      end
    end

    module StageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageDetails, context: context)
        type = Types::StageDetails.new
        type.name = params[:name]
        type.game_key = params[:game_key]
        type.arn = params[:arn]
        type.role = params[:role]
        type.description = params[:description]
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.log_group = params[:log_group]
        type
      end
    end

    module StageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageSummary, context: context)
        type = Types::StageSummary.new
        type.name = params[:name]
        type.game_key = params[:game_key]
        type.description = params[:description]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StageSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StageSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartGeneratedCodeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartGeneratedCodeJobInput, context: context)
        type = Types::StartGeneratedCodeJobInput.new
        type.game_name = params[:game_name]
        type.snapshot_id = params[:snapshot_id]
        type.generator = Generator.build(params[:generator], context: "#{context}[:generator]") unless params[:generator].nil?
        type
      end
    end

    module StartGeneratedCodeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartGeneratedCodeJobOutput, context: context)
        type = Types::StartGeneratedCodeJobOutput.new
        type.generated_code_job_id = params[:generated_code_job_id]
        type
      end
    end

    module StartStageDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStageDeploymentInput, context: context)
        type = Types::StartStageDeploymentInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type.snapshot_id = params[:snapshot_id]
        type.client_token = params[:client_token]
        type
      end
    end

    module StartStageDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStageDeploymentOutput, context: context)
        type = Types::StartStageDeploymentOutput.new
        type.stage_deployment = StageDeploymentDetails.build(params[:stage_deployment], context: "#{context}[:stage_deployment]") unless params[:stage_deployment].nil?
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
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

    module UpdateGameConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameConfigurationInput, context: context)
        type = Types::UpdateGameConfigurationInput.new
        type.game_name = params[:game_name]
        type.modifications = SectionModificationList.build(params[:modifications], context: "#{context}[:modifications]") unless params[:modifications].nil?
        type
      end
    end

    module UpdateGameConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameConfigurationOutput, context: context)
        type = Types::UpdateGameConfigurationOutput.new
        type.game_configuration = GameConfigurationDetails.build(params[:game_configuration], context: "#{context}[:game_configuration]") unless params[:game_configuration].nil?
        type
      end
    end

    module UpdateGameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameInput, context: context)
        type = Types::UpdateGameInput.new
        type.game_name = params[:game_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateGameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameOutput, context: context)
        type = Types::UpdateGameOutput.new
        type.game = GameDetails.build(params[:game], context: "#{context}[:game]") unless params[:game].nil?
        type
      end
    end

    module UpdateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSnapshotInput, context: context)
        type = Types::UpdateSnapshotInput.new
        type.game_name = params[:game_name]
        type.snapshot_id = params[:snapshot_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSnapshotOutput, context: context)
        type = Types::UpdateSnapshotOutput.new
        type.snapshot = SnapshotDetails.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module UpdateStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStageInput, context: context)
        type = Types::UpdateStageInput.new
        type.game_name = params[:game_name]
        type.stage_name = params[:stage_name]
        type.role = params[:role]
        type.description = params[:description]
        type
      end
    end

    module UpdateStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStageOutput, context: context)
        type = Types::UpdateStageOutput.new
        type.stage = StageDetails.build(params[:stage], context: "#{context}[:stage]") unless params[:stage].nil?
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

  end
end
