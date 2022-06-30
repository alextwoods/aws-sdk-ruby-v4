# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameSparks
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
      end
    end

    class ConnectionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateGameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameOutput, context: context)
        Validators::GameDetails.validate!(input[:game], context: "#{context}[:game]") unless input[:game].nil?
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotOutput, context: context)
        Validators::SnapshotDetails.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStageInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStageOutput, context: context)
        Validators::StageDetails.validate!(input[:stage], context: "#{context}[:stage]") unless input[:stage].nil?
      end
    end

    class DeleteGameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGameInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
      end
    end

    class DeleteGameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGameOutput, context: context)
      end
    end

    class DeleteStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStageInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class DeleteStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStageOutput, context: context)
      end
    end

    class DeploymentResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentResult, context: context)
        Hearth::Validator.validate!(input[:result_code], ::String, context: "#{context}[:result_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisconnectPlayerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectPlayerInput, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class DisconnectPlayerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectPlayerOutput, context: context)
        Validators::ConnectionIdList.validate!(input[:disconnect_successes], context: "#{context}[:disconnect_successes]") unless input[:disconnect_successes].nil?
        Validators::ConnectionIdList.validate!(input[:disconnect_failures], context: "#{context}[:disconnect_failures]") unless input[:disconnect_failures].nil?
      end
    end

    class Document
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, ::String, ::Array, ::TrueClass, ::FalseClass, ::Numeric, context: context)
        case input
        when ::Hash
          input.each do |k,v|
            validate!(v, context: "#{context}[:#{k}]")
          end
        when ::Array
          input.each_with_index do |v, i|
            validate!(v, context: "#{context}[#{i}]")
          end
        end
      end
    end

    class ExportSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class ExportSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:s3_url], ::String, context: "#{context}[:s3_url]")
      end
    end

    class ExtensionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtensionDetails, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ExtensionDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExtensionDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExtensionVersionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtensionVersionDetails, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ExtensionVersionDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExtensionVersionDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameConfigurationDetails, context: context)
        Validators::Sections.validate!(input[:sections], context: "#{context}[:sections]") unless input[:sections].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class GameDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enable_termination_protection], ::TrueClass, ::FalseClass, context: "#{context}[:enable_termination_protection]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GameSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GameSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GameSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GeneratedCodeJobDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneratedCodeJobDetails, context: context)
        Hearth::Validator.validate!(input[:s3_url], ::String, context: "#{context}[:s3_url]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:generated_code_job_id], ::String, context: "#{context}[:generated_code_job_id]")
      end
    end

    class GeneratedCodeJobDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GeneratedCodeJobDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Generator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Generator, context: context)
        Hearth::Validator.validate!(input[:target_platform], ::String, context: "#{context}[:target_platform]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:game_sdk_version], ::String, context: "#{context}[:game_sdk_version]")
      end
    end

    class GetExtensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExtensionInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetExtensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExtensionOutput, context: context)
        Validators::ExtensionDetails.validate!(input[:extension], context: "#{context}[:extension]") unless input[:extension].nil?
      end
    end

    class GetExtensionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExtensionVersionInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:extension_version], ::String, context: "#{context}[:extension_version]")
      end
    end

    class GetExtensionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExtensionVersionOutput, context: context)
        Validators::ExtensionVersionDetails.validate!(input[:extension_version], context: "#{context}[:extension_version]") unless input[:extension_version].nil?
      end
    end

    class GetGameConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGameConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Validators::SectionList.validate!(input[:sections], context: "#{context}[:sections]") unless input[:sections].nil?
      end
    end

    class GetGameConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGameConfigurationOutput, context: context)
        Validators::GameConfigurationDetails.validate!(input[:game_configuration], context: "#{context}[:game_configuration]") unless input[:game_configuration].nil?
      end
    end

    class GetGameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGameInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
      end
    end

    class GetGameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGameOutput, context: context)
        Validators::GameDetails.validate!(input[:game], context: "#{context}[:game]") unless input[:game].nil?
      end
    end

    class GetGeneratedCodeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeneratedCodeJobInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetGeneratedCodeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeneratedCodeJobOutput, context: context)
        Validators::GeneratedCodeJobDetails.validate!(input[:generated_code_job], context: "#{context}[:generated_code_job]") unless input[:generated_code_job].nil?
      end
    end

    class GetPlayerConnectionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlayerConnectionStatusInput, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class GetPlayerConnectionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlayerConnectionStatusOutput, context: context)
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
      end
    end

    class GetSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Validators::SectionList.validate!(input[:sections], context: "#{context}[:sections]") unless input[:sections].nil?
      end
    end

    class GetSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotOutput, context: context)
        Validators::SnapshotDetails.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class GetStageDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class GetStageDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageDeploymentOutput, context: context)
        Validators::StageDeploymentDetails.validate!(input[:stage_deployment], context: "#{context}[:stage_deployment]") unless input[:stage_deployment].nil?
      end
    end

    class GetStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class GetStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageOutput, context: context)
        Validators::StageDetails.validate!(input[:stage], context: "#{context}[:stage]") unless input[:stage].nil?
      end
    end

    class ImportGameConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportGameConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Validators::ImportGameConfigurationSource.validate!(input[:import_source], context: "#{context}[:import_source]") unless input[:import_source].nil?
      end
    end

    class ImportGameConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportGameConfigurationOutput, context: context)
        Validators::GameConfigurationDetails.validate!(input[:game_configuration], context: "#{context}[:game_configuration]") unless input[:game_configuration].nil?
      end
    end

    class ImportGameConfigurationSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportGameConfigurationSource, context: context)
        Hearth::Validator.validate!(input[:file], ::String, context: "#{context}[:file]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListExtensionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExtensionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListExtensionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExtensionVersionsOutput, context: context)
        Validators::ExtensionVersionDetailsList.validate!(input[:extension_versions], context: "#{context}[:extension_versions]") unless input[:extension_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExtensionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExtensionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExtensionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExtensionsOutput, context: context)
        Validators::ExtensionDetailsList.validate!(input[:extensions], context: "#{context}[:extensions]") unless input[:extensions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGamesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGamesOutput, context: context)
        Validators::GameSummaryList.validate!(input[:games], context: "#{context}[:games]") unless input[:games].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGeneratedCodeJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeneratedCodeJobsInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGeneratedCodeJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeneratedCodeJobsOutput, context: context)
        Validators::GeneratedCodeJobDetailsList.validate!(input[:generated_code_jobs], context: "#{context}[:generated_code_jobs]") unless input[:generated_code_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSnapshotsOutput, context: context)
        Validators::SnapshotSummaryList.validate!(input[:snapshots], context: "#{context}[:snapshots]") unless input[:snapshots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStageDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStageDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListStageDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStageDeploymentsOutput, context: context)
        Validators::StageDeploymentList.validate!(input[:stage_deployments], context: "#{context}[:stage_deployments]") unless input[:stage_deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStagesInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStagesOutput, context: context)
        Validators::StageSummaryList.validate!(input[:stages], context: "#{context}[:stages]") unless input[:stages].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Section
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Section, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Validators::Document.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SectionModification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SectionModification, context: context)
        Hearth::Validator.validate!(input[:section], ::String, context: "#{context}[:section]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Validators::Document.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class SectionModificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SectionModification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Sections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::Section.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotDetails, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Sections.validate!(input[:sections], context: "#{context}[:sections]") unless input[:sections].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class SnapshotSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class SnapshotSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StageDeploymentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageDeploymentDetails, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:deployment_action], ::String, context: "#{context}[:deployment_action]")
        Hearth::Validator.validate!(input[:deployment_state], ::String, context: "#{context}[:deployment_state]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Validators::DeploymentResult.validate!(input[:deployment_result], context: "#{context}[:deployment_result]") unless input[:deployment_result].nil?
      end
    end

    class StageDeploymentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StageDeploymentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StageDeploymentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageDeploymentSummary, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:deployment_action], ::String, context: "#{context}[:deployment_action]")
        Hearth::Validator.validate!(input[:deployment_state], ::String, context: "#{context}[:deployment_state]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Validators::DeploymentResult.validate!(input[:deployment_result], context: "#{context}[:deployment_result]") unless input[:deployment_result].nil?
      end
    end

    class StageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:game_key], ::String, context: "#{context}[:game_key]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class StageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:game_key], ::String, context: "#{context}[:game_key]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StageSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StageSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartGeneratedCodeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartGeneratedCodeJobInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Validators::Generator.validate!(input[:generator], context: "#{context}[:generator]") unless input[:generator].nil?
      end
    end

    class StartGeneratedCodeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartGeneratedCodeJobOutput, context: context)
        Hearth::Validator.validate!(input[:generated_code_job_id], ::String, context: "#{context}[:generated_code_job_id]")
      end
    end

    class StartStageDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStageDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartStageDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStageDeploymentOutput, context: context)
        Validators::StageDeploymentDetails.validate!(input[:stage_deployment], context: "#{context}[:stage_deployment]") unless input[:stage_deployment].nil?
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateGameConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Validators::SectionModificationList.validate!(input[:modifications], context: "#{context}[:modifications]") unless input[:modifications].nil?
      end
    end

    class UpdateGameConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameConfigurationOutput, context: context)
        Validators::GameConfigurationDetails.validate!(input[:game_configuration], context: "#{context}[:game_configuration]") unless input[:game_configuration].nil?
      end
    end

    class UpdateGameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateGameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameOutput, context: context)
        Validators::GameDetails.validate!(input[:game], context: "#{context}[:game]") unless input[:game].nil?
      end
    end

    class UpdateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSnapshotOutput, context: context)
        Validators::SnapshotDetails.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class UpdateStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStageInput, context: context)
        Hearth::Validator.validate!(input[:game_name], ::String, context: "#{context}[:game_name]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStageOutput, context: context)
        Validators::StageDetails.validate!(input[:stage], context: "#{context}[:stage]") unless input[:stage].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
